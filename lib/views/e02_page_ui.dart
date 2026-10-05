import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e03_page_ui.dart';
import 'package:flutter_workshop_ui_project/views/e04_page_ui.dart';

class E02PageUi extends StatefulWidget {
  const E02PageUi({super.key});

  @override
  State<E02PageUi> createState() => _E02PageUiState();
}

class _E02PageUiState extends State<E02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ===== ส่วนหัว + ปุ่มย้อนกลับ =====
            Stack(
              children: [
                ClipPath(
                  clipper: HeaderClipper(),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    color: Color(0xFFE5C63A),
                    child: Image.asset(
                      'assets/images/img_orange2.png', // ใส่ชื่อรูปของคุณ
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(left: 12, top: 8),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      borderRadius: BorderRadius.circular(18),
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.5),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.chevron_left_rounded,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
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
                    'Welcome back',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Login to your account',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: 30),

                  // ช่องอีเมล
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter email or phone',
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
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility_off),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Forgot Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => E04PageUi()),
                        );
                      },
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          color: Color(0xFFF7941D),
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // ปุ่ม Log In
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
                        'Log In',
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
                        "Don't have an Account?",
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => E03PageUi()),
                          );
                        },
                        child: Text(
                          'Create Account',
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
