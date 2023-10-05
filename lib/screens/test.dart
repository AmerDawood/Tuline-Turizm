import 'package:flutter/material.dart';
import 'package:tuline_turizm/api/controller/home_api_controller.dart';
import 'package:tuline_turizm/models/home.dart';

class Test3 extends StatefulWidget {
  const Test3({Key? key}) : super(key: key);

  @override
  State<Test3> createState() => _Test3State();
}

class _Test3State extends State<Test3> {


  int? areaId;


  List<Home?> _home = <Home?>[];
  late Future<Home?> _future;



  @override
  void initState() {
    super.initState();
    _future = HomeApiController().getHomeData(null);

    _future.then((home) {
      if (home != null) {
        print("Home Data: $home");

      } else {
        print("Home Data is null");
      }
    }).catchError((error) {
      print("Error fetching Home Data: $error");
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service List'),
      ),
      body: FutureBuilder<Home?>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // Display a loading indicator while fetching data
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (!snapshot.hasData || snapshot.data == null) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('No data available'),
            ); // Handle no data case
          } else {
            final homeData = snapshot.data!;
            final services = homeData.services;
            final offers = homeData.offers;
            final sliders = homeData.sliders;

            return Column(
              children: [
              SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: services!.length,
                itemBuilder: (context, index) {
                  final serviceName = services[index].name ?? 'No Name';
                  return ListTile(
                    title: Text(serviceName),
                    leading: Image.network('https://tulineapp.almirsystem.com/uploads/services/${services[index].image}'),
                  );
                },
              ),
            ),
          SizedBox(
          height: 200,
          child: ListView.builder(
          itemCount: offers!.length,
          itemBuilder: (context, index) {
          final offerName = offers[index].name ?? 'No Name';
          return ListTile(
          title: Text(offerName),
          );
          },
          ),
          ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: sliders!.length,
                    itemBuilder: (context, index) {
                      final sliderName = sliders[index].name ?? 'No Name';
                      return ListTile(
                        title: Text(sliderName),
                      );
                    },
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    _showNumberChangeDialog(context);
                  },
                  child: Text('Change Area ID'),
                ),

              ],
            );
          }
        },
      ),
    );

  }
  void _showNumberChangeDialog(BuildContext context) async {
    final newAreaId = await showDialog<int>(
      context: context,
      builder: (context) {
        return NumberChangeDialog(
          initialValue: areaId,
          onAreaIdChanged: (newId) {
            // Update the areaId when the callback is called
            setState(() {
              areaId = newId;
            });
          },
        );
      },
    );

    if (newAreaId != null) {
      // Handle the new areaId here if needed
      print('New areaId: $newAreaId');

      // Reload the data with the updated areaId
      setState(() {
        _future = HomeApiController().getHomeData(areaId);
      });
    }
  }



}
class NumberChangeDialog extends StatefulWidget {
  final int? initialValue;
  final void Function(int) onAreaIdChanged;

  NumberChangeDialog({this.initialValue, required this.onAreaIdChanged});

  @override
  _NumberChangeDialogState createState() => _NumberChangeDialogState();
}

class _NumberChangeDialogState extends State<NumberChangeDialog> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue?.toString());
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Change Area ID'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'New Area ID'),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('Save'),
          onPressed: () {
            final newAreaId = int.tryParse(_controller.text);

            if (newAreaId != null) {
              widget.onAreaIdChanged(newAreaId); // Call the callback to update areaId
              Navigator.of(context).pop(newAreaId);
            } else {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Invalid Input'),
                    content: Text('Please enter a valid number for Area ID.'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }
          },
        ),
      ],
    );
  }
}
