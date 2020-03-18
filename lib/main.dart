import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    '- In my opinion MS is a lot better at making money than it is at making good operating systems',
    '- A computer is like air conditioning, it becomes useless when you open Windows',
    '- Talk is cheap, show me the code',
    '- Software is like sex: it\'s better when it\'s free',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote) => Text(
            quote,
            style: TextStyle(
              fontSize: 18.0,
              letterSpacing: 1.0,
            ),
          ),
          ).toList(),
        ),
      ),
    );
  }
}
