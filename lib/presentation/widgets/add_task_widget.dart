import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  final Function addTaskHandler;
  const AddTask({Key key, @required this.addTaskHandler}) : super(key: key);

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final TextEditingController _textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Form(
        key: _formKey,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              )),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Add Task',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat',
                      color: Colors.black54,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      hintText: 'Task Title',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter a title';
                      }
                      return null;
                    },
                    controller: _textController,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                    ),
                    child: ButtonTheme(
                      minWidth: 200,
                      height: 50,
                      child: RaisedButton(
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)),
                        color: Colors.red,
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.of(context).pop();
                            widget.addTaskHandler(_textController.text.trim());
                          }
                        },
                        child: Text(
                          'Add',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
