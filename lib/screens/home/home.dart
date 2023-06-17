import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smart_helmet/controllers/home_controller.dart';
import 'package:smart_helmet/custom_widgets/action_container.dart';
import 'package:smart_helmet/screens/access/login.dart';
import 'package:smart_helmet/screens/settings/emergency_contact.dart';
import 'package:smart_helmet/screens/settings/profile.dart';
import 'package:smart_helmet/utils/constants.dart';

import '../../utils/screen_info.dart';

class Home extends StatelessWidget {

  final HomeController get = Get.put(HomeController());

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: kPrimarySwatch),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).colorScheme.background,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        drawer: Drawer(
          width: screenWidth(context) / 1.4,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20.0),
          )),
          backgroundColor: kWhite,
          child: Column(
            children: [
              Container(
                color: kWhite,
                padding: const EdgeInsets.all(60.0),
                child: Image.asset('assets/images/logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: ()=>Get.to(()=>Profile(), transition: Transition.rightToLeft),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  tileColor: kPrimarySwatch,
                  leading: const Icon(
                    Icons.person,
                    color: kWhite,
                  ),
                  title: const Text(
                    'Profile',
                    style: TextStyle(color: kWhite),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: ()=>Get.to(()=>EmergencyContact(), transition: Transition.rightToLeft),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  tileColor: kPrimarySwatch,
                  leading: const Icon(
                    Icons.emergency,
                    color: kWhite,
                  ),
                  title: const Text(
                    'Emergency Contact',
                    style: TextStyle(color: kWhite),
                  ),
                ),
              ),
              const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: (){Get.offAll(Login(), transition: Transition.leftToRight);},
              dense: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              tileColor: kAccentColor,
              leading: const Icon(
                Icons.logout,
                color: kWhite,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(color: kWhite),
              ),
            ),
          )
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Container(
            width: screenWidth(context),
            height: screenHeight(context),
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(padding: EdgeInsets.only(top: 20.0)),
                SizedBox(
                    width: screenWidth(context),
                    child: Center(
                        child: Image.asset(
                      "assets/images/helmet.png",
                      width: screenWidth(context) / 2,
                    ))),
                ActionContainer(
                    height: 50.0,
                    width: screenWidth(context),
                    child: ListTile(
                      dense: true,
                      leading: const Icon(
                        Icons.bluetooth_connected,
                        color: kPrimarySwatch,
                      ),
                      title: const Text(
                        'Bluetooth',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: kPrimarySwatch,
                        ),
                      ),
                      trailing: Obx(
                        ()=> Switch(
                          value: get.bluetoothActive.value,
                          onChanged: (bool value) {
                              get.bluetoothOperation(enableBluetooth: true);
                          },
                        ),
                      ),
                    )),
                ActionContainer(
                    height: 50.0,
                    width: screenWidth(context),
                    child: ListTile(
                      dense: true,
                      leading: const Icon(
                        Icons.location_pin,
                        color: kPrimarySwatch,
                      ),
                      title: const Text(
                        'Location',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: kPrimarySwatch,
                        ),
                      ),
                      trailing: Obx(
                        ()=> Switch(
                          value: get.locationActive.value,
                          onChanged: (bool value) {
                              get.locationOperation(enableLocation: value);
                          },
                        ),
                      ),
                    )),
                ActionContainer(
                  height: 50.0,
                  width: screenWidth(context),
                  child: ListTile(
                      dense: true,
                      leading: const Icon(
                        Icons.sports_motorsports,
                        color: kPrimarySwatch,
                      ),
                      title: const Text(
                        'Wearing Helmet',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: kPrimarySwatch,
                        ),
                      ),
                      trailing: Transform.scale(
                          scale: 1.25,
                          child: Radio(
                            value: 0,
                            groupValue: 0,
                            onChanged: (i) {},
                            activeColor: kGreen,
                          ))),
                ),
                ActionContainer(
                    height: 50.0,
                    width: screenWidth(context),
                    child: ListTile(
                        dense: true,
                        leading: const Icon(
                          Icons.label_important,
                          color: kPrimarySwatch,
                        ),
                        title: const Text(
                          'Buckle Lock',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: kPrimarySwatch,
                          ),
                        ),
                        trailing: Transform.scale(
                          scale: 1.25,
                          child: Radio(
                            value: 0,
                            groupValue: 0,
                            onChanged: (i) {},
                            activeColor: kGreen,
                          ),
                        ))),
                ActionContainer(
                    height: 50.0,
                    width: screenWidth(context),
                    child: ListTile(
                        dense: true,
                        leading: const Icon(
                          Icons.motorcycle,
                          color: kPrimarySwatch,
                        ),
                        title: const Text(
                          'Bike Ignition',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: kPrimarySwatch,
                          ),
                        ),
                        trailing: Transform.scale(
                          scale: 1.25,
                          child: Radio(
                            value: 0,
                            groupValue: 0,
                            onChanged: (i) {},
                            activeColor: kGreen,
                          ),
                        ))),
                ActionContainer(
                    height: 50.0,
                    width: screenWidth(context),
                    child: ListTile(
                        dense: true,
                        leading: const Icon(
                          Icons.speed,
                          color: kPrimarySwatch,
                        ),
                        title: const Text(
                          'Overspeeding',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: kPrimarySwatch,
                          ),
                        ),
                        trailing: Transform.scale(
                          scale: 1.25,
                          child: Radio(
                            value: 0,
                            groupValue: 0,
                            onChanged: (i) {},
                            activeColor: kGreen,
                          ),
                        ))),
                ActionContainer(
                    height: 50.0,
                    width: screenWidth(context),
                    child: ListTile(
                      dense: true,
                      leading: const Icon(
                        Icons.emergency,
                        color: kPrimarySwatch,
                      ),
                      title: const Text(
                        'Accident Detection',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: kPrimarySwatch,
                        ),
                      ),
                      trailing: Transform.scale(
                          scale: 1.25,
                          child: Radio(
                            value: 0,
                            groupValue: 0,
                            onChanged: (i) {},
                            activeColor: kRed,
                          )),
                    )),
                const Padding(padding: EdgeInsets.only(top: 20.0)),
                Image.asset("assets/images/logo_faded.png", width: 80.0),
              ],
            ),
          ),
        ));
  }
}
