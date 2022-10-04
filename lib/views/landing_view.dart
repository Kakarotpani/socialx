import 'package:flutter/material.dart';
import 'package:socialx/views/login_view.dart';
import 'package:socialx/views/register_view.dart';

class LandingView extends StatefulWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {

  int index = 0;
  double diductHeight = AppBar().preferredSize.height+24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: const [
            Text('Social',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 1.5
              ),
            ),
            SizedBox(width: 2),
            Text('X',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30
              ),
            )
          ],
        )
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey,
          height: MediaQuery.of(context).size.height-diductHeight,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/14,
                width: MediaQuery.of(context).size.width-4,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24)
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.red, spreadRadius: 2.0)
                  ]
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height/14,
                        decoration: BoxDecoration(
                          color: index == 0
                          ?Colors.red
                          :Colors.white,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24)
                          ),
                        ),
                        child: InkWell(
                          onTap: (){
                            if(index != 0){
                              setState(() {
                                index = 0;
                              });
                            }
                          },
                          child: const Text('LOGIN',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey,
                              letterSpacing: 1.5
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height/14,
                        decoration: BoxDecoration(
                          color: index == 1
                          ?Colors.red
                          :Colors.white,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24)
                          ),
                        ),
                        child: InkWell(
                          onTap: (){
                            if(index == 0){
                              setState(() {
                                index = 1;
                              });
                            }
                          },
                          child: const Text('SIGN UP',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey,
                              letterSpacing: 1.5
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Container(
                height: MediaQuery.of(context).size.height/1.38,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                  child: index == 0
                  ? const LoginView()
                  : const RegisterView(),
                ),
              ),
              const Spacer(),
              Container(
                height: MediaQuery.of(context).size.height/14,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  ),
                ),
                child: Center(
                  child: Text(
                    index == 0
                    ? 'LOGIN'
                    : 'REGISTER',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5
                    ),
                  ),
                )
              ),
            ],
          )
        ),
      ),
    );
  }
}