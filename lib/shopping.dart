import 'package:flutter/material.dart';
import 'package:paginated_search_bar/paginated_search_bar.dart';
import 'package:endless/endless.dart';

class ExampleItem {
  final String title;

  ExampleItem({
    required this.title,
  });
}

class ExampleItemPager {
  int pageIndex = 0;
  final int pageSize;

  ExampleItemPager({
    this.pageSize = 5,
  });

  List<ExampleItem> nextBatch() {
    List<ExampleItem> batch = [];

    for (int i = 0; i < pageSize; i++) {
      batch.add(ExampleItem(title: 'Item ${pageIndex * pageSize + i}'));
    }

    pageIndex += 1;

    return batch;
  }
}

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  ExampleItemPager pager = ExampleItemPager();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Petshop",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                    IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart_outlined),)
                  ],
                ),
            ),
            Container(
              width: size.width*0.95,
              child:PaginatedSearchBar<ExampleItem>(
                maxHeight: 400,
                hintText: 'Search',
                emptyBuilder: (context) {
                  return const Text("I'm an empty state!");
                },
                // placeholderBuilder: (context) {
                //   return const Text("I'm a placeholder state!");
                // },
                paginationDelegate: EndlessPaginationDelegate(
                  pageSize: 4,
                  maxPages: 2,
                ),
                onSearch: ({
                  required pageIndex,
                  required pageSize,
                  required searchQuery,
                }) async {
                  return Future.delayed(const Duration(milliseconds: 100), () {
                    if (searchQuery == "empty") {
                      return [];
                    }

                    if (pageIndex == 0) {
                      pager = ExampleItemPager();
                    }

                    return pager.nextBatch();
                  });
                },
                itemBuilder: (
                    context, {
                      required item,
                      required index,
                    }) {
                  return Text(item.title);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: (){}, child:Text("Food"), style: TextButton.styleFrom(foregroundColor: Colors.black),),
                TextButton(onPressed: (){}, child:Text("Clothes") ),
                TextButton(onPressed: (){}, child:Text("Toys") ),
                TextButton(onPressed: (){}, child:Text("Medicine") ),
                TextButton(onPressed: (){}, child:Text("Others") )
              ],
            ),

            //Items List
            Container(
              height: size.height*0.35,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),

                ],
              ),
            ),

            //Other Product Heading
            Container(
              alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(6),
                child: Text("Other Products", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
            ),

            //Other Product Image List
            Container(
                // color: Colors.red,
                height: size.height*0.18,
                width:size.width*1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Product(),
                    Product(),
                    Product(),
                    Product(),
                    Product(),
                    Product()
                  ],
                ),
            ),
            Container(
              width: size.width*1,
              height: size.height*0.09,
              margin: EdgeInsets.fromLTRB(4, 10, 4, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ad", style: TextStyle(fontSize: 20)),
                  ElevatedButton.icon(onPressed: (){}, icon:Icon(Icons.info_outline_rounded), label: Text("KnowMore"))
                ],
              ),
              // child: Text("Ad", style: TextStyle(fontSize: 20)),
              decoration: BoxDecoration(
                // color: Colors.grey,
                image: DecorationImage(image: AssetImage('assets/images/adImage.jpeg'), fit: BoxFit.fill)
              ),
            ),
            Container(
              height: size.height*0.05,
              color: Colors.black,
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.sort_outlined,size: 30,color: Colors.white,), label: Text("Sort",style: TextStyle(fontSize: 20,color: Colors.white),)),
                    OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.tune,size: 30,color: Colors.white), label: Text("Filter",style: TextStyle(fontSize: 20,color: Colors.white))),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.47,
      margin: EdgeInsets.symmetric(vertical: 4.0,horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          image:DecorationImage(image: NetworkImage("https://picsum.photos/300"),fit: BoxFit.fill)
      ),
    );
  }
}

class ItemCard extends StatefulWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.49,
      //color: Colors.red,
      margin: EdgeInsets.all(5),
      child: Stack(
        children: [
          Positioned(
              child: Container(
                margin: EdgeInsets.fromLTRB(2, 0, 10,0),
                height: size.height*0.29,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(image: NetworkImage("https://picsum.photos/200"), fit: BoxFit.fill,),
                ),
              )
          ),
          Positioned(child: Text("ItemName",style:TextStyle(fontSize:17)), bottom: 25, left: 6),
          Positioned(child: Text("ItemPrice",style:TextStyle(fontSize:17)), bottom: 3, left: 6),
          Positioned(child: IconButton(onPressed: (){}, icon: Icon(Icons.add_circle,size: 30,)), right: 10, bottom: 3,)
        ],
      ),
    );
  }
}