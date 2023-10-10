
import 'dart:async';
import 'package:customerapp/Utils/CustomColor.dart';
import 'package:customerapp/Widgets/AddAddressBottomSheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressController extends FullLifeCycleController with FullLifeCycleMixin{

  Completer<GoogleMapController> _controller = Completer();
  bool servicestatus = false;
  bool haspermission = false;
  late LocationPermission permission;
  late Position position;
  double long = 0.0, lat = 0.0;
  late StreamSubscription<Position> positionStream;
  //Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
//  RxSet markers=Set().obs;
  RxSet<Marker> markers = <Marker>{}.obs;
  RxSet<Circle> circles=<Circle>{}.obs;
  RxString address="".obs ;


    @override
  void onInit() {
    super.onInit();
    checkGps();
   _getAddressFromLatLng(28.626690, 77.385849);
  }

  void onMapCreated(GoogleMapController controller) {
    _controller = Completer();
    _controller.complete(controller);
  }

  checkGps() async {
    servicestatus = await Geolocator.isLocationServiceEnabled();
    if(servicestatus){
      permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          print('Location permissions are denied');
        }else if(permission == LocationPermission.deniedForever){
          print("'Location permissions are permanently denied");
        }else{
          haspermission = true;
        }
      }else{
        haspermission = true;
      }

      if(haspermission){


        getLocation();
      }
    }else{
      print("GPS Service is not enabled, turn on GPS location");
    }


  }

  getLocation() async {
    position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    long = position.longitude;
    lat = position.latitude;


    LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high, //accuracy of the location data
      distanceFilter: 100, //minimum distance (measured in meters) a
      //device must move horizontally before an update event is generated;
    );

    StreamSubscription<Position> positionStream = Geolocator.getPositionStream(
        locationSettings: locationSettings).listen((Position position) async {
      print(position.longitude); //Output: 80.24599079
      print(position.latitude); //Output: 29.6593457

      long = position.longitude;
      lat = position.latitude;

      //Add Marker
     addMarkers(lat, long);
     update();

    });
  }


  addMarkers(double lat,double long) async {
    BitmapDescriptor markerbitmap = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(),
      "assets/images/locationmarker.jpg",
    );

    markers.add(
        Marker( //add start location marker
          markerId: MarkerId("1"),
          position: LatLng(
          lat,
          long,
        ), //position of marker
          infoWindow: const InfoWindow( //popup info
            snippet: 'You’ll get your deliveries here',
          ),
          icon: markerbitmap, //Icon for Marker
        )
    );

      circles.add(Circle(
      circleId: CircleId("1"),
      center: LatLng(lat, long),
      radius: 4000,
        fillColor: CustomColor.orangeopacitycolor,
      strokeColor: CustomColor.primarycolor,
        strokeWidth: 1,
    )
      );

    _getAddressFromLatLng(lat,long);
  }

  Future<void> _getAddressFromLatLng(double lat,double long) async {
    await placemarkFromCoordinates(
     lat,long)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];

        address =
        '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}' as RxString;
        print("object:" +address.toString());
    }).catchError((e) {
      debugPrint(e);
    });
  }



  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onHidden() {
    // TODO: implement onHidden
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }

  void onAddAddressClicked() {

      Get.bottomSheet(

        AddAddressBottomSheet(),

      );

  }

}