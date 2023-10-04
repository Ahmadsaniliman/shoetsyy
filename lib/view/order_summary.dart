import 'package:flutter/material.dart';
import 'package:shoety/view/components/info_card.dart';
import 'package:shoety/view/components/order_card_details.dart';
import 'package:shoety/view/components/order_nav.dart';
import 'package:shoety/view/components/pay_detials_card.dart';
import 'package:shoety/view/components/summary_bar.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: OrderNav(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SummaryBar(),
            InfoCard(),
            OrderCardDetails(),
            PaymentDetailsCard(),
          ],
        ),
      ),
    );
  }
}



