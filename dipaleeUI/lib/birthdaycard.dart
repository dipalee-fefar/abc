import 'package:flutter/material.dart';



class BirthdayCardForm extends StatefulWidget {
  @override
  _BirthdayCardFormState createState() => _BirthdayCardFormState();
}

class _BirthdayCardFormState extends State<BirthdayCardForm> {
  final _nameController = TextEditingController();
  final _messageController = TextEditingController();
  String _name = '';
  String _message = '';

  void _updateCard() {
    setState(() {
      _name = _nameController.text;
      _message = _messageController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a Dynamic Birthday Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Recipient\'s Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _messageController,
              decoration: InputDecoration(
                labelText: 'Custom Message',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _updateCard,
              child: Text('Generate Card'),
            ),
            SizedBox(height: 32),
            if (_name.isNotEmpty || _message.isNotEmpty)
              Expanded(
                child: BirthdayCard(name: _name, message: _message),
              ),
          ],
        ),
      ),
    );
  }
}

class BirthdayCard extends StatelessWidget {
  final String name;
  final String message;

  BirthdayCard({required this.name, required this.message});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_-MQrQImcAzFPsUWqDY3wcHOhqy6ctdVNow&usqp=CAU', // Make sure to add an image in the assets folder
              width: 500,
              height: 500,
            ),
            SizedBox(height: 16),
            Text(
              'Happy Birthday, $name!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 8),
            Text(
              message,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
