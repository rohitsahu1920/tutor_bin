import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutor_bin/res/strings.dart';
import 'package:tutor_bin/screens/drawer_screens/about_us_screen.dart';
import 'package:tutor_bin/screens/drawer_screens/contact_us_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amber,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
            accountName: const Text("User Name"),
            accountEmail: const Text("username@domail.com"),
            currentAccountPicture: CachedNetworkImage(
              imageUrl: "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80",
              height: 60,
              width: 60,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error, size: 50,),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(Strings.viewProfile),
            trailing: const Icon(Icons.arrow_forward_ios_sharp),
            onTap: (){
              Get.back();
            }
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: Text(Strings.aboutUs),
            trailing: const Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {
              Get.back();
              Get.to(() => const AboutUsScreen());
            } ,
          ),
          ListTile(
            leading: const Icon(Icons.call),
            title: Text(Strings.contactUs),
            trailing: const Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {
              Get.back();
              Get.to(() => const ContactUsScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: Text(Strings.logout),
            onTap: () {
              Get.back();
            } ,
          ),
          ListTile(
            leading: const Icon(Icons.delete, color: Colors.red,),
            title: Text(Strings.deleteAccount, style: const TextStyle(color: Colors.red),),
            onTap: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
