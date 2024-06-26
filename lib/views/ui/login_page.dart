import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_e_commerce_app/views/ui/signup_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/back.jpg'),
                        fit: BoxFit.fill)),
                child: Stack(children: <Widget>[
                  Positioned(
                    left: 30,
                    width: 80,
                    height: 200,
                    child: FadeInDown(
                      duration: const Duration(seconds: 1),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/light-1.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    width: 80,
                    height: 150,
                    child: FadeInDown(
                      duration: const Duration(milliseconds: 1200),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/light-2.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 150,
                    child: FadeInDown(
                      duration: const Duration(milliseconds: 1300),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/clock.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: FadeInDown(
                      duration: const Duration(milliseconds: 1600),
                      child: Container(
                        margin: const EdgeInsets.only(top: 200),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            FadeInDown(
                              duration: const Duration(milliseconds: 1800),
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey.shade100,
                                      )),
                                ),
                                child: TextFormField(
                                  controller: emailController,
                                  keyboardType: TextInputType.phone,
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Enter email';
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter email",
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            FadeInDown(
                              duration: const Duration(milliseconds: 1900),
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey.shade100,
                                      )),
                                ),
                                child: TextFormField(
                                  controller: pwdController,
                                  validator: (value){
                                    if(value!.isEmpty && value.length <= 6){
                                      return 'Add password';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            FadeInDown(
                              duration: const Duration(milliseconds: 2000),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: const LinearGradient(colors: [
                                      Color.fromRGBO(34, 34, 49, 1.0),
                                      Color.fromRGBO(117, 118, 140, 0.6),
                                    ])),
                                child: Center(
                                  child: InkWell(
                                    onTap: () {
                                      if (_formKey.currentState!.validate()) {
                                        String email =
                                        emailController.text.trim();
                                        String pwd = pwdController.text.trim();
                                        // FirebaseAuthentication.signInUser(email, pwd);
                                        // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomeScreen()));
                                      }
                                    },
                                    child: const Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Forgot Password",
                                      style: TextStyle(
                                          color: Color.fromRGBO(34, 34, 49, 1.0),
                                          ),
                                    )),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const SignUpScreen()));
                                    },
                                    child: const Text(
                                      "New Register",
                                      style: TextStyle(
                                          color:
                                          Color.fromRGBO(34, 34, 49, 1.0),),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
