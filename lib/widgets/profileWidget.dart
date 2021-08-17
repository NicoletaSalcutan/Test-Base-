import 'package:base_date_test/models/profile.dart';
import 'package:base_date_test/state/AppState.dart';
import 'package:base_date_test/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileWidget extends StatelessWidget{
  final String nume;

  final String prenume;

  final String functie;
  final onDelete;

   ProfileWidget({Key? key, this.nume = "", this.prenume = "", this.functie = "", this.onDelete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 300,
            child: Card(
              shadowColor: Colors.teal,
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(nume),
                    Text(prenume),
                    Text(functie),
                    SizedBox(height: 8.0,),
                    Container(
                      height: 50,
                      child: OutlinedButton(
                          onPressed: onDelete,
                          child: Icon(Icons.delete_outline,color: Colors.teal,),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: AppColor.primary01.withOpacity(0.7),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }

}