import 'package:flutter/material.dart';
import 'package:gojekui/theme.dart';

class HomePage extends StatelessWidget {
const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: green1, borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(child: Text('Beranda', style: semibold14.copyWith(color: green1),),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100)
              ),),

              ...['Promo', 'Pesanan', 'Chat'].map((title) => 
              Flexible(
                fit: FlexFit.loose,
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  child: Center(child: Text(title, style: semibold14.copyWith(color: Colors.white),)),
                ),
              ))
            ],
          ),
        ),

      ),
    );
  }
}