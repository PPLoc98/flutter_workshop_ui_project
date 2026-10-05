import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e02_page_ui.dart';

class E03PageUi extends StatefulWidget {
  const E03PageUi({super.key});

  @override
  State<E03PageUi> createState() => _E03PageUiState();
}

class _E03PageUiState extends State<E03PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ===== ส่วนหัว =====
            Stack(
              children: [
                ClipPath(
                  clipper: HeaderClipper(),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    color: Color(0xFFE5C63A),
                    child: Image.asset(
                      'assets/images/img_orange2.png', // ใส่ชื่อรูปของคุณ
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // ===== ส่วนฟอร์ม =====
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Text(
                    'Register',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Create your new account',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: 30),

                  // ช่องชื่อผู้ใช้
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color.fromARGB(255, 229, 183, 58)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 229, 183, 58), width: 2),
                        ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // ช่องอีเมล
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'E-mail',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color.fromARGB(255, 229, 183, 58)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 229, 183, 58), width: 2),
                        ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // ช่องเบอร์โทรศัพท์
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color.fromARGB(255, 229, 183, 58)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 229, 183, 58), width: 2),
                        ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // ช่องรหัสผ่าน
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color.fromARGB(255, 229, 183, 58)),
                      ),
                       focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 229, 183, 58), width: 2),
                        ),
                    ),
                  ),

                  SizedBox(height: 20),
                  //Text.rich สำหรับแสดงข้อความที่มีหลายสไตล์
                  Text.rich(
                    TextSpan(
                      text: 'By signing up you agree to our ',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Terms & Conditions',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFF7941D),                            
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFFF7941D),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'and ',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFF7941D),                            
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFFF7941D),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 20),

                  // ปุ่ม Sign Up
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF7941D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // เส้น OR
                  Row(
                    children: [
                      Expanded(child: Divider(color: Color(0xFFF7941D))),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text('OR', style: TextStyle(fontSize: 30)),
                      ),
                      Expanded(child: Divider(color: Color(0xFFF7941D))),
                    ],
                  ),
                  SizedBox(height: 25),

                  // ไอคอน social
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.scale(
                          scale: 1.4,
                          child: Image.asset('assets/images/img_g.png',
                              width: 50)),
                      SizedBox(width: 40),
                      Transform.scale(
                          scale: 1.4,
                          child: Image.asset('assets/images/img_f.png',
                              width: 50)),
                      SizedBox(width: 40),
                      Transform.scale(
                          scale: 1.4,
                          child: Image.asset('assets/images/img_a.png',
                              width: 50)),
                    ],
                  ),
                  SizedBox(height: 25),

                  // Create Account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an Account?",
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => E02PageUi()),
                          );
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              color: Color(0xFFF7941D),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ตัดขอบล่างของส่วนหัวให้เป็นทรงโค้ง
class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height); // ลงมุมล่างซ้าย
    path.quadraticBezierTo(
      size.width * 0.55, size.height * 0.95, // จุดดึงโค้ง
      size.width, size.height * 0.5, // ปลายโค้งฝั่งขวา (สูงกว่าฝั่งซ้าย)
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
