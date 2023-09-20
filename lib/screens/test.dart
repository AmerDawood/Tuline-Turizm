import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  TextEditingController _textController = TextEditingController();
  bool _isSending = false;

  void toggleSendButton() {
    setState(() {
      _isSending = _textController.text.isNotEmpty;
    });
  }

  void sendMessage() {
    // Perform your send message action here.
    // For example, you can print the text to the console.
    print(_textController.text);
    // Clear the text field and reset the button to microphone.
    _textController.clear();
    toggleSendButton();
  }

  @override
  void initState() {
    super.initState();
    _textController.addListener(toggleSendButton);
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field with Icon'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      if (_isSending) {
                        sendMessage();
                      } else {
                        // Perform voice recording or other action here.
                      }
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: _isSending
                            ? Icon(Icons.send, color: Colors.white)
                            : Icon(Icons.mic, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
