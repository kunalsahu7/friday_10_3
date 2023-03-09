import 'package:bottom_provider/screens/home_page/provider/homepage_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Providerhome? pro;
  @override
  Widget build(BuildContext context) {
    pro = Provider.of<Providerhome>(context,listen: false);
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
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle
                ),
                child: Image.asset("${pro!.imagelist[index]}",fit: BoxFit.fill,),
              ),
            );
          },itemCount: 15,
        ),
      ),
    );
  }
}
