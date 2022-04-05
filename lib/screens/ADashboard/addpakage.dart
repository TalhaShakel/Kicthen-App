import 'package:flutter/material.dart';

// import 'package:dropdown_formfield/dropdown_formfield.dart';

class APakage extends StatefulWidget {
  const APakage({Key? key}) : super(key: key);

  @override
  State<APakage> createState() => _APakageState();
}

class _APakageState extends State<APakage> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/peng.png',
              height: 80,
              width: 80,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.purple.shade700,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      // bottomNavigationBar: Mynav(),
      body: Container(
        width: widthScreen,
        height: heightScreen,
        // color: Colors.pink,
        child: Column(children: [
          SizedBox(
            height: heightScreen * 0.22,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: widthScreen,
              height: heightScreen * 0.35,
              // color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Card(
                  elevation: 10,
                  color: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "ADD PAKAGE",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ///////spiner
                      ///
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 70),
                      //   child: Container(
                      //     child: DropdownButton(
                      //       hint: Text("Select Service"),
                      //       isExpanded: true,
                      //       iconEnabledColor: Colors.blue.shade700,
                      //       items: data.map((item) {
                      //         return DropdownMenuItem(
                      //           child: Row(
                      //             children: [
                      //               Icon(
                      //                 Icons.settings,
                      //                 color: Colors.blue.shade700,
                      //               ),
                      //               Padding(
                      //                 padding: const EdgeInsets.only(left: 18.0),
                      //                 child: Text(
                      //                   item['name'],
                      //                   style: TextStyle(color: Colors.blue),
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //           value: item['Id'].toString(),
                      //         );
                      //       }).toList(),
                      //       onChanged: (newVal) {
                      //         setState(() {
                      //           _mySelection = newVal;
                      //           print(_mySelection);
                      //         });
                      //       },
                      //       value: _mySelection,
                      //     ),
                      //   ),
                      // ),
                      ////////////////////////////////////////////////////////////
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 5, right: 15),
                        child: Container(
                          width: widthScreen,
                          height: heightScreen * 0.08,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 5, top: 5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.purple.shade800),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.purple.shade800,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.purple.shade800,
                                ),
                                filled: true,
                                fillColor: Colors.red[50],
                                labelText: "Enter your Category",
                                labelStyle:
                                    TextStyle(color: Colors.purple.shade800),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 5, right: 15),
                        child: Container(
                          width: widthScreen,
                          height: heightScreen * 0.08,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 5, top: 5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.purple.shade800),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.purple.shade800,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.purple.shade800,
                                ),
                                filled: true,
                                fillColor: Colors.red[50],
                                labelText: "Enter your kch b",
                                labelStyle:
                                    TextStyle(color: Colors.purple.shade800),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Center(
                        child: Container(
                          width: widthScreen * 0.25,
                          height: heightScreen * 0.06,
                          // color: Colors.pink,
                          child: Row(
                            children: [
                              ElevatedButton(
                                  child: Text("Button".toUpperCase(),
                                      style: TextStyle(fontSize: 16)),
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.purple.shade700),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(
                                            color: Colors.purple.shade700),
                                      ),
                                    ),
                                  ),
                                  onPressed: () => null),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
