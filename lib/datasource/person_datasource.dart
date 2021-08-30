import 'package:fl_paging/fl_paging.dart' as paging;
import 'package:network_flutter/services/person_network_service.dart';
import 'package:tuple/tuple.dart';
import 'package:network_flutter/models/person_model.dart';

class PersonListViewDataSource extends paging.PageKeyedDataSource<int, PersonModel> {
  
  @override
  Future<Tuple2<List<PersonModel>, int>> loadInitial(int pageSize) async {
    // PersonModel personModel = await PersonNetworkService().fetchPerson(20);
    return Tuple2(await PersonNetworkService().fetchPerson(20), 2);
  }

  @override
  Future<Tuple2<List<PersonModel>, int>> loadPageAfter(int params, int pageSize) async {
    return Tuple2(await PersonNetworkService().fetchPerson(params*10), params + 1);
  }

}