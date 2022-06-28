import 'package:flutter/material.dart';

class ConnectWithRedfinAgent extends StatelessWidget {
  const ConnectWithRedfinAgent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("test")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: const [
                Text(
                  "Find Local Redfin",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Real Estate Agents",
                  style: TextStyle(fontSize: 20),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'City, ZIP, Agent',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(1.0),
                      ),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1.0)),
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}