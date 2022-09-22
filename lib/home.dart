import 'package:flutter/material.dart';
import 'package:Schoolaid/biology.dart';
import 'package:Schoolaid/chemistry.dart';
import 'package:Schoolaid/maths.dart';
import 'package:Schoolaid/physics.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeCatPage extends StatefulWidget {
  const HomeCatPage({Key? key}) : super(key: key);

  @override
  State<HomeCatPage> createState() => _HomeCatPageState();
}

class _HomeCatPageState extends State<HomeCatPage> {
  // this function is used for exit the application, user must click back button two times
  DateTime? _currentBackPressTime;
  Future<bool> _onWillPop() {
    DateTime now = DateTime.now();
    if (_currentBackPressTime == null ||
        now.difference(_currentBackPressTime!) > const Duration(seconds: 2)) {
      _currentBackPressTime = now;
      Fluttertoast.showToast(
          msg: 'Press back again to exit',
          backgroundColor: const Color.fromARGB(255, 22, 75, 24),
          toastLength: Toast.LENGTH_LONG);
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 22, 75, 24),
          centerTitle: true,
          elevation: 0.3,
          title: const Text(
            'Schoolaid',
          ),
        ),
      ),
      body: WillPopScope(
        onWillPop: _onWillPop,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Jamb Preparation Materials.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) =>
                                  const BiologyPage()));
                          FocusScope.of(context).unfocus();
                        },
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 82,
                              backgroundColor: Color.fromARGB(255, 22, 75, 24),
                              child: CircleAvatar(
                                radius: 80,
                                backgroundImage: AssetImage(
                                  'assets/biology.png',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Biology',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) =>
                                  const ChemistryPage()));
                          FocusScope.of(context).unfocus();
                        },
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 82,
                              backgroundColor: Color.fromARGB(255, 22, 75, 24),
                              child: CircleAvatar(
                                radius: 80,
                                backgroundImage: AssetImage(
                                  'assets/chemistry.png',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Chemistry',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) => const MathPage()));
                          FocusScope.of(context).unfocus();
                        },
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 82,
                              backgroundColor: Color.fromARGB(255, 22, 75, 24),
                              child: CircleAvatar(
                                radius: 80,
                                backgroundImage: AssetImage(
                                  'assets/math.jpeg',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Mathematics',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) =>
                                  const PhysicsPage()));
                          FocusScope.of(context).unfocus();
                        },
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 82,
                              backgroundColor: Color.fromARGB(255, 22, 75, 24),
                              child: CircleAvatar(
                                radius: 80,
                                backgroundImage: AssetImage(
                                  'assets/physics.png',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Physics',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
