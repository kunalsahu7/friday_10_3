import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home_page/provider/homepage_provider.dart';

class pick extends StatefulWidget {
  const pick({Key? key}) : super(key: key);

  @override
  State<pick> createState() => _pickState();
}

class _pickState extends State<pick> {
  Providerhome? pro;

  @override
  Widget build(BuildContext context) {
    pro = Provider.of<Providerhome>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Gallery"),
          centerTitle: true,
        ),
        body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'profile', arguments: index);
                },
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                  child: Image.asset(
                    "${pro!.imagelist[index]}",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            );
          },
          itemCount: pro!.imagelist.length,
        ),
      ),
    );
  }
}
