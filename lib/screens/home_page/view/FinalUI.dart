import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/homepage_provider.dart';

class FinalUI extends StatefulWidget {
  const FinalUI({Key? key}) : super(key: key);

  @override
  State<FinalUI> createState() => _FinalUIState();
}

class _FinalUIState extends State<FinalUI> {
  Providerhome? pro;

  int? ind;

  @override
  Widget build(BuildContext context) {
    ind = ModalRoute.of(context)!.settings.arguments as int;
    pro = Provider.of<Providerhome>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: PageView.builder(
          itemCount: pro!.imagelist.length,
          controller: PageController(initialPage: ind!),
          itemBuilder: (context, index) {
            return Expanded(
              child: Center(
                child: Container(
                  height: 500,
                  width: 350,
                  color: Colors.black,
                  child: Image.asset("${pro!.imagelist[index]}",fit: BoxFit.fill,),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
