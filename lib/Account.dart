/*HS*/
//Code for AccountPage,LoginPage

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:techteam/Account2.dart';
import 'Contact.dart';
import 'Seller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GoogleSignIn googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _currentUser;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _edtNameController = TextEditingController();
  final TextEditingController _edtPasswordController = TextEditingController();
  final TextEditingController _edtEmailController = TextEditingController();
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  void _validateInputs() {
    if (_formKey.currentState!.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState?.save();
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        AutovalidateMode;
      });
    }
  }
  bool _isPasswordVisible = false;
  bool _isTextVisible = true;
  var submitTextStyle = const TextStyle(
      fontSize: 28,
      letterSpacing: 2,
      color: Colors.white,
      fontWeight: FontWeight.w300);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(

        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: const [
           Icon(Icons.account_circle,size:32,color: Colors.black,),
            SizedBox(
              width: 8,
            ),
            Text(
              "Account",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon:  const Icon(
            Icons.language,
            color: Colors.deepOrangeAccent,
          ),)
        ],
        iconTheme: const IconThemeData(color: Colors.deepOrangeAccent),
      ),
      drawer: Drawer(
        //Drawer List
        child: ListView(
          children: [
            const DrawerHeader(child: Text('')),
            ListTile(
              title: const Text(
                'Become a Seller',
                style: TextStyle(color: Colors.black54),
              ),
              leading: const Icon(Icons.sell_outlined),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Seller()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Theme',
                style: TextStyle(color: Colors.black54),
              ),
              leading: const Icon(Icons.mode),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Contact us',
                style: TextStyle(color: Colors.black54),
              ),
              leading: const Icon(Icons.info_outline),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Contact()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                ),
              // SizedBox(
              // // height: 200,
              //
              // child: AnimatedTextKit(
              //   animatedTexts: [
              //     WavyAnimatedText(
              //       'Welcome!',
              //       textStyle: const TextStyle(
              //         fontSize: 30,
              //         fontWeight: FontWeight.w300,
              //         color: Colors.black54,
              //       ),
              //     ),
              //   ],
                // repeatForever: true,
              // ),
            // ),

                Visibility(
                  visible: _isTextVisible,
                  child: SizedBox(
                    // height: 200,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        WavyAnimatedText(
                          'Welcome!',
                          textStyle: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                      // repeatForever: true,
                      onFinished: () {
                        setState(() {
                          // set the visibility of the AnimatedTextKit widget to false after the animation is completed
                          _isTextVisible = false;
                        });
                      },
                    ),
                  ),
                ),
                Visibility(
                  visible: _isTextVisible,
                  child: SizedBox(
                    height: 0,
                    width: 0,
                  ),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'logo.png',
                  width: 35,
                  height: 35,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Technoteam.io",
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ],
            ),
                // SizedBox(
                //   height: 100,
                // ),

                // Text(
                //   'Welcome!',
                //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black12),
                // ),
                // Container(
                //   child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children:[
                //         Image.asset('logo.png',width: 35,height: 35,),
                //         const SizedBox(
                //           width: 8,
                //         ),
                //         const Text(
                //           "Technoteam.io",
                //           style: TextStyle(color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold,fontSize: 35,),
                //         ),
                //       ]
                //   ),
                // ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Future<void> _handleSignIn() async {
                          try {
                            final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
                            if (googleUser != null) {
                              final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
                              // Use the `googleAuth.idToken` and `googleAuth.accessToken` to authenticate the user in your app
                              setState(() {
                                _currentUser = googleUser;
                              });
                            }
                          } catch (error) {
                            print(error);
                          }
                        }
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.orange[100],
                        child: Image.asset(
                          'google.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.orange[100],
                      child: GestureDetector(
                          onTap: () async{
                      final facebookLogin = FacebookLogin();

                       final result = await facebookLogin.logIn(customPermissions: ['email', 'public_profile']);

                         if (result.status == FacebookLoginStatus.success) {
                          final token = result.accessToken!.token;
                                // Use the token to authenticate with your backend server
                          print('Facebook login successful, access token: $token');
                          } else if (result.status == FacebookLoginStatus.cancel) {
                          print('Facebook login cancelled by user');
                          } else {
                          print('Facebook login failed');
                          }
                          },

                        child: Image.asset(
                          'fbb.png',
                          width: 35,
                          height: 35,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.orange[100],
                      child: Image.asset(
                        'twitt.png',
                        width: 35,
                        height: 35,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.orange[100],
                      child: Image.asset(
                        'linkedin.png',
                        width: 35,
                        height: 35,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.orange[100],
                      child: Image.asset(
                        'github.png',
                        width: 35,
                        height: 35,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),

                 SizedBox(
                  width: 300,
                  child: TextFormField(
                    validator: validateEmail,
                    onSaved: (String? val) {
                      String? _email;
                      val = _email;
                    },
                    controller: _edtEmailController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrangeAccent),
                      ),
                    ),
                    cursorColor: Colors.black,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 20,),
            SizedBox(
              width: 300,
              child: TextFormField(
                validator: validatePassword,
                onSaved: (String? val) {
                  String? _password;
                  val = _password;
                },
                controller: _edtPasswordController,
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black),
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  hintText: 'Password',
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(_isPasswordVisible ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Forget Password?',
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    // Add navigation logic to go to the sign-up page
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Don\'t have an account? ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Sign Up',
                            style: const TextStyle(
                              color: Colors.deepOrangeAccent,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  const Account2()),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child:
                  AnimatedButton(
                    height: 100,
                    width: 300,
                    text: 'LOGIN',
                    isReverse: true,
                    selectedTextColor: Colors.deepOrangeAccent,
                    transitionType: TransitionType.LEFT_TO_RIGHT,
                    textStyle: submitTextStyle,
                    backgroundColor: Colors.deepOrangeAccent,
                    borderColor: Colors.white,
                    borderRadius: 50,
                    borderWidth: 2,
                    onPress: () {
                      if (_formKey.currentState!.validate()) {
                        // Form is valid, do something
                      }
                    },
                  ),
                  // ElevatedButton(
                  //   onPressed: (){},
                  // child: Text('Login',style: TextStyle(color: Colors.deepOrangeAccent),),
                  //   style: ElevatedButton.styleFrom(
                  //   backgroundColor: Colors.white,
                  //     textStyle: const TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 30,
                  //     )
                  //     ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  String? validateEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return 'Enter Valid Email';
    } else {
      return null;
    }
  }

  String? validatePassword(String? value) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }
}
