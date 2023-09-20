import 'package:flutter/material.dart';

class AddWallet extends StatefulWidget {
  const AddWallet({super.key});

  @override
  State<AddWallet> createState() => _AddWalletState();
}

class _AddWalletState extends State<AddWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "المحفظة",
          style: TextStyle(color: Color(0xFF18324B)),
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_rounded,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.add_circle_outlined,
                  color: Color(0xFF16324D),
                  size: 40.0,
                ),
                SizedBox(
                  width: 14.0,
                ),
                Text(
                  'حدد قيمة المبلغ الذي تريد إضافته للمحفظة',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF16324D),
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ],
            ),
            Container(
              width: 350,
              height: 42,
              decoration: ShapeDecoration(
                color: Color(0xFFF5F5FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Color(0xFF768CA1),
                  ),
                  hintText: 'القيمة',
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print("object");
              },
              child: Container(
                width: 375,
                height: 45,
                decoration: ShapeDecoration(
                  color: Color(0xFF007DFB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'إتمام الأضافة   ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
