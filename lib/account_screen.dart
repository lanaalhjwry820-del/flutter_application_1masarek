import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // الجزء العلوي البنفسجي الفخم
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF6A1B9A), // اللون البنفسجي الفخم
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white24,
                        child: Icon(Icons.person, color: Colors.white, size: 40),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'اسم الطالب',
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'التخصص الأكاديمي',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 12),

            // بطاقة نسبة تقدم التخرج
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('تقدم التخرج', style: TextStyle(color: Colors.grey, fontSize: 12)),
                      Text('0%', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF6A1B9A))),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('0', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                      Text('ساعة معتمدة', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),

            // البطاقات الثلاث الأفقية
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  _buildStatCard('أدرسها', '0', Icons.school_outlined),
                  SizedBox(width: 10),
                  _buildStatCard('مشاريع', '0', Icons.folder_open_outlined),
                  SizedBox(width: 10),
                  _buildStatCard('مواد منجزة', '0', Icons.check_circle_outline),
                ],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('معلومات الحساب', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ),

            _buildInfoTile('الاسم', 'لم يُحدد بعد', Icons.person_outline),
            _buildInfoTile('البريد الإلكتروني', 'لم يُحدد بعد', Icons.mail_outline),
            _buildInfoTile('الجامعة / الكلية', 'لم تُحدد بعد', Icons.apartment),
            _buildInfoTile('السنة الدراسية', 'لم تُحدد بعد', Icons.calendar_today_outlined),
            
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String count, IconData icon) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 1))],
        ),
        child: Column(
          children: [
            Icon(icon, color: Color(0xFF6A1B9A), size: 24),
            SizedBox(height: 6),
            Text(count, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(title, style: TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(String title, String subtitle, IconData icon) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 3, offset: Offset(0, 1))],
      ),
      child: ListTile(
        leading: Icon(icon, color: Color(0xFF6A1B9A)),
        title: Text(title, style: TextStyle(color: Colors.grey, fontSize: 12)),
        subtitle: Text(subtitle, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black87)),
      ),
    );
  }
}