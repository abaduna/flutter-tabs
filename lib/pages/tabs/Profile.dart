import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          // Profile Header
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              'https://via.placeholder.com/150',
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'John Doe',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'john.doe@example.com',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          // Stats Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatColumn('Posts', '255'),
              _buildStatColumn('Followers', '12k'),
              _buildStatColumn('Following', '1.2k'),
            ],
          ),
          const SizedBox(height: 20),
          // Profile Options
          _buildProfileOption(
            icon: Icons.edit,
            title: 'Edit Profile',
            onTap: () {},
          ),
          _buildProfileOption(
            icon: Icons.location_on,
            title: 'My Address',
            onTap: () {},
          ),
          _buildProfileOption(
            icon: Icons.payment,
            title: 'Payment Methods',
            onTap: () {},
          ),
          _buildProfileOption(
            icon: Icons.security,
            title: 'Security',
            onTap: () {},
          ),
          _buildProfileOption(
            icon: Icons.help,
            title: 'Help Center',
            onTap: () {},
          ),
          _buildProfileOption(
            icon: Icons.logout,
            title: 'Logout',
            onTap: () {},
            isLast: true,
          ),
        ],
      ),
    );
  }

  Widget _buildStatColumn(String title, String count) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isLast = false,
  }) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward),
          onTap: onTap,
        ),
        if (!isLast) const Divider(),
      ],
    );
  }
}

