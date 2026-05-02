import 'package:flutter/material.dart';

class MoneyPage extends StatelessWidget {
  const MoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9E8EB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // 🔥 Top Balance Card
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Balance",
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "\$12000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),

              // 🔥 Credit & Expense Row
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Income"),
                          SizedBox(height: 10),
                          Text(
                            "\$3000",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Expense"),
                          SizedBox(height: 10),
                          Text(
                            "\$1500",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),

              // 🔥 Transaction List
              Expanded(
                child: ListView(
                  children: [
                    transactionItem(
                      icon: Icons.shopping_bag,
                      title: "Shopping",
                      amount: "-\$200",
                      color: Colors.red,
                    ),

                    transactionItem(
                      icon: Icons.fastfood,
                      title: "Food",
                      amount: "-\$80",
                      color: Colors.red,
                    ),

                    transactionItem(
                      icon: Icons.attach_money,
                      title: "Salary",
                      amount: "+\$2000",
                      color: Colors.green,
                    ),

                    transactionItem(
                      icon: Icons.directions_car,
                      title: "Transport",
                      amount: "-\$50",
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Icon(Icons.add,color: Colors.white,size: 30,),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget transactionItem({
    required IconData icon,
    required String title,
    required String amount,
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
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: Icon(icon),
          ),

          SizedBox(width: 15),

          // Title
          Expanded(child: Text(title, style: TextStyle(fontSize: 16))),

          // Amount
          Text(
            amount,
            style: TextStyle(fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }
}
