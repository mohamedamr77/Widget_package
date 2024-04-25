import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
   CustomDropdown({super.key});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  List<String> items=[
    "Login", "Sign Up",
  ];


  String selectedItem="Item 132";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: SizedBox(
          width: 200,
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 3,color: Colors.blue)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 3,color: Colors.red)
              ),
              hintText: "تسجيل الدخول",
            ),
            items: items.map((item) =>
                DropdownMenuItem<String>(
                value: item,
                child: Text(item,style: TextStyle(fontSize: 13,color: Colors.black),),
            )).toList(),
                onChanged: (item) =>setState(() {
              selectedItem=item!;
              if(item=="Login"){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CustomPageRoute(),));
              }else if(item=="Sign Up"){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CustomPageRoute(),));
              };
            }),
          ),
        ),
      ) ,
    );
  }
}

class CustomPageRoute extends StatelessWidget{
  const CustomPageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Image(
        image: AssetImage("assets/images/beard.jpg"),
      ),
    );
  }

}