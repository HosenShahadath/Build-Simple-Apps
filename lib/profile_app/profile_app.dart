import 'package:flutter/material.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile App'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/33576285?v=4'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Bishworaj Pudel',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
                'I love teaching students and helping them to achieve their dreams.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 20),
            Card(
              elevation: 4.0,
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.cake),
                    title: Text('Birth Date'),
                    subtitle: Text('1997-05-14'),
                  ),
                  ListTile(
                    leading: Icon(Icons.web),
                    title: const Text('Website'),
                    subtitle: const Text('brp.com.np'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email'),
                    subtitle: Text('bishworajpoudelofficial@gmail.com'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Address'),
                    subtitle: Text('Pkhara, Nepal'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Wrap(
              spacing: 10,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.facebook), color: Colors.blue, tooltip: 'Facebook',),
                IconButton(onPressed: () {}, icon: Icon(Icons.link), color: Colors.blue, tooltip: 'LinkedIn',),
                IconButton(onPressed: () {}, icon: Icon(Icons.code), color: Colors.black, tooltip: 'GitHub',),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
