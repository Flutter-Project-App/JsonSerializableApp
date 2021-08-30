import 'package:flutter/material.dart';
import 'package:network_flutter/models/person_model.dart';

class PersonItemWidget extends StatefulWidget {
  final PersonModel personModel;
  final int index;

  PersonItemWidget(this.personModel, this.index);

  @override
  _PersonItemWidgetState createState() => _PersonItemWidgetState();
}

class _PersonItemWidgetState extends State<PersonItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Container(
            child: Card(
                color: Colors.black.withOpacity(0.5),
                child: ListTile(
                  title: Text(widget.personModel.email.toString()),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(widget.personModel.picture!.thumbnail),
                  ),
                  subtitle: Text('Phone: ${widget.personModel.phone} ${widget.index+1}'),
                )),
          ))
        ],
      ),
    );
  }
}
