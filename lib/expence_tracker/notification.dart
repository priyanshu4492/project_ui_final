import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9E8EB),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 🔥 Header
              Text(
                "Notifications",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 15),

              // 🔥 Notification List
              Expanded(
                child: ListView(
                  children: [

                    notificationItem(
                      icon: Icons.warning,
                      title: "High Spending Alert",
                      subtitle: "You spent ₹2000 today",
                      time: "2 min ago",
                      color: Colors.red,
                    ),

                    notificationItem(
                      icon: Icons.check_circle,
                      title: "Payment Successful",
                      subtitle: "₹500 paid to Netflix",
                      time: "10 min ago",
                      color: Colors.green,
                    ),

                    notificationItem(
                      icon: Icons.lightbulb,
                      title: "AI Suggestion",
                      subtitle: "Try reducing food expenses",
                      time: "1 hour ago",
                      color: Colors.orange,
                    ),

                    notificationItem(
                      icon: Icons.account_balance_wallet,
                      title: "Salary Credited",
                      subtitle: "₹25,000 added to account",
                      time: "Today",
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🔥 Reusable Notification Card
  Widget notificationItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required String time,
    required Color color,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [

          // Icon
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color),
          ),

          SizedBox(width: 15),

          // Text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),

          // Time
          Text(
            time,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}