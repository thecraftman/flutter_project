import 'package:flutter/material.dart';
import 'package:flutter_work/viewmodels/welcome_view_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider_architecture/provider_architecture.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<WelcomeViewModel>.withConsumer(
        viewModel: WelcomeViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 6,
                      ),
                      Text(
                        'Home Control',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 30,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                          ),
                          letterSpacing: 1.0,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Welcome to home control, the smartest way to automate your appliances at home remotely.',
                          style: GoogleFonts.martelSans(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 9,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Get Started',
                              style: GoogleFonts.martel(
                                textStyle: TextStyle(color: Colors.white),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
