import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e01_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(FlutterWorkShopUI());
}

class FlutterWorkShopUI extends StatefulWidget {
  const FlutterWorkShopUI({super.key});

  @override
  State<FlutterWorkShopUI> createState() => _FlutterWorkShopUIState();
}

class _FlutterWorkShopUIState extends State<FlutterWorkShopUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //คำสั่งปิดแถบ debug banner
      debugShowCheckedModeBanner: false,
      //กำหนดเรียกใช้งานหน้าจอหลักของแอปพลิเคชัน
      home: E01PageUi(),
      //กำหนด theme ของแอปพลิเคชัน โดยเฉพาะ ฟอนต์หลักแอป
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(),
      ),
    );
  }
}