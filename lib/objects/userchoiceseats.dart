import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:need_moto/objects/form.dart';
import 'package:need_moto/objects/fromtotile.dart';
import 'package:need_moto/objects/timeslider.dart';

void showPopupMenu(BuildContext context) async {
  final result = FormTile();
}

class UserChoiceSeats extends StatefulWidget {
  UserChoiceSeats({Key? key}) : super(key: key);

  @override
  State<UserChoiceSeats> createState() => _UserChoiceSeatsState();
}

class _UserChoiceSeatsState extends State<UserChoiceSeats> {
  final userChoiceController = Get.put(UserChoiceController());
  bool isSelected = false;
  bool isAnimated = false;
  bool isAnimatedback = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Obx(() => Row(
                  children: [
                    // SizedBox(width: 16), // Add some padding to the left
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            // height: 20.0,

                            child: UserChoiceButton(
                                icon: Icons.event_seat_sharp,
                                label: '4',
                                isSelected:
                                    userChoiceController.selectedButton.value ==
                                        '4',
                                onTap: () {
                                  userChoiceController.selectedButton.value =
                                      '4';
                                  isSelected = true;
                                  // call the fromTile with value
                                }),
                          ),
                          UserChoiceButton(
                            icon: Icons.event_seat_sharp,
                            label: '5',
                            isSelected:
                                userChoiceController.selectedButton.value ==
                                    '5',
                            onTap: () =>
                                userChoiceController.selectedButton.value = '5',
                          ),
                          UserChoiceButton(
                            icon: Icons.event_seat_sharp,
                            label: '6+',
                            isSelected:
                                userChoiceController.selectedButton.value ==
                                    '6+',
                            onTap: () => userChoiceController
                                .selectedButton.value = '6+',
                          ),
                          UserChoiceButton(
                            icon: Icons.directions_car,
                            label: 'Jeeps',
                            isSelected:
                                userChoiceController.selectedButton.value ==
                                    'Jeeps',
                            onTap: () => userChoiceController
                                .selectedButton.value = 'Jeeps',
                          ),
                        ],
                      ),
                    ),

                    Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.edit,
                            size: 20,
                          ),
                          color: Colors.green[100],
                          width: 50.0,
                          height: 23.0,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (isAnimated == false)
                                isAnimated = true;
                              else
                                isAnimated = false;
                            });
                          },
                          child: Container(
                            child: isAnimated
                                ? Icon(Icons.arrow_drop_up)
                                : Icon(Icons.arrow_drop_down),
                            color: Colors.green[100],
                            width: 50.0,
                            height: 22.0,
                          ),
                        ),
                      ],
                    ),
                    //SizedBox(width: 16), // Add some padding to the right
                  ],
                )),
          ),
          SizedBox(height: 10),
          Divider(
            height: 1,
            color: Colors.black54,
          ),
          isAnimated ? FormTile() : Container(),
        ],
      ),
    );
  }
}

class UserChoiceButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final Function() onTap;

  const UserChoiceButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 6),
          height: 15,
          width: 80,
          decoration: BoxDecoration(
            color: isSelected ? Colors.blue : Colors.grey.shade300,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      icon,
                      color: isSelected ? Colors.white : Colors.black,
                      size: 20,
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
}

class UserChoiceController extends GetxController {
  final selectedButton = '4'.obs;
}

class UserFormController extends GetxController {
  final containerVisible = false.obs;

  void toggleContainer() {
    containerVisible.value = !containerVisible.value;
  }
}
