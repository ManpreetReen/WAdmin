
import 'package:flutter/material.dart';


class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF61A417),
      appBar: AppBar(
        title: const Text(
          'User Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Mulish',
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xFF61A417),
        elevation: 1,
      ),
      body:  Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
            onPressed: () {
      showModalBottomSheet(
      context: context,
        barrierColor: Colors.white,
      builder: (context) => Container(
      padding: const EdgeInsets.all(16.0), // Added padding for some spacing
      child:  Column(
        children: [
          const SizedBox(height: 20,),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Admin ID',
            ),
          ),
          const SizedBox(height: 20,),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Token',
            ),
          ),
          const SizedBox(height: 20,),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Submit'),
          )
        ],
      ),

      ),
      backgroundColor: const Color(0xFF61A417), // Background color for the modal
      );
      },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF61A417),
          // Correct style for button background color
        ),

        child: const Text('Verify User account'), // Added a label for the button
      ),



        const SizedBox(height: 20),

      ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            barrierColor: Colors.white,
            builder: (context) => Container(
              padding: const EdgeInsets.all(16.0), // Added padding for some spacing
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Admin ID',
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'User ID',
                    ),
                  ),
                  const SizedBox(height: 20,),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('OutlinedButton'),
                  )
                ],
              ),
            ),
            backgroundColor: const Color(0xFF61A417), // Background color for the modal
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF61A417), // Correct style for button background color
        ),
        child: const Text('Verify User account by User ID'), // Added a label for the button
      )

      ],
        ),
      ),
      
    );
  }
}
