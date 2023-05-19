import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git_commands/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class DetailScreen extends StatefulWidget {

  final int listIndex;
  final int value;

  const DetailScreen({Key? key,required this.listIndex,required this.value}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState(listIndex,value);


}

class _DetailScreenState extends State<DetailScreen> {

  final int listIndex;
  final int value;

  _DetailScreenState(this.listIndex,this.value);


  final List<List<dynamic>> data_1_1 = [
    ['Item 1', 'Description 1', 'Information 1'],
  ];


  final List<List<dynamic>> data_1_2 = [
    ['Item 2', 'Description 2', 'Information 2'],
  ];

  @override
  Widget build(BuildContext context) {
    if(widget.listIndex == 0 && widget.value == 1) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_1[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(row[0],
                            style: GoogleFonts.openSans(textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,))
                        ),
                      ), // Display item name
                      trailing: IconButton(
                        icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                        onPressed: () {
                          _copyToClipboard(
                              row[0]); // Copy the description to clipboard
                        },
                      ),
                    ),
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(row[1],
                            style: GoogleFonts.openSans(textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,))
                        ),
                      ), // Display item name
                      trailing: IconButton(
                        icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                        onPressed: () {
                          _copyToClipboard(
                              row[1]); // Copy the description to clipboard
                        },
                      ),
                    ),
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(row[2],
                            style: GoogleFonts.openSans(textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,))
                        ),
                      ), // Display item name
                      trailing: IconButton(
                        icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                        onPressed: () {
                          _copyToClipboard(
                              row[2]); // Copy the description to clipboard
                        },
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 1 && widget.value == 1) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_2[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(row[0],
                            style: GoogleFonts.openSans(textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,))
                        ),
                      ), // Display item name
                      trailing: IconButton(
                        icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                        onPressed: () {
                          _copyToClipboard(
                              row[0]); // Copy the description to clipboard
                        },
                      ),
                    ),
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(row[1],
                            style: GoogleFonts.openSans(textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,))
                        ),
                      ), // Display item name
                      trailing: IconButton(
                        icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                        onPressed: () {
                          _copyToClipboard(
                              row[1]); // Copy the description to clipboard
                        },
                      ),
                    ),
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(row[2],
                            style: GoogleFonts.openSans(textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,))
                        ),
                      ), // Display item name
                      trailing: IconButton(
                        icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                        onPressed: () {
                          _copyToClipboard(
                              row[2]); // Copy the description to clipboard
                        },
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
      );
    }
    else
    {
      return Container();
    }
  }

  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Git Command Copied to clipboard')),
    );
  }

}
