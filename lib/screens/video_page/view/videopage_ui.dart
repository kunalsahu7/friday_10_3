import 'package:bottom_provider/screens/video_page/provider/video_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class videoui extends StatefulWidget {
  const videoui({Key? key}) : super(key: key);

  @override
  State<videoui> createState() => _videouiState();
}

class _videouiState extends State<videoui> {
  Providertwo? videopro;
  @override
  Widget build(BuildContext context) {
    videopro = Provider.of<Providertwo>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Video"),
          centerTitle: true,
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.black,
              ),
              child: Image.asset("${videopro!.imagelist[index]}",fit: BoxFit.cover,),
            ),
          );
        },itemCount: 15,)
      ),
    );
  }
}
