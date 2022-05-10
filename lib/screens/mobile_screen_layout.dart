import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
                fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Colors.grey),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
                color: Colors.grey)
          ],
          bottom: const TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  text: 'CHATS',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                )
              ]),
        ),
        body: const ContactsList(),
      ),
    );
  }
}
