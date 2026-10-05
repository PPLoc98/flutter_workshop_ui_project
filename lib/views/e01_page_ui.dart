import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e02_page_ui.dart';

class E01PageUi extends StatelessWidget {
  const E01PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(children: [
          Image.asset('assets/images/img_orange1.png', width: 350),
          // เงาใต้รูป (เพิ่มตรงนี้)
          Container(
            width: 180,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(140, 16)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 20,
                  spreadRadius: 2,
                ),
              ],
            ),
          ),
          SizedBox(height: 30), // เพิ่มระยะห่างระหว่างเงาและข้อความ
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // BERRY JUICE
              Text(
                'BERRY JUICE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30), // เพิ่มระยะห่างระหว่างข้อความ
              // A Moment
              Text(
                'A Moments of healthy sip',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              // The beat vitamin for your healthy
              Text(
                'The beat vitamin for your health',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 100),
              // ปุ่ม Login (ElevatedButton)
              SizedBox(
                width: 350,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => E02PageUi()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF7941D),
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Stack( // ใช้ Stack เพื่อจัดวางข้อความและไอคอน
                    children: [
                      // ข้อความชิดซ้าย
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 22),
                          child: Text(
                            'Explore Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      // ลูกศรชิดขวา
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.white,
                            size: 70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          )
        ])));
  }
}
