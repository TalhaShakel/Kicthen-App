import 'package:flutter/material.dart';

class ADashboard extends StatefulWidget {
  const ADashboard({Key? key}) : super(key: key);

  @override
  State<ADashboard> createState() => _ADashboardState();
}

///////////////////////menu
class _ADashboardState extends State<ADashboard> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     IconButton(
      //       icon: Image.asset(
      //         'assets/peng.png',
      //         height: 80,
      //         width: 80,
      //       ),
      //       onPressed: () {},
      //     ),
      //   ],
      //   backgroundColor: Colors.purple.shade700,
      //   iconTheme: IconThemeData(
      //     color: Colors.white,
      //   ),
      // ),
      // bottomNavigationBar: MyNav(),
      body: Container(
        width: widthScreen,
        height: heightScreen,
        // color: Colors.pink,
        child: Column(
          children: [
            SizedBox(
              height: heightScreen * 0.27,
            ),
            Text(
              "ADD CATEGORY",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: heightScreen * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                width: widthScreen,
                height: heightScreen * 0.10,
                // color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple.shade800),
                        borderRadius: BorderRadius.circular(5.5),
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
                      labelStyle: TextStyle(color: Colors.purple.shade800),
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
          ],
        ),
      ),
    );
  }
}
