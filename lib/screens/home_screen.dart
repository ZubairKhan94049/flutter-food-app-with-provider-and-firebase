import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffcbcbcb),
        drawer: const Drawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
            'Mota panda',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: const Color(0xffd6b738),
          actions: const [
            CircleAvatar(
              backgroundColor: Color(0xffd4d181),
              radius: 14,
              child: Icon(
                Icons.search,
                size: 17,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Color(0xffd4d181),
              radius: 14,
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://as2.ftcdn.net/v2/jpg/02/61/88/57/1000_F_261885779_gpJbcld5oNVHATJxAcRJp9m3JzNdRAgy.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffd1ad17),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50),
                                      bottomLeft: Radius.circular(30),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Panda',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        shadows: [
                                          BoxShadow(
                                            color: Colors.green,
                                            blurRadius: 10,
                                            offset: Offset(3, 3),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '30% off',
                                      style: TextStyle(
                                        color: Colors.green[100],
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      'On all vigitables products',
                                      style: TextStyle(
                                        // color: Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Herbs seasonings'),
                  Text(
                    'View all',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 250,
                    width: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xffd9dad9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.network(
                            'https://pngimg.com/uploads/spinach/spinach_PNG10.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Fresh Basil',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const Text(
                                '50\$/50 Gram',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  '50 Gram',
                                ),
                                // style: ButtonStyle(
                                //   side: MaterialStateProperty(
                                //     BorderSide
                                //   )
                                // ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
