import 'package:flutter/material.dart';  
import 'package:font_awesome_flutter/font_awesome_flutter.dart';  

void main() {  
  runApp(MyApp());  
}  

class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      debugShowCheckedModeBanner: false,  
      home: Scaffold(  
        backgroundColor: Colors.black,  
        appBar: AppBar(  
          backgroundColor: Colors.black,  
          title: Text(  
            'کنارا',  
            style: TextStyle(color: Colors.white, fontFamily: 'Vazir'),  
          ),  
          centerTitle: true,  
        ),  
        body: Padding(  
          padding: const EdgeInsets.all(16.0),  
          child: Column(  
            crossAxisAlignment: CrossAxisAlignment.start,  
            children: [  
              Text(  
                'گوشه‌ی خودت رو پیدا',  
                style: TextStyle(  
                  color: Colors.white,  
                  fontSize: 24,  
                  fontFamily: 'Vazir',  
                ),  
              ),  
              SizedBox(height: 20),  
              CustomDropdown(  
                label: 'کجا دوست داری بری؟',  
                items: ['گزینه 1', 'گزینه 2', 'گزینه 3'],  
              ),  
              SizedBox(height: 16),  
              CustomDropdown(  
                label: 'به چه قصدی می‌خوای بری؟',  
                items: ['گزینه A', 'گزینه B', 'گزینه C'],  
              ),  
              SizedBox(height: 16),  
              CustomDropdown(  
                label: 'کدوم محله باشه بهتره؟',  
                items: ['گزینه X', 'گزینه Y', 'گزینه Z'],  
              ),  
              SizedBox(height: 16),  
              CustomDropdown(  
                label: 'شرط خاصی داری؟',  
                items: ['گزینه 1', 'گزینه 2', 'گزینه 3'], // Add your desired options here  
              ),  
              Spacer(),  
              SizedBox(  
                width: double.infinity,  
                child: ElevatedButton(  
                  onPressed: () {},  
                  style: ElevatedButton.styleFrom(  
                    backgroundColor: Color(0xFFFFA726), // Orange button color  
                    padding: EdgeInsets.symmetric(vertical: 16),  
                    shape: RoundedRectangleBorder(  
                      borderRadius: BorderRadius.circular(8),  
                    ),  
                  ),  
                  child: Text(  
                    'جستجو',  
                    style: TextStyle(  
                      fontSize: 16,  
                      fontWeight: FontWeight.bold,  
                      fontFamily: 'Vazir',  
                    ),  
                  ),  
                ),  
              ),  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}  

class CustomDropdown extends StatefulWidget {  
  final String label;  
  final List<String> items;  

  CustomDropdown({required this.label, required this.items});  

  @override  
  _CustomDropdownState createState() => _CustomDropdownState();  
}  

class _CustomDropdownState extends State<CustomDropdown> {  
  String? selectedValue;  

  @override  
  Widget build(BuildContext context) {  
    return Container(  
      padding: EdgeInsets.symmetric(horizontal: 16),  
      decoration: BoxDecoration(  
        color: Colors.black,  
        borderRadius: BorderRadius.circular(8),  
        border: Border.all(color: Colors.white, width: 1),  
      ),  
      child: DropdownButton<String>(  
        isExpanded: true,  
        underline: SizedBox(),  
        dropdownColor: Colors.black,  
        icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),  
        hint: Text(  
          widget.label,  
          style: TextStyle(color: Colors.white, fontFamily: 'Vazir'),  
        ),  
        value: selectedValue,  
        items: widget.items.map((item) {  
          return DropdownMenuItem<String>(  
            value: item,  
            child: Text(  
              item,  
              style: TextStyle(color: Colors.white, fontFamily: 'Vazir'),  
            ),  
          );  
        }).toList(),  
        onChanged: (value) {  
          setState(() {  
            selectedValue = value; // Update the selected value  
          });  
        },  
      ),  
    );  
  }  
}
