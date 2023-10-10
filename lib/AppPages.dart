import 'package:customerapp/AddAddress/AddAddressScreen.dart';
import 'package:customerapp/AddAddress/AddressBinding.dart';
import 'package:customerapp/OnBoardIng/OnBoardBinding.dart';
import 'package:customerapp/OnBoardIng/OnBoardScreen.dart';
import 'package:customerapp/Otp/OtpBinding.dart';
import 'package:customerapp/Otp/OtpScreen.dart';
import 'package:customerapp/SignUp/SignUpScreen.dart';
import 'package:customerapp/SignUp/SignupBinding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'Login/Login.dart';
import 'Login/LoginBinding.dart';
part 'Routes.dart';


class AppPages
  {
  static const InitialPage=Routes.ONBOARD;

  static final routes = [
  GetPage(
  name: _Paths.ONBOARD,
  page: () => OnBoardScreen(),
  binding: OnBoardBinding(),
  ),
    GetPage(name: _Paths.LOGIN,
        page: () =>Login(),
       binding: LoginBinding()
    ),
    GetPage(name: _Paths.SIGNUP,
        page: () =>SignUpScreen(),
        binding: SignupBinding()
    ),
    GetPage(name: _Paths.OTP,
        page: () =>OtpScreen(),
        binding: OtpBinding()
    ),

    GetPage(name: _Paths.ADDADDRESS,
        page:()=> AddAddressScreen(),
      binding: AddressBinding()
    )

  ];
  }
