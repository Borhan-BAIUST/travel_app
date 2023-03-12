import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakistan_tour/const.dart';
import 'package:pakistan_tour/view/Home_Screen.dart';

class VistiScreen extends StatefulWidget {
  const VistiScreen({super.key});

  @override
  State<VistiScreen> createState() => _VistiScreenState();
}

class _VistiScreenState extends State<VistiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: 350,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('images/dhaka.png'),
                      fit: BoxFit.cover,
                    )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.offAll(HomeScreen());
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 4,
                                          offset: Offset(
                                            4,
                                            8,
                                          ), // Shadow position
                                        ),
                                      ]),
                                  child: const Icon(
                                      Icons.arrow_back_ios_new_outlined),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 4,
                                        offset: Offset(
                                          4,
                                          8,
                                        ), // Shadow position
                                      ),
                                    ]),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 330),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffF4F5F9),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 17, right: 17, top: 29),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Welcome back !",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                    Text('4.5')
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: const [
                                Flexible(
                                  child: Text(
                                    "Dhaka (formerly known as Dacca) (Bengali: ঢাকা) is the capital and largest city of Bangladesh. It is the largest city by population in the historical region of Bengal and a major city in South Asia. It is a hub for trade and culture, with a long history as a Bengali capital. It has been called the City of Mosques and the Venice of the East, due to its Islamic architecture and a riverfront facing the Buriganga (Old Ganges)",
                                    style: TextStyle(
                                      color: Color(0xff868889),
                                      fontSize: 18,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 150.0,
                              child: ListView.builder(
                                physics: const ClampingScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: ImagesList.length,
                                itemBuilder: (BuildContext context,
                                        int index) =>
                                    Container(
                                        padding: const EdgeInsets.all(10),
                                        margin: const EdgeInsets.all(10),
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image:
                                                  AssetImage(ImagesList[index]),
                                              fit: BoxFit.cover,
                                            )),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: const [
                                                Icon(
                                                  Icons.map,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Row(
                                              children: [
                                                Text(
                                                  CityList[index],
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )
                                              ],
                                            )
                                          ],
                                        )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 20, right: 20, bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 4,
                                            offset: Offset(
                                              4,
                                              8,
                                            ), // Shadow position
                                          ),
                                        ]),
                                    child: const Icon(Icons.map),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.all(10),
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.redAccent,
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 4,
                                              offset: Offset(
                                                4,
                                                8,
                                              ), // Shadow position
                                            ),
                                          ]),
                                      child: const Center(
                                          child: Text(
                                        "Book Now",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ))),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
