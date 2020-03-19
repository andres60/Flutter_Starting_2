import 'package:flutter/material.dart';
import './quote.dart';
import './quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {



  List<Quote> quotes = [
    Quote(author: 'Linus Torvalds', text: 'In my opinion MS is a lot better at making money than it is at making good operating systems'),
    Quote(author: 'Linus LOL', text: 'A computer is like air conditioning, it becomes useless when you open Windows'),
    Quote(text: 'Talk is cheap, show me the code', author: 'Linus Direct'),
    Quote(author: 'Linus Naughty', text: 'Software is like sex: it\'s better when it\'s free'),
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
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        ),
      ),
    );
  }
}
