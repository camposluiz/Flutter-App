import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/message.dart';

class MessageList extends StatefulWidget {
  final String title;

  const MessageList({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  Dio _dio = Dio();
  List<Message> messages = [];

  Future loadMessageList() async {
    final response = await _dio.get("http://172.25.160.1:3000/entidades");
    List collection = response.data;
    List<Message> _messages =
        collection.map((json) => Message.fromJson(json)).toList();

    setState(() {
      messages = _messages;
    });
  }

  @override
  void initState() {
    loadMessageList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: myListview(messages));
  }
}

myListview(List<Message> messages) {
  return ListView.separated(
      itemCount: messages.length,
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) {
        var message = messages[index];
        return ListTile(
          title: Text(message.title),
          subtitle: Text(
            message.nome,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          isThreeLine: true,
          leading: CircleAvatar(
            child: Text('LA'),
          ),
        );
      });
}
