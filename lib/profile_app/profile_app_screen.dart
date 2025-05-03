import 'package:flutter/material.dart';

class ProfileAppScreen extends StatelessWidget {
  const ProfileAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
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
              'Bishworaj Poudel',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'I Love teaching students and helping them to achieve their dreams',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 4,
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.cake),
                    title: Text('Birth Date'),
                    subtitle: Text('1997-05-14'),
                  ),
                  ListTile(
                      leading: const Icon(Icons.web),
                      title: const Text('Website'),
                      subtitle: const Text('brp.com.np'),
                      onTap: () {}),
                  const ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email'),
                    subtitle: Text('bishworajpoudelofficial@gmail.com'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Address'),
                    subtitle: Text('Pokhara, Nepal'),
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
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.facebook),
                  color: Colors.blue,
                  tooltip: 'Facebook',
                ),
                IconButton(
                  icon: const Icon(Icons.link),
                  onPressed: () {},
                  color: Colors.blue,
                  tooltip: 'LinkedIn',
                ),
                IconButton(
                  icon: const Icon(Icons.code),
                  onPressed: () {},
                  color: Colors.black,
                  tooltip: 'GitHub',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
