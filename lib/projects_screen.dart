import 'package:flutter/material.dart';

class ProjectsScreen extends StatefulWidget {
  @override
  _ProjectsScreenState createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // الجزء العلوي: بطاقة ملف الإنجاز (Portfolio)
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'ملف الإنجاز',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                  ),
                  SizedBox(height: 4),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '0 مشروع  •  بورتفوليو جاهز للتقديم',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 60),

            // الجزء الأوسط: أيقونة المجلد الفارغ والنصوص باللون البنفسجي
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Color(0xFFF3E5F5), // خلفية بنفسجية فاتحة جداً متناسقة
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.folder_open_outlined,
                      size: 60,
                      color: Color(0xFF6A1B9A), // اللون البنفسجي الأساسي للمشروع
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'لا مشاريع بعد',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'أضف مشاريعك من كل مادة، وابنِ بورتفوليو تقدمه للشركات فور تخرجك',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade600, fontSize: 13, height: 1.5),
                    ),
                  ),
                  SizedBox(height: 32),
                  
                  // تم استبدال اللون وتصحيح المعامل بالكامل هنا
                  ElevatedButton.icon(
                    onPressed: () {
                      // كود فتح نافذة الإضافة وربط الـ GitHub لاحقاً
                    },
                    icon: Icon(Icons.add, color: Colors.white),
                    label: Text(
                      'أضف أول مشروع',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF6A1B9A), // اللون البنفسجي
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      
      // الزر العائم الخارجي المتناسق باللون البنفسجي
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // وظيفة إضافة مشروع
        },
        backgroundColor: Color(0xFF6A1B9A), // بنفسجي مية بالمية
        child: Icon(Icons.add, color: Colors.white, size: 28),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}