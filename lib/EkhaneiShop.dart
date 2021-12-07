import 'package:flutter/material.dart';

class EkhaneiShop extends StatefulWidget {
  const EkhaneiShop({Key? key}) : super(key: key);

  @override
  State<EkhaneiShop> createState() => _EkhaneiShopState();
}

class _EkhaneiShopState extends State<EkhaneiShop> {
  final List<String> _items = [
    'assest/714nKHc9OdL.png',
    'assest/714nKHc9OdL.png',
    'assest/714nKHc9OdL.png',
    'assest/714nKHc9OdL.png',
    'assest/714nKHc9OdL.png',
    'assest/714nKHc9OdL.png',
    'assest/714nKHc9OdL.png',
    'assest/714nKHc9OdL.png',
    'assest/714nKHc9OdL.png',
    'assest/714nKHc9OdL.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Click"),
        centerTitle: true,
        leading: Icon(Icons.home),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Colors.redAccent,
                      Colors.lightBlueAccent,
                    ]),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage("assest/714nKHc9OdL.png"),
                      //fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Ekhoni Shop",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.cyan),
                      ),
                      SizedBox(
                        height: 50,
                        width: 200,
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            "Click Here",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Expanded(
                          child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        children: _items
                            .map((item) => Card(
                                  color: Colors.tealAccent,
                                  elevation: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(image: AssetImage(item) ,
                                        fit: BoxFit.cover,),

                                    ),
                                    child: Transform.translate(offset: Offset(40, -70),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 100,vertical: 100),
                                      child: Icon(Icons.eleven_mp),
                                    ),
                                    ),
                                  ),
                                ))
                            .toList(),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
