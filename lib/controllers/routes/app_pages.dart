import 'package:get/get.dart';
import 'package:tutorial_app/views/Recharge&bills/creditcard_payment.dart';
import 'package:tutorial_app/views/Recharge&bills/recharge.dart';
import 'package:tutorial_app/views/navigationbar/homepage.dart';
import 'package:tutorial_app/views/navigationbar/insurancepage.dart';
import 'package:tutorial_app/views/navigationbar/loanpage.dart';
import 'package:tutorial_app/views/navigationbar/wealthpage.dart';
//import '../pages/home_page.dart';
import '../../views/Recharge&bills/loan_repayment.dart';
import '../../views/Recharge&bills/rent.dart';
import '../../views/Transfermoney/balance_account.dart';
import '../../views/Transfermoney/bank_upiid.dart';
import '../../views/Transfermoney/self_account.dart';
import '../../views/Transfermoney/userpage.dart';
import '../../views/appbar/qr_code.dart';
import '../../views/navigationbar/historypage.dart';

class AppPages {
  static const initial = '/';

  static final routes = [
   // GetPage(name: '/', page: () => HomePage()),
    GetPage(name: '/user', page: () => const UserPage()),
    GetPage(name: '/bank', page: () => const BankPage()),
    GetPage(name: '/selfAccount', page: () => const SelfAccountPage()),
    GetPage(name: '/checkBalance', page: () => const CheckBalancePage()),
    GetPage(name: '/loan', page:() =>const LoanRepaymentPage()),
    GetPage(name:'/credit', page:() =>const CreditCardPage()),
    GetPage(name: '/recharge', page: () =>const RechargePage() ),
    GetPage(name: '/rent', page: () => const RentPage()),
    GetPage(name: '/history', page: () => const HistoryPage()),
    GetPage(name: '/home', page: () => const HomePage()),
    GetPage(name: '/insurance', page: () => const InsurancePage()),
    GetPage(name: '/navloan', page: () => const LoanPage()),
    GetPage(name: '/wealth', page: () => const WealthPage()),
    GetPage(name: '/qrcode', page: () => const QrCodePage()),
  ];
}
