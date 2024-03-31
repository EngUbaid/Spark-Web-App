import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:spark/View/drawer%20screen/drawerdata.dart';
import 'package:spark/assetss/App_Colors.dart';

class Loginscreen extends StatefulWidget {
  Loginscreen({
    super.key,
  });

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController Forgetemailcontroler = TextEditingController();
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();
  bool isForgetPasswordClicked = false;
  bool isLoading = false;
  bool _isPasswordVisible = false;
  String firstName = ''; // Variable to store first name from API
  String lastname = '';
  String role = '';
  String profilephoto = '';
  String accestoken = '';

  var _formkey = GlobalKey<FormState>();

  static const String predefinedEmail = 'engubaid77@gmail.com';
  static const String predefinedPassword = 'Ubaid@2024';

  String? _emailError;
  String? _forgetemailError;
  String? _passwordError;

  login(String email, password) async {
    setState(() {
      isLoading = true;
      _emailError = null;
      _passwordError = null;
    });

    try {
      Response response = await post(
          Uri.parse("https://staging.sparkemp.io/api/auth/login"),
          body: {"email": email, "password": password});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        setState(() {
          firstName = data["first_name"];
          lastname = data["last_name"];
          role = data["role"]['name'];
          profilephoto = data["profile_photo_url"];
          accestoken = data['access_token'];
        });
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: greencolor, content: Text("Log in Successful")));
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return drwerdata(
              firstname: firstName,
              lastname: lastname,
              role: role,
              profilephoto: profilephoto,
              accestoken: accestoken,
            );
          },
        ));
      } else {
        var responseData = jsonDecode(response.body.toString());
        if (responseData.containsKey('success') &&
            responseData['success'] == false) {
          dynamic errors = responseData['errors'];
          if (errors is List) {
            setState(() {
              _passwordError = errors.join(", ");
            });
          } else if (errors is Map<String, dynamic>) {
            List<String> errorMessages = [];
            errors.forEach((key, value) {
              errorMessages.add(value[0]);
            });

            setState(() {
              _emailError = errorMessages.join(", ");
            });
          }
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: redcolor, content: Text("Error: ${e.toString()}")));
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  resetPassword(String email) async {
    setState(() {
      isLoading = true;
      _forgetemailError = null;
    });

    try {
      Response response = await post(
        Uri.parse("https://staging.sparkemp.io/api/auth/reset"),
        body: {"email": email},
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data.toString());
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: greencolor,
          content: Text("Password reset link sent to $email"),
        ));
      } else {
        var responseData = jsonDecode(response.body.toString());
        if (responseData.containsKey('errors')) {
          dynamic errors = responseData['errors'];
          if (errors is Map<String, dynamic>) {
            List<String> errorMessages = [];
            errors.forEach((key, value) {
              errorMessages.add(value[0]);
            });
            setState(() {
              _forgetemailError = errorMessages.join(", ");
            });
          }
        } else if (responseData.containsKey('error')) {
          setState(() {
            _forgetemailError = responseData['error'];
          });
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: redcolor,
        content: Text("Error: ${e.toString()}"),
      ));
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  void performLogin() {
    if (_formkey.currentState!.validate()) {
      if (!isLoading) {
        login(
          emailcontroler.text.toString(),
          passwordcontroler.text.toString(),
        );
      }
    }
  }

  void performforget() {
    resetPassword(
      Forgetemailcontroler.text.toString(),
    );
  }

  @override
  void initState() {
    super.initState();
    emailcontroler.text = predefinedEmail;
    passwordcontroler.text = predefinedPassword;
    //login(predefinedEmail, predefinedPassword);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(40),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: backroundcolor,
                  radius: 50,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "SPARK",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: bluecolor),
                ),
                const SizedBox(
                  height: 20,
                ),
                isForgetPasswordClicked
                    ? Container(
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: Forgetemailcontroler,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "Forget  Email",
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            errorText: _forgetemailError?.isNotEmpty == true
                                ? _forgetemailError
                                : null,
                          ),
                          onFieldSubmitted: (value) {
                            performforget();
                          },
                        ),
                      )
                    : Container(
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailcontroler,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "Enter Email",
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            errorText: _emailError?.isNotEmpty == true
                                ? _emailError
                                : null,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email is required";
                            } else {
                              return null;
                            }
                          },
                          onFieldSubmitted: (value) {
                            performLogin();
                          },
                        ),
                      ),
                const SizedBox(
                  height: 20,
                ),
                isForgetPasswordClicked
                    ? Container(
                        height: 0,
                      )
                    : Container(
                        child: TextFormField(
                          obscureText: !_isPasswordVisible,
                          controller: passwordcontroler,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              hintText: "Enter Password",
                              labelText: "Password",
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  },
                                  icon: Icon(_isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              errorText: _passwordError?.isNotEmpty == true
                                  ? _passwordError
                                  : null),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password is required";
                            } else {
                              return null;
                            }
                          },
                          onFieldSubmitted: (value) {
                            performLogin();
                          },
                        ),
                      ),
                const SizedBox(
                  height: 20,
                ),
                isForgetPasswordClicked
                    ? Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              performforget();
                            },
                            child: Container(
                              color: bluecolor,
                              height: 40,
                              width: MediaQuery.of(context).size.width / 7,
                              child: Center(
                                child: isLoading
                                    ? Container(
                                        height: 20,
                                        width: 20,
                                        child: const CircularProgressIndicator(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      )
                                    : const Text(
                                        "Forget Password ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                              ),
                            ),
                          ),
                          Expanded(
                              child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isForgetPasswordClicked = false;
                                    });
                                  },
                                  child: Text("Log in")))
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (_formkey.currentState!.validate()) {
                                if (!isLoading) {
                                  login(emailcontroler.text.toString(),
                                      passwordcontroler.text.toString());
                                }
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: bluecolor,
                                  borderRadius: BorderRadius.circular(5)),
                              height: 40,
                              width: MediaQuery.of(context).size.width / 7,
                              child: Center(
                                  child: isLoading
                                      ? CircularProgressIndicator(
                                          color: Colors.white,
                                        )
                                      : Text(
                                          "Log in",
                                          style: TextStyle(color: Colors.white),
                                        )),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    isForgetPasswordClicked = true;
                                  });
                                  // resetPassword(emailcontroler.text.toString());
                                },
                                child: Text(
                                  "Forget Password",
                                  style:
                                      TextStyle(color: bluecolor, fontSize: 13),
                                )),
                          )
                        ],
                      )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            // color: Colors.grey,
            child: Image.asset(
              // "image/spark.png",
              "image/solarpanelpic.jpg",
              fit: BoxFit.cover,
            ),
            width: MediaQuery.of(context).size.width / 1.5,
          )
        ],
      ),
    );
  }
}
