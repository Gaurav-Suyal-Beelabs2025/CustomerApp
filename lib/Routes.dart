part of 'AppPages.dart';

abstract class Routes {
  Routes._();

  static const ONBOARD = _Paths.ONBOARD;
  static const LOGIN = _Paths.LOGIN;
  static const SIGNUP= _Paths.SIGNUP;
  static const OTP=_Paths.OTP;
  static const ADDADDRESS=_Paths.ADDADDRESS;
}

abstract class _Paths {
  _Paths._();
  static const ONBOARD = '/OnBoarding/OnBoardScreen';
  static const LOGIN = '/Login/Login';
  static const SIGNUP='/SignUp/SignUpScreen';
  static const OTP='/Otp/OtpScreen';
  static const ADDADDRESS='/AddAddress/AddAddressScreen';
}
