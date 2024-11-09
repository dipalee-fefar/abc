import 'package:flutter/material.dart';

class CRUDScreen extends StatefulWidget {
  @override
  _CRUDScreenState createState() => _CRUDScreenState();
}

class _CRUDScreenState extends State<CRUDScreen> {
  List<Map<String, dynamic>> _data = [];
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  // Create a new item
  void _addItem(String name, String age) {
    setState(() {
      _data.add({"name": name, "age": age});
    });
    _clearInputs();
  }

  // Update an item
  void _updateItem(int index, String name, String age) {
    setState(() {
      _data[index] = {"name": name, "age": age};
    });
    _clearInputs();
  }

  // Delete an item
  void _deleteItem(int index) {
    setState(() {
      _data.removeAt(index);
    });
  }

  // Clear input fields
  void _clearInputs() {
    _nameController.clear();
    _ageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD Operations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input fields
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            // Add / Update button
            ElevatedButton(
              onPressed: () {
                if (_nameController.text.isNotEmpty && _ageController.text.isNotEmpty) {
                  _addItem(_nameController.text, _ageController.text);
                }
              },
              child: Text('Add Item'),
            ),
            SizedBox(height: 20),
            // Display the list of items
            Expanded(
              child: ListView.builder(
                itemCount: _data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Name: ${_data[index]["name"]}'),
                    subtitle: Text('Age: ${_data[index]["age"]}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            // Populate the fields with the selected data for editing
                            _nameController.text = _data[index]["name"];
                            _ageController.text = _data[index]["age"];
                            _updateItem(index, _nameController.text, _ageController.text);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            _deleteItem(index);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
