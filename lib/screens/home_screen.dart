import 'package:flutter/material.dart';
import 'package:network_flutter/datasource/person_datasource.dart';
import 'package:network_flutter/models/person_model.dart';
import 'package:network_flutter/screens/person_item_widget.dart';
import 'package:network_flutter/services/person_network_service.dart';
import 'package:fl_paging/fl_paging.dart' as paging;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // PersonNetworkService personService = PersonNetworkService();
  final GlobalKey key = GlobalKey();
  late PersonListViewDataSource _dataSource;

  @override
  void initState() {
    super.initState();
    _dataSource = PersonListViewDataSource();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hiiii'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80"),
                fit: BoxFit.cover)),
        child: SafeArea(
            child: paging.PagingListView<PersonModel>(
                key: key,
                pageDataSource: _dataSource,
                emptyBuilder: (context) => Center(
                      child: CircularProgressIndicator(),
                    ),
                itemBuilder: (context, data, index) {
                  return PersonItemWidget(data, index);
                })),
      ),
    );
  }
}
