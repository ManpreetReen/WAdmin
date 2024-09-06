
// import 'package:flutter/material.dart';
// import 'package:tutorial_app/views/dashboard_page.dart';
// import 'package:tutorial_app/views/navigationbar/historypage.dart';
// import 'package:tutorial_app/views/navigationbar/insurancepage.dart';
// import 'package:tutorial_app/views/navigationbar/loanpage.dart';
// import 'package:tutorial_app/views/navigationbar/wealthpage.dart';
// import 'package:get/get.dart';
//
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';
// import 'package:shared_preferences/shared_preferences.dart'; //
//
//
// class MainPage extends StatefulWidget {
//   const MainPage({super.key});
//
//   @override
//   _MainPageState createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//
//
//
//   File? _firstImageFile; // To hold the first picked image file
//   File? _secondImageFile; // To hold the second picked image file
//   final ImagePicker _picker = ImagePicker();
//
//   static const String _firstImagePathKey = 'first_image_path'; // Key for first image path in shared preferences
//   static const String _secondImagePathKey = 'second_image_path'; // Key for second image path in shared preferences
//
//   @override
//   void initState() {
//     super.initState();
//     _loadSavedImages(); // Load the saved images when the app starts
//   }
//
//   Future<void> _loadSavedImages() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//
//     // Retrieve the saved paths for both images
//     String? firstImagePath = prefs.getString(_firstImagePathKey);
//     String? secondImagePath = prefs.getString(_secondImagePathKey);
//
//     // Check if the paths exist and assign them to their respective File objects
//     if (firstImagePath != null && File(firstImagePath).existsSync()) {
//       setState(() {
//         _firstImageFile = File(firstImagePath);
//       });
//     }
//
//     if (secondImagePath != null && File(secondImagePath).existsSync()) {
//       setState(() {
//         _secondImageFile = File(secondImagePath);
//       });
//     }
//   }
//
//   Future<void> _pickImage(int imageNumber) async {
//     final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
//
//     if (image != null) {
//       if (imageNumber == 1) {
//         setState(() {
//           _firstImageFile = File(image.path);
//         });
//         _saveImagePath(_firstImagePathKey, image.path); // Save the first image path
//       } else if (imageNumber == 2) {
//         setState(() {
//           _secondImageFile = File(image.path);
//         });
//         _saveImagePath(_secondImagePathKey, image.path); // Save the second image path
//       }
//     }
//   }
//
//   Future<void> _saveImagePath(String key, String path) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString(key, path); // Save the image path to shared preferences
//   }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//   int _selectedIndex = 0;
//
//   final List<Widget> _pages = [
//     const DashboardPage(), // Your existing DashboardPage
//     const LoanPage(),  // Example other page
//     const InsurancePage(),
//     const WealthPage(),
//     const HistoryPage(),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//             backgroundColor: const Color(0xFF4B0082),
//             actions: [
//               Row(
//                 children: [
//                   SizedBox(
//                     height: 44,
//                     width: 45,
//                     child: Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: () => _pickImage(1), // Pick the first image
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(11.0),
//                             child: _firstImageFile != null
//                                 ? Image.file(
//                               _firstImageFile!,
//                               width: 39,
//                               height: 39,
//                               fit: BoxFit.cover,
//                             )
//                                 : Container(
//                               width: 39,
//                               height: 39,
//                               color: Colors.blueAccent,
//                               child: const Icon(
//                                 Icons.person,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           bottom: 1,
//                           left: 24,
//                           child: GestureDetector(
//                             onTap: () => _pickImage(2), // Pick the second image
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(6.0),
//                               child: _secondImageFile != null
//                                   ? Image.file(
//                                 _secondImageFile!,
//                                 width: 21,
//                                 height: 18,
//                                 fit: BoxFit.cover,
//                               )
//                                   : Container(
//                                 width: 21,
//                                 height: 18,
//                                 color: Colors.yellow,
//                                 child: const Icon(
//                                   Icons.flag,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//
//                   const SizedBox(width: 9,),
//
//
//                   Container(
//                     padding: const EdgeInsets.fromLTRB(5, 10, 3, 5),
//
//                     child: const Column(
//                       children: [
//                         Text(
//
//                           'Add Address',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                         Text("Address",
//                         style: TextStyle(
//                             color: Colors.white,
//                           fontSize: 11,
//                         )),
//                       ],
//                     ),
//                   ),
//                   Transform.translate(
//                     offset: const Offset(-11, 0), // Adjust the X-axis offset to move the icon closer
//                     child: IconButton(
//                       onPressed: () {
//                         // Open settings page
//                       },
//                       icon: const Icon(Icons.arrow_drop_down),
//                       color: Colors.white70,
//                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 16),
//                     ),
//                   ),
//
//                   const SizedBox(width:60),
//
//
//
//
//                   IconButton(
//                     onPressed: () {
//                       Get.toNamed('/qrcode');
//                     },
//                     icon: const Icon(Icons.qr_code_scanner_outlined),
//                     color: Colors.white70,
//
//                   ),
//
//
//
//
//                   IconButton(
//                     onPressed: () {
//                       // Open settings page
//                     },
//                     icon: const Icon(Icons.notifications_none_rounded),
//                     color: Colors.white70,
//
//                   ),
//                   IconButton(
//                     onPressed: () {
//                       // Open settings page
//                     },
//                     icon: const Icon(Icons.info_outlined),
//                     color: Colors.white70,
//
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           bottomNavigationBar: Theme(
//             data: ThemeData(
//               navigationBarTheme: NavigationBarThemeData(
//                 backgroundColor: const Color(0xFF4B0082),
//                 indicatorColor: Colors.transparent,
//                 labelTextStyle: WidgetStateProperty.all(
//                   const TextStyle(color: Colors.white70),
//                 ),
//                 iconTheme: WidgetStateProperty.all(
//                   const IconThemeData(color: Colors.white70),
//                 ),
//
//               ),
//             ),
//
//             child: NavigationBar(
//
//               //  selectedIndex: _selectedIndex,
//               onDestinationSelected: (int index) {
//                 setState(() {
//                   //   _selectedIndex = index;
//                 });
//                 switch (index) {
//                   case 0:
//                     Get.toNamed('/home');            // Navigate to Home
//                     break;
//                   case 1:
//                     Get.toNamed('/navloan');        // Navigate to Loan
//                     break;
//                   case 2:
//                     Get.toNamed('/insurance');   // Navigate to Insurance
//                     break;
//                   case 3:
//                     Get.toNamed('/wealth');      // Navigate to Wealth
//                     break;
//                   case 4:
//                     Get.toNamed('/history');     // Navigate to History
//                     break;
//                 }
//               },
//               destinations: const [
//                 NavigationDestination(
//                   icon: Icon(Icons.home_outlined,
//                       color: Colors.white70),
//                   label: 'Home',
//                 ),
//                 NavigationDestination(
//                     icon: Icon(Icons.currency_rupee_rounded,
//                         color: Colors.white70),
//                     label: 'Loan'),
//                 NavigationDestination(
//                     icon: Icon(Icons.security_rounded,
//                         color: Colors.white70),
//                     label: 'Insurance'),
//                 NavigationDestination(
//                     icon: Icon(Icons.trending_up_rounded,
//                         color: Colors.white70),
//                     label: 'Wealth'),
//                 NavigationDestination(
//                   icon: Icon(Icons.swap_horiz_rounded,
//                       color: Colors.white70),
//                   label: 'History',
//                 ),
//               ],
//             ),
//
//
//         // Your existing AppBar code
//       ),
//       backgroundColor: const Color(0xFF4B0082),
//       body: _pages[_selectedIndex], // Show the selected page
//       bottomNavigationBar: NavigationBar(
//         selectedIndex: _selectedIndex,
//         onDestinationSelected: _onItemTapped,
//         destinations: const [
//           NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
//           NavigationDestination(icon: Icon(Icons.currency_rupee_rounded), label: 'Loan'),
//           NavigationDestination(icon: Icon(Icons.security_rounded), label: 'Insurance'),
//           NavigationDestination(icon: Icon(Icons.trending_up_rounded), label: 'Wealth'),
//           NavigationDestination(icon: Icon(Icons.swap_horiz_rounded), label: 'History'),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:tutorial_app/views/dashboard_page.dart';
import 'package:tutorial_app/views/navigationbar/historypage.dart';
import 'package:tutorial_app/views/navigationbar/insurancepage.dart';
import 'package:tutorial_app/views/navigationbar/loanpage.dart';
import 'package:tutorial_app/views/navigationbar/wealthpage.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  File? _firstImageFile;
  File? _secondImageFile;
  final ImagePicker _picker = ImagePicker();

  static const String _firstImagePathKey = 'first_image_path';
  static const String _secondImagePathKey = 'second_image_path';

  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const DashboardPage(),
    const LoanPage(),
    const InsurancePage(),
    const WealthPage(),
    const HistoryPage(),
  ];

  @override
  void initState() {
    super.initState();
    _loadSavedImages();
  }

  Future<void> _loadSavedImages() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? firstImagePath = prefs.getString(_firstImagePathKey);
    String? secondImagePath = prefs.getString(_secondImagePathKey);

    if (firstImagePath != null && File(firstImagePath).existsSync()) {
      setState(() {
        _firstImageFile = File(firstImagePath);
      });
    }

    if (secondImagePath != null && File(secondImagePath).existsSync()) {
      setState(() {
        _secondImageFile = File(secondImagePath);
      });
    }
  }

  Future<void> _pickImage(int imageNumber) async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      if (imageNumber == 1) {
        setState(() {
          _firstImageFile = File(image.path);
        });
        _saveImagePath(_firstImagePathKey, image.path);
      } else if (imageNumber == 2) {
        setState(() {
          _secondImageFile = File(image.path);
        });
        _saveImagePath(_secondImagePathKey, image.path);
      }
    }
  }

  Future<void> _saveImagePath(String key, String path) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, path);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: const Color(0xFF4B0082),
        actions: [
          Row(
            children: [
              SizedBox(
                height: 44,
                width: 45,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () => _pickImage(1),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(11.0),
                        child: _firstImageFile != null
                            ? Image.file(
                          _firstImageFile!,
                          width: 39,
                          height: 39,
                          fit: BoxFit.cover,
                        )
                            : Container(
                          width: 39,
                          height: 39,
                          color: Colors.blueAccent,
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      left: 24,
                      child: GestureDetector(
                        onTap: () => _pickImage(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6.0),
                          child: _secondImageFile != null
                              ? Image.file(
                            _secondImageFile!,
                            width: 21,
                            height: 18,
                            fit: BoxFit.cover,
                          )
                              : Container(
                            width: 21,
                            height: 18,
                            color: Colors.yellow,
                            child: const Icon(
                              Icons.flag,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 9),
              Container(
                padding: const EdgeInsets.fromLTRB(5, 10, 3, 5),
                child: const Column(
                  children: [
                    Text(
                      'Add Address',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Address",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: const Offset(-11, 0),
                child: IconButton(
                  onPressed: () {
                    // Open settings page
                  },
                  icon: const Icon(Icons.arrow_drop_down),
                  color: Colors.white70,
                  padding: const EdgeInsets.fromLTRB(0, 0, 4, 16),
                ),
              ),
              const SizedBox(width: 60),
              IconButton(
                onPressed: () {
                  Get.toNamed('/qrcode');
                },
                icon: const Icon(Icons.qr_code_scanner_outlined),
                color: Colors.white70,
              ),
              IconButton(
                onPressed: () {
                  // Open settings page
                },
                icon: const Icon(Icons.notifications_none_rounded),
                color: Colors.white70,
              ),
              IconButton(
                onPressed: () {
                  // Open settings page
                },
                icon: const Icon(Icons.info_outlined),
                color: Colors.white70,
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color(0xFF4B0082),
      body: _pages[_selectedIndex], // Show the selected page
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xFF4B0082),
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: const [

          NavigationDestination(icon: Icon(Icons.home_outlined,color: Colors.white), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.currency_rupee_rounded,color: Colors.white), label: 'Loan'),
          NavigationDestination(icon: Icon(Icons.security_rounded,color: Colors.white), label: 'Insurance'),
          NavigationDestination(icon: Icon(Icons.trending_up_rounded,color: Colors.white), label: 'Wealth'),
          NavigationDestination(icon: Icon(Icons.swap_horiz_rounded,color: Colors.white), label: 'History'),

        ],
        // selectedIconTheme: IconThemeData(color: Colors.white), // Color for selected icons
        // unselectedIconTheme: IconThemeData(color: Colors.grey), // Color for unselected icons
      ),
    );
  }
}

