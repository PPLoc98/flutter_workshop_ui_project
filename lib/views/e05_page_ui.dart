import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e06_page_ui.dart';

class E05PageUi extends StatefulWidget {
  const E05PageUi({super.key});

  @override
  State<E05PageUi> createState() => _E05PageUiState();
}

class _E05PageUiState extends State<E05PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              // ปุ้มย้นอกลับ+ข้อความ
              SizedBox(
                height: 50,
                child: Stack(
                  children: [                    
                    Center(
                      child: Text(
                        'OTP Verification',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // ปุ่มย้อนกลับชิดซ้าย
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: InkWell(
                          onTap: () => Navigator.pop(context),
                          borderRadius: BorderRadius.circular(18),
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 243, 226, 148)
                                  .withValues(alpha: 0.5),
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
              ),
              SizedBox(height: 40),

              //img
              Image.asset('assets/images/img_orange3.png', width: 500),

              SizedBox(height: 10),
              // Enter OTP
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter OTP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'An 4 digit code has been sent to your',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'email',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(height: 15),

              // ช่องใส่เลข Verify
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: 75,
                    height: 75,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number, // แสดงคีย์บอร์ดตัวเลข
                      maxLength: 1, // รับแค่ช่องละ 1 ตัว
                      style: const TextStyle(fontSize: 22, color: Colors.black),
                      decoration: InputDecoration(
                        counterText: "", // ซ่อนตัวเลขที่บอกว่าพิมพ์ไปกี่ตัว
                        filled: true,
                        fillColor: Colors.grey[100],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 229, 183, 58), width: 2),
                        ),
                      ),
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          // พิมพ์แล้วเด้งไปช่องขวา
                          FocusScope.of(context).nextFocus();
                        } else {
                          // ลบแล้วเด้งกลับช่องซ้าย
                          FocusScope.of(context).previousFocus();
                        }
                      },
                    ),
                  );
                }),
              ),
              SizedBox(height: 25),

              // You should
              Text.rich(
                TextSpan(
                  text: 'You should recieve the OTP in  ',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(
                      text: '30 Second',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFF7941D),
                        //decoration: TextDecoration.underline,
                        decorationColor: Color(0xFFF7941D),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25),
              // ปุ่ม Verify
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => (E06PageUi()),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 60),
                  backgroundColor: Color(0xFFF7941D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Verify',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
