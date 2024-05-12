import 'package:crochetauth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:crochetauth/main.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Crochet Patterns',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  ),
                                )),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            // Title widget
            //Text('My App Title'),
            // Sign-in button
            Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                onPressed: () {
                  print('test');
                  Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
                },
                child: const Text(
                                'Account',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
              ),
            ),
            // Tabs for Patterns and Community
            TabBar(
              tabs: [
                Tab(text: 'Patterns'),
                Tab(text: 'Community'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
