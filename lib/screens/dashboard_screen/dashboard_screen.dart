import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutor_bin/controller/dashBoard_controller.dart';
import 'package:tutor_bin/res/app_colors.dart';
import 'package:tutor_bin/res/strings.dart';
import 'package:tutor_bin/screens/dashboard_screen/widget/item_widget.dart';
import 'package:tutor_bin/screens/drawer_screens/drawer_screen.dart';
import 'package:tutor_bin/utils/methods.dart';
import 'package:tutor_bin/utils/sizes.dart';
import 'package:tutor_bin/utils/textstyles.dart';
import 'package:tutor_bin/utils/ui_helper.dart';
import 'package:tutor_bin/widget/app_error_widget.dart';
import 'package:tutor_bin/widget/appbar_without_back.dart';

class DashBoardScreen extends StatefulWidget {
  final _dashboardController = Get.put(DashBoardController());

  DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      widget._dashboardController.getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarWithoutBack(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.amber,
                ),
                onPressed: () {
                  //_drawer();
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Strings.dashboard,
          textStyle: TextStyles.appBarTittle,
          actions: [],
        ),
        body: GetX<DashBoardController>(
          initState: (state) async {},
          builder: (controller) {
            if (widget._dashboardController.hasError.value) {
              return AppErrorWidget(
                errorMessage: widget._dashboardController.errorMessage.value,
              );
            }
            return _body();
          },
        ),
        drawer: const DrawerScreen(),
        floatingActionButton: FloatingActionButton.extended(
            elevation: 0.0,
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
            backgroundColor: Colors.amber,
            label: Text(
              Strings.addNeed,
              style: const TextStyle(fontSize: 12.0, color: Colors.black),
            ),
            onPressed: () {
              //_dashboardController.print();
              //Get.to(() => AddNeedScreen());
              widget._dashboardController.getData();
            }),
      ),
    );
  }

  Widget _body() {
    return ListView(
      children: [
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  widget._dashboardController.enableDisable(index);
                  System.print("Index  :: $index");
                  setState(() {});
                },
                child: ItemWidget(
                  title: "Cart ${index + 1}",
                  controller: widget._dashboardController,
                  count: index + 1,
                  mi: widget._dashboardController.mi!,
                  isEnable:
                      widget._dashboardController.returnEnableDisable(index),
                  buttonClick: (){
                    //widget._dashboardController.totalAmount("10");
                  },
                ),
              );
            }),
        Padding(
          padding: EdgeInsets.all(Sizes.s10),
          child: Card(
            color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(Sizes.s20),
                    child: const Text("Place Order"),
                  ),
                ),
                Text("\$ ${widget._dashboardController.total.value}"),
                const C10()
              ],
            ),
          ),
        ),
        const C100(color: Colors.white)
      ],

    );
  }
}
