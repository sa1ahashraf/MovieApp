import 'package:flutter/material.dart';
import 'package:movie_app/constants/colors.dart';
import 'package:movie_app/shared/components/custom_floationg_action_button.dart';
import 'package:movie_app/shared/components/custom_text.dart';
import 'package:movie_app/shared/components/default_app_bar.dart';
import 'package:movie_app/views/Edit_Prodfile/components/custom_data_field.dart';
import 'package:movie_app/views/Edit_Prodfile/components/security_note_card.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  late final TextEditingController namecontroller;

  late final TextEditingController emailcontroller;

  late final TextEditingController usernamecontroller;

  @override
  void initState() {
    super.initState();
    namecontroller = TextEditingController(text: 'sa1ah ashraf');
    emailcontroller = TextEditingController(text: 'sa1ah@gmail.com');
    usernamecontroller = TextEditingController(text: 'sa111ah');
  }

  @override
  void dispose() {
    namecontroller.dispose();
    emailcontroller.dispose();
    usernamecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackGroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(
        buttonName: 'Save changes',
        icon: Icon(Icons.done),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: DefaultAppBar(isArrowActive: true),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            Customtext(text: 'Acconut Information'),
            const Text(
              'Update your personal details to personalize your movie discovery experience',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),

            const SizedBox(height: 40),

            const Text('Full Name'),
            CustomDataField(
              hintText: 'Enter your name',
              controller: namecontroller,
              icon: Icon(Icons.person_outlined),
            ),

            const SizedBox(height: 40),

            const Text('Email'),
            CustomDataField(
              hintText: 'example@gmail.com',
              controller: emailcontroller,
              icon: const Icon(Icons.email_outlined),
            ),

            const SizedBox(height: 40),

            const Text('Username'),
            CustomDataField(
              hintText: 'Enter your user name',
              controller: usernamecontroller,
              icon: const Icon(Icons.alternate_email),
            ),
            const Text(
              'Uername must be unique',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 40),
            const Divider(thickness: 2, color: Color(0xffE5E5E5)),
            const SizedBox(height: 20),
            const SecurityNoteCard(),
          ],
        ),
      ),
    );
  }
}
