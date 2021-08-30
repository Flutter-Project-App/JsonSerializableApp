import 'package:flutter/material.dart';
import 'package:network_flutter/models/person_model.dart';
import 'package:network_flutter/services/person_network_service.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PersonNetworkService personService = PersonNetworkService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hiiii'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80"),
            fit: BoxFit.cover
          )
        ),
        child: SafeArea(
          child: FutureBuilder(
            future: personService.fetchPerson(50),
            builder: (BuildContext context, AsyncSnapshot<List<PersonModel>> snapshot) {
              if (snapshot.hasData) {
                return Row(
                  children: <Widget>[
                    Expanded(child: Container(
                      child: Card(
                        color: Colors.black.withOpacity(0.5),
                        child: ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              var currentPerson = snapshot.data![index];
                              return ListTile(
                                title: Text(currentPerson.name.toString()),
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(currentPerson.picture!.thumbnail),
                                ),
                                subtitle: Text('Phone: ${currentPerson.phone}'),
                              );
                            }),
                      ),
                    ))
                  ],
                );
              }

              if (snapshot.hasError) {
                return Center(
                  child: Icon(Icons.error, color: Colors.red, size: 82,),
                );
              }

              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    SizedBox(height: 20.0,),
                    Text('Loading at the moment, please hold the line.')
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
