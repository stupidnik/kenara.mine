import 'package:flutter/material.dart';

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
                'گوشه‌ی خودت رو پیدا کن:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Vazir',
                ),
              ),
              SizedBox(height: 16),
              CustomDropdown(label: 'کجا دوست داری بری؟'),
              SizedBox(height: 8),
              CustomDropdown(label: 'به چه قصدی می‌خوای بری؟'),
              SizedBox(height: 8),
              CustomDropdown(label: 'کدوم محله باشه بهتره؟'),
              SizedBox(height: 8),
              CustomDropdown(label: 'شرط خاصی داری؟'),
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

class CustomDropdown extends StatelessWidget {
  final String label;

  CustomDropdown({required this.label});

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
          label,
          style: TextStyle(color: Colors.white, fontFamily: 'Vazir'),
        ),
        items: [],
        onChanged: (value) {},
      ),
    );
  }
}