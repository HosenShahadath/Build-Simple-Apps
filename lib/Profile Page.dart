import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const CircleAvatar(
          radius: 80,
          backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/33576285?v=4'),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Shahadath Hosen",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'I love programming in flutter Framework',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 20,
        ),
        Card(
          elevation: 4.0,
          child: Column(
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.cake),
                title: Text('Birth Date'),
                subtitle: Text('2004-05-01'),
              ),
              ListTile(
                leading: const Icon(Icons.web),
                title: Text('Website'),
                subtitle: const Text('Shahadathhosen.com'),
                onTap: () {},
              ),
              const ListTile(
                leading: const Icon(Icons.email),
                title: Text('Email'),
                subtitle: const Text('Shahadath@gmail.com'),
              ),
              const ListTile(
                leading: const Icon(Icons.location_on),
                title: Text('Address'),
                subtitle: Text('Pokhara, Nepal'),
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 10,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook),
                    color: Colors.blue,
                    tooltip: 'Facebook',
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.link),
                    tooltip: 'LinkedIn',
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.code),
                    color: Colors.black,
                    tooltip: 'Github',
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}