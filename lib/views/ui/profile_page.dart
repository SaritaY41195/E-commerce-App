import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/common_button.dart';
import 'package:flutter_e_commerce_app/services/firestore/save_profile.dart';

import '../../common/constant.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ///Local vars
  TextEditingController? firstNameController;
  TextEditingController? lastNameController;
  TextEditingController? phoneNoController;

  String? _selectedGender;
  var profileData;
  FocusNode? fNameNode, lNameNode, emailNode, phoneNode;

  Map<String, dynamic> profileGenderData = {};
  var _formKey = GlobalKey<FormState>();

  bool isLoading = false, didSetProfileDetails = false;

  @override
  void initState() {
    super.initState();
    getData();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneNoController = TextEditingController();

    fNameNode = FocusNode();
    lNameNode = FocusNode();
    emailNode = FocusNode();
    phoneNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    fNameNode?.dispose();
    lNameNode?.dispose();
    emailNode?.dispose();
    phoneNode?.dispose();
  }

  getData()async{
    profileData = await SaveData.getProfileData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(117, 118, 140, 0.6),
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
        child: Column(
          children: [
            const Icon(
              Icons.person,
              size: 100,
            ),
            Expanded(child: mainLayout),
          ],
        ),
      ),
    );
  }

  get mainLayout => Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'FIRSTNAME',
                        ),
                        controller: firstNameController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        focusNode: fNameNode,
                        onFieldSubmitted: (_) =>
                            FocusScope.of(context).nextFocus(),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'LASTNAME',
                        ),
                        controller: lastNameController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        focusNode: lNameNode,
                        onFieldSubmitted: (_) =>
                            FocusScope.of(context).nextFocus(),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'PHONENUMBER',
                        ),
                        controller: phoneNoController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.phone,
                        focusNode: phoneNode,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      genderSection,
                    ],
                  ),
                ),
              ),
            ),
          ),
          saveProfile,
        ],
      );

  get genderSection => Container(
        width: double.infinity,
        child: Row(
          children: [
            Text(
              'Gender',
              style: TextStyle(fontSize: 15),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Radio<String>(
                        value: 'Male',
                        groupValue: _selectedGender,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      ),
                      const Text('Male'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<String>(
                        value: 'Female',
                        groupValue: _selectedGender,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        },
                      ),
                      const Text('Female'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<String>(
                        groupValue: _selectedGender,
                        value: 'Others',
                        onChanged: (String? value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        },
                      ),
                      const Text('Others'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  get saveProfile => Center(
        child: CommonButton(
          height: MediaQuery.sizeOf(context).height * 0.07,
          width: MediaQuery.sizeOf(context).width,
          onTap: () {
            Map<String, dynamic> data = {
              'firstName': firstNameController!.text.trim(),
              'lastname': lastNameController!.text.trim(),
              'phoneNumber': phoneNoController!.text.trim(),
              'gender': _selectedGender,
            };
            SaveData.saveProfile(data);
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Profile Saved successfully')));
          },
          title: 'Save Profile',
        ),
      );
}
