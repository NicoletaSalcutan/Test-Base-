import 'package:base_date_test/state/AppState.dart';
import 'package:base_date_test/theme/theme_data.dart';
import 'package:base_date_test/widgets/profileWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppThemeData.lightThemeData.copyWith(),
        home: MyHomePage(title: 'Base'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _numeController = TextEditingController();
  TextEditingController _prenumeController = TextEditingController();
  TextEditingController _functieController = TextEditingController();
  @override
  void initState() {
    AppState appState = Provider.of<AppState>(context, listen: false);
    appState.getProfiles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary2,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 300.0,
              child: Card(
                shadowColor: Colors.teal,
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                     TextField(controller: _numeController,decoration: InputDecoration(enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                         hintText: "Nume",labelStyle:  TextStyle(
                         color:  Colors.teal
                     )),),
                     TextField(controller: _prenumeController,decoration: InputDecoration(hintText: "Prenume"),),
                     TextField(controller: _functieController,decoration: InputDecoration(hintText: "Functie"),),
                      SizedBox(height: 16.0,),
                      OutlinedButton(
                        onPressed: (){
                          AppState appState = Provider.of<AppState>(context, listen: false);
                          Profile profile = Profile();
                          profile.nume = _numeController.text;
                          profile.prenume = _prenumeController.text;
                          profile.functie = _functieController.text;
                          appState.createProfile(profile);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.save),
                            SizedBox(width: 16.0,),
                            Text("Create Profile"),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.teal,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Consumer(
              builder: (context, AppState state, child) {
                List<Profile>? profiles = state.profiles;
                if (profiles == null) return Center(child: CircularProgressIndicator());
                return ListView.builder(
                    itemCount: profiles.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ProfileWidget(
                      key: ObjectKey(profiles[index]),
                        nume: profiles[index].nume,
                        prenume: profiles[index].prenume,
                        functie: profiles[index].functie,
                    onDelete: () {
                      state.deleteProfile(profiles[index]);
                    },
                    ),
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}
