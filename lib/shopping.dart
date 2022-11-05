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
            Flexible(
              child: Container(
                margin: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Petshop",style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
                      IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart_outlined),)
                    ],
                  ),
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
              height: size.height*0.32,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                children: [
                  cardd(size),
                  cardd(size),
                  cardd(size),
                  cardd(size),
                  cardd(size),
                  cardd(size),
                ],
              ),
            ),

            //Other Product Heading
            Container(
              alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(5),
                child: Text("Other Products", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
            ),

            //Other Product Image List
            Container(
                // color: Colors.red,
                height: size.height*0.21,
                width:size.width*1,
                padding: EdgeInsets.all(3),
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
            // Container(
            //   width: size.width*1,
            //   height: size.height*0.09,
            //   margin: EdgeInsets.fromLTRB(4, 10, 4, 10),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text("Ad", style: TextStyle(fontSize: 20)),
            //       ElevatedButton.icon(onPressed: (){}, icon:Icon(Icons.info_outline_rounded), label: Text("KnowMore"))
            //     ],
            //   ),
            //   // child: Text("Ad", style: TextStyle(fontSize: 20)),
            //   decoration: BoxDecoration(
            //     // color: Colors.grey,
            //     image: DecorationImage(image: AssetImage('assets/images/adImage.jpeg'), fit: BoxFit.fill)
            //   ),
            // ),
            Container(
              height: size.height*0.06,
              color: Colors.black,
              margin: EdgeInsets.only(top:15),
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

  Widget cardd (Size size)
  {
    return Container(
      height: size.height*0.20,
      width: size.width*0.43,
      // color: Colors.red,
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Column(
        children: [
          Container(
            height: size.height*0.25,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://picsum.photos/600",),fit: BoxFit.fill
              ),
              // border: Border.all(style: BorderStyle.solid,width: 2),
                borderRadius: BorderRadius.circular(20)
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fresh Kises"),
                  Text("Rs 38.39")
                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.add_circle))
            ],
          )
        ],
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



