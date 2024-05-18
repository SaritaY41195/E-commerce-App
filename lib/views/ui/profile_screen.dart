import 'package:flutter/material.dart';

const PROFILE_GENDER_MALE = "male";
const PROFILE_GENDER_FEMALE = "female";
const PROFILE_GENDER_OTHER = "others";

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ///Local vars
  TextEditingController? firstNameController;
  TextEditingController? lastNameController;
  TextEditingController? emailController;
  TextEditingController? phoneNoController;

  FocusNode? fNameNode, lNameNode, emailNode, phoneNode;

  Map<String, dynamic> profileGenderData = {};

  ///Patch
  var _pageSize, _notifySize;

  void measureHeight() {
    _pageSize = MediaQuery.of(context).size.height;
    _notifySize = MediaQuery.of(context).padding.top;
  }

  var _formKey = GlobalKey<FormState>();

  bool isLoading = false, didSetProfileDetails = false;

  @override
  void initState() {
    super.initState();

    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          mainLayout,
        ],
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
                      //headerPart,
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
                          labelText: 'EMAIL',
                        ),
                        controller: emailController,
                        focusNode: emailNode,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
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
                      //genderSection,
                    ],
                  ),
                ),
              ),
            ),
          ),
          //getContinueBtn,
        ],
      );

  // get headerPart => Container(
  //   child: Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       spacingVerticalLarge,
  //       InkWell(
  //         onTap: () => context.router.popTop(),
  //         child: SvgPicture.asset(
  //           Images.icBackArrow,
  //           height: DimenConst.iconSize30,
  //           width: DimenConst.iconSize30,
  //         ),
  //       ),
  //       SizedBox(
  //         height: Spacing.JUMBO30,
  //       ),
  //       Text(
  //         StringResource.profile,
  //         style: TextStyles.heading1.copyWith(fontWeight: FontWeight.w600),
  //       ),
  //       spacingVerticalXSmall,
  //       Container(
  //         width: MediaQuery.of(context).size.width * 0.8,
  //         child: Text(
  //           StringResource.profileDescription,
  //           style: TextStyles.secondaryTextStyle,
  //         ),
  //       ),
  //     ],
  //   ),
  // );
  //
  // get genderSection => Container(
  //   width: double.infinity,
  //   child: Row(
  //     children: [
  //       Text(
  //         StringResource.gender,
  //         style: TextStyles.textFieldStyle.copyWith(fontSize: 15),
  //       ),
  //       spacingHorizontalNormal,
  //       Expanded(
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             customCheckBox(PROFILE_GENDER_MALE, StringResource.male),
  //             customCheckBox(PROFILE_GENDER_FEMALE, StringResource.female),
  //             customCheckBox(PROFILE_GENDER_OTHER, StringResource.others),
  //           ],
  //         ),
  //       )
  //     ],
  //   ),
  // );
  //
  // customCheckBox(String key, String title) {
  //   return Row(
  //     mainAxisSize: MainAxisSize.min,
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: [
  //       CheckBoxExtended(
  //         value: profileGenderData[key] ?? false,
  //         elevation: 20,
  //         boxShadow: [
  //           BoxShadow(
  //             color: Colors.grey.withOpacity(0.1),
  //             spreadRadius: 5,
  //             blurRadius: 7,
  //             offset: Offset(0, 3), // changes position of shadow
  //           ),
  //         ],
  //         checkBoxColor: Colors.white,
  //         showBorder: false,
  //         onChanged: (value) async {
  //           updateGenderData(key, value);
  //         },
  //         margin: EdgeInsets.only(right: Spacing.xSmall),
  //       ),
  //       Text(title)
  //     ],
  //   );
  // }
  //
  // updateGenderData(String key, value) {
  //   setState(() {
  //     profileGenderData[key] = value;
  //     if (key == PROFILE_GENDER_MALE) {
  //       profileGenderData[PROFILE_GENDER_FEMALE] = false;
  //       profileGenderData[PROFILE_GENDER_OTHER] = false;
  //     }
  //     if (key == PROFILE_GENDER_FEMALE) {
  //       profileGenderData[PROFILE_GENDER_MALE] = false;
  //       profileGenderData[PROFILE_GENDER_OTHER] = false;
  //     }
  //     if (key == PROFILE_GENDER_OTHER) {
  //       profileGenderData[PROFILE_GENDER_MALE] = false;
  //       profileGenderData[PROFILE_GENDER_FEMALE] = false;
  //     }
  //   });
  // }
  //
  // get getContinueBtn => Padding(
  //   padding: const EdgeInsets.symmetric(horizontal: Spacing.large),
  //   child: RSSolidCustomButton(
  //     buttonType: ButtonType.primary,
  //     isEnable: getNextBtnValidation(),
  //     title: StringResource.doneBtn,
  //     onPress: () => onNextClick(),
  //     isLoading: _profileProvider.editProfileDoneState,
  //   ),
  // );
  //
  // bool getNextBtnValidation() {
  //   return (_formKey.currentState?.validate() ?? false) &&
  //       !(validator.emptyOrNullFieldVerification(firstNameController?.text)) &&
  //       !(validator.emptyOrNullFieldVerification(lastNameController?.text)) &&
  //       !(!validator.emailVerification(emailController?.text ?? "")) &&
  //       !((phoneNoController?.text.isEmpty ?? false) ||
  //           phoneNoController?.text == null ||
  //           (phoneNoController?.text.length ?? 0) < 10) &&
  //       !((profileGenderData[PROFILE_GENDER_MALE] == null &&
  //           profileGenderData[PROFILE_GENDER_FEMALE] == null &&
  //           profileGenderData[PROFILE_GENDER_OTHER] == null) ||
  //           profileGenderData[PROFILE_GENDER_MALE] == false &&
  //               profileGenderData[PROFILE_GENDER_FEMALE] == false &&
  //               profileGenderData[PROFILE_GENDER_OTHER] == false);
  // }
  //
  // onNextClick() async {
  //   if (_formKey.currentState?.validate() ?? false) {
  //     if (validator.emptyOrNullFieldVerification(firstNameController?.text)) {
  //       showSnackBar(
  //           message: StringResource.pleaseEnterValidFirstName,
  //           context: context,
  //           isError: true);
  //       return;
  //     }
  //
  //     if (validator.emptyOrNullFieldVerification(lastNameController?.text)) {
  //       showSnackBar(
  //           message: StringResource.pleaseEnterValidLastName,
  //           context: context,
  //           isError: true);
  //       return;
  //     }
  //
  //     if (!validator.emailVerification(emailController?.text ?? "")) {
  //       showSnackBar(
  //           message: StringResource.pleaseEnterValidEmail,
  //           context: context,
  //           isError: true);
  //       return;
  //     }
  //
  //     if ((phoneNoController?.text.isEmpty ?? false) ||
  //         phoneNoController?.text == null ||
  //         (phoneNoController?.text.length ?? 0) < 10) {
  //       showSnackBar(
  //           message: StringResource.pleaseEnterValidMobileNo,
  //           context: context,
  //           isError: true);
  //       return;
  //     }
  //
  //     if ((profileGenderData[PROFILE_GENDER_MALE] == null &&
  //         profileGenderData[PROFILE_GENDER_FEMALE] == null &&
  //         profileGenderData[PROFILE_GENDER_OTHER] == null) ||
  //         profileGenderData[PROFILE_GENDER_MALE] == false &&
  //             profileGenderData[PROFILE_GENDER_FEMALE] == false &&
  //             profileGenderData[PROFILE_GENDER_OTHER] == false) {
  //       showSnackBar(
  //           message: StringResource.pleaseSelectGender,
  //           context: context,
  //           isError: true);
  //       return;
  //     }
  //
  //     BotToast.showLoading();
  //     String? gender;
  //     if (profileGenderData[PROFILE_GENDER_MALE] == true) {
  //       gender = PROFILE_GENDER_MALE;
  //     }
  //     if (profileGenderData[PROFILE_GENDER_FEMALE] == true) {
  //       gender = PROFILE_GENDER_FEMALE;
  //     }
  //     if (profileGenderData[PROFILE_GENDER_OTHER] == true) {
  //       gender = PROFILE_GENDER_OTHER;
  //     }
  //     Map<String, dynamic> reqBody = {
  //       PARAM_FIRST_NAME: firstNameController?.text.trim(),
  //       PARAM_LAST_NAME: lastNameController?.text.trim(),
  //       PARAM_EMAIL: emailController?.text.trim(),
  //       PARAM_MOBILE_N0: phoneNoController?.text.trim(),
  //       PARAM_GENDER: gender
  //     };
  //     var response =
  //     await _profileProvider.editProfileData(reqBody, force: true);
  //     BotToast.closeAllLoading();
  //     handleAPIResponse(response, () {
  //       showCustomToast(
  //         text: response!.message!,
  //         toastType: ToastType.Success,
  //       );
  //       context.router.pushNamed(ROUTE_DASHBOARD);
  //       _session.dashboardIndex = 3;
  //     }, shouldShowError: true);
  //   }
  // }
  //
  // Future<bool> setUserDetails() async {
  //   if (isLoading) return Future.value(false);
  //   isLoading = true;
  //
  //   if (didSetProfileDetails) return Future.value(didSetProfileDetails);
  //
  //   var userData = getUser()?.data?.user;
  //
  //   if (userData != null) {
  //     firstNameController?.text = userData.firstName ?? "";
  //     lastNameController?.text = userData.lastName ?? "";
  //     emailController?.text = userData.email ?? "";
  //     phoneNoController?.text = userData.mobileNo?.substring(1) ?? "";
  //     if (userData.gender == PROFILE_GENDER_MALE) {
  //       profileGenderData[PROFILE_GENDER_MALE] = true;
  //     }
  //     if (userData.gender == PROFILE_GENDER_FEMALE) {
  //       profileGenderData[PROFILE_GENDER_FEMALE] = true;
  //     }
  //     if (userData.gender == PROFILE_GENDER_OTHER) {
  //       profileGenderData[PROFILE_GENDER_OTHER] = true;
  //     }
  //   }
  //   didSetProfileDetails = true;
  //   return true;
  // }
}
