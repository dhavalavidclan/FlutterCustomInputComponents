import 'package:flutter/material.dart';
import 'package:flutter_custom_input_components/widgets/checkbox_list_widget.dart';
import '../../widgets/bullet_mark_title.dart';
import 'utils/model_check_box.dart';
import 'widgets/common_bottom_bar_widget.dart';
import 'widgets/inner_screen_appbar_widget.dart';
import 'widgets/subtitle_widget.dart';
import 'widgets/text_field_widget.dart';
import 'widgets/textfield_checkbox_widget.dart';

class PropertyInformationScreen extends StatefulWidget {
  const PropertyInformationScreen({super.key});

  @override
  State<PropertyInformationScreen> createState() => _PropertyInformationScreenState();
}

class _PropertyInformationScreenState extends State<PropertyInformationScreen> {
  List<ModelSelection> chattelsList = [
    ModelSelection(id: "1", title: "Item 1"),
    ModelSelection(id: "2", title: "Item 2"),
    ModelSelection(id: "3", title: "Item 3"),
    ModelSelection(id: "4", title: "Item 4"),
    ModelSelection(id: "5", title: "Item 5"),
    ModelSelection(id: "6", title: "Item 6"),
    ModelSelection(id: "7", title: "Item 7"),
    ModelSelection(id: "8", title: "Item 8"),
    ModelSelection(id: "9", title: "Item 9"),
    ModelSelection(id: "10", title: "Item 10"),
    ModelSelection(id: "23", title: "Other"),
  ];
  List<ModelSelection> otherRooms = [
    ModelSelection(id: "1", title: "Room 1"),
    ModelSelection(id: "2", title: "Room 2"),
    ModelSelection(id: "3", title: "Room 3"),
    ModelSelection(id: "4", title: "Room 4"),
    ModelSelection(id: "5", title: "Room 5"),
    ModelSelection(id: "11", title: "Other"),
  ];
  List<ModelSelection> hotWaterList = [
    ModelSelection(id: "1", title: "Electric 1"),
    ModelSelection(id: "2", title: "Electric 2"),
    ModelSelection(id: "3", title: "Electric 3"),
    ModelSelection(id: "4", title: "Electric 4"),
    ModelSelection(id: "5", title: "Electric 5"),
  ];
  List<ModelSelection> insulationList = [
    ModelSelection(id: "1", title: "Type 1"),
    ModelSelection(id: "2", title: "Type 2"),
    ModelSelection(id: "3", title: "Type 3"),
    ModelSelection(id: "4", title: "Type 4")
  ];
  List<ModelSelection> heatingList = [
    ModelSelection(id: "1", title: "Type 1"),
    ModelSelection(id: "2", title: "Type 2"),
    ModelSelection(id: "3", title: "Type 3"),
    ModelSelection(id: "4", title: "Type 4"),
    ModelSelection(id: "5", title: "Type 5"),
    ModelSelection(id: "6", title: "Type 6"),
    ModelSelection(id: "14", title: "Others"),
  ];
  List<ModelSelection> kitchenList = [
    ModelSelection(id: "1", title: "Designer"),
    ModelSelection(id: "2", title: "Modern"),
    ModelSelection(id: "3", title: "Standard"),
    ModelSelection(id: "4", title: "Open Plan")
  ];
  List<ModelSelection> diningList = [
    ModelSelection(id: "1", title: "Combined kitchen"),
    ModelSelection(id: "2", title: "Separate dining"),
    ModelSelection(id: "3", title: "Open plan dining")
  ];
  List<ModelSelection> bathroomToiletList = [
    ModelSelection(id: "1", title: "Separate bathrooms"),
    ModelSelection(id: "2", title: "Separate WCs"),
    ModelSelection(id: "3", title: "Separate shower"),
    ModelSelection(id: "4", title: "Combined Bath/WCs"),
    ModelSelection(id: "4", title: "Ensuite")
  ];
  List<ModelSelection> loungeList = [
    ModelSelection(id: "1", title: "Lounge/dining combined"),
    ModelSelection(id: "2", title: "Separate")
  ];
  List<ModelSelection> stoveList = [
    ModelSelection(id: "1", title: "Electric"),
    ModelSelection(id: "2", title: "Gas (retic)"),
    ModelSelection(id: "3", title: "Gas (bottled)")
  ];
  List<ModelSelection> interiorList = [
    ModelSelection(id: "1", title: "Excellent"),
    ModelSelection(id: "2", title: "Very good"),
    ModelSelection(id: "3", title: "Good"),
    ModelSelection(id: "4", title: "Fair"),
  ];
  List<ModelSelection> exteriorList = [
    ModelSelection(id: "1", title: "Weatherboard timber"),
    ModelSelection(id: "2", title: "Weatherboard composite"),
    ModelSelection(id: "3", title: "Monolythic system"),
    ModelSelection(id: "4", title: "Plastic system"),
    ModelSelection(id: "5", title: "Masonry block/brick"),
    ModelSelection(id: "6", title: "Brick veneer"),
    ModelSelection(id: "7", title: "Iron profile"),
    ModelSelection(id: "8", title: "Other")
  ];
  List<ModelSelection> exteriorConditionList = [
    ModelSelection(id: "1", title: "Excellent"),
    ModelSelection(id: "2", title: "Very good"),
    ModelSelection(id: "3", title: "Good"),
    ModelSelection(id: "4", title: "Fair")
  ];
  List<ModelSelection> swimmingPoolList = [
    ModelSelection(id: "1", title: "Above ground"),
    ModelSelection(id: "2", title: "In ground"),
    ModelSelection(id: "3", title: "Spa pool"),
    ModelSelection(id: "4", title: "Fenced"),
    ModelSelection(id: "5", title: "Fenced"),
    ModelSelection(id: "6", title: "Heated"),
    ModelSelection(id: "7", title: "Indoor")
  ];
  List<ModelSelection> generalList = [
    ModelSelection(id: "1", title: "Decking/patio"),
    ModelSelection(id: "2", title: "Polished floor"),
    ModelSelection(id: "3", title: "Tennis court"),
    ModelSelection(id: "4", title: "Gymnasium"),
    ModelSelection(id: "5", title: "BBQ/entertaining"),
    ModelSelection(id: "6", title: "Verandah/louvre")
  ];
  List<ModelSelection> roofList = [
    ModelSelection(id: "1", title: "Iron"),
    ModelSelection(id: "2", title: "Concrete tile"),
    ModelSelection(id: "3", title: "Stone chip"),
    ModelSelection(id: "4", title: "Metal tile"),
    ModelSelection(id: "5", title: "Long run"),
    ModelSelection(id: "6", title: "Coloured steel"),
    ModelSelection(id: "7", title: "Shingle"),
    ModelSelection(id: "8", title: "Slate tile"),
    ModelSelection(id: "9", title: "Butynol membrane"),
    ModelSelection(id: "10", title: "Other")
  ];
  List<ModelSelection> flooringList = [
    ModelSelection(id: "1", title: "Carpet"),
    ModelSelection(id: "2", title: "Polished"),
    ModelSelection(id: "3", title: "Tiles"),
    ModelSelection(id: "4", title: "Timber"),
    ModelSelection(id: "5", title: "Vinyl"),
    ModelSelection(id: "6", title: "Other")
  ];
  List<ModelSelection> garageList = [
    ModelSelection(id: "1", title: "Single"),
    ModelSelection(id: "2", title: "Double"),
    ModelSelection(id: "3", title: "Tandem"),
    ModelSelection(id: "4", title: "More than two"),
    ModelSelection(id: "5", title: "Off street parking"),
    ModelSelection(id: "6", title: "Internal access"),
    ModelSelection(id: "7", title: "Auto doors"),
    ModelSelection(id: "8", title: "Carport"),
    ModelSelection(id: "9", title: "No garaging/carport"),
    ModelSelection(id: "10", title: "Boat parking"),
  ];
  List<ModelSelection> fencingList = [
    ModelSelection(id: "1", title: "Fully Fenced"),
    ModelSelection(id: "2", title: "Partially fenced"),
    ModelSelection(id: "3", title: "Not Fenced")
  ];
  List<ModelSelection> aspectList = [
    ModelSelection(id: "1", title: "Northerly"),
    ModelSelection(id: "2", title: "Easterly"),
    ModelSelection(id: "3", title: "Southerly"),
    ModelSelection(id: "4", title: "Westerly"),
  ];
  List<ModelSelection> viewList = [
    ModelSelection(id: "1", title: "City"),
    ModelSelection(id: "2", title: "Sea"),
    ModelSelection(id: "3", title: "Bush"),
    ModelSelection(id: "4", title: "Rural"),
    ModelSelection(id: "4", title: "Urban"),
    ModelSelection(id: "4", title: "Park"),
    ModelSelection(id: "4", title: "Local"),
    ModelSelection(id: "4", title: "Private"),
    ModelSelection(id: "4", title: "Lake/River"),
    ModelSelection(id: "4", title: "Other")
  ];
  List<ModelSelection> sewageSystem = [
    ModelSelection(id: "1", title: "Mains"),
    ModelSelection(id: "2", title: "Septic"),
    ModelSelection(id: "3", title: "Bio Cycle"),
    ModelSelection(id: "4", title: "Other")
  ];
  List<ModelSelection> waterSystemList = [
    ModelSelection(id: "1", title: "Town"),
    ModelSelection(id: "2", title: "Tank"),
    ModelSelection(id: "3", title: "Bore"),
    ModelSelection(id: "4", title: "Other")
  ];
  List<ModelSelection> frontageList = [
    ModelSelection(id: "1", title: "Street"),
    ModelSelection(id: "2", title: "ROW")
  ];
  List<ModelSelection> levelsList = [
    ModelSelection(id: "1", title: "Above ground"),
    ModelSelection(id: "2", title: "Below ground"),
    ModelSelection(id: "3", title: "Level with road")
  ];
  List<ModelSelection> amenitiesList = [
    ModelSelection(id: "1", title: "Gas in street"),
    ModelSelection(id: "2", title: "Close to transport"),
    ModelSelection(id: "3", title: "Close to shops"),
    ModelSelection(id: "4", title: "Close to schools")
  ];

  TextEditingController chattelsController = TextEditingController();
  TextEditingController otherRoomsController = TextEditingController();
  TextEditingController singleBedRoomController = TextEditingController();
  TextEditingController doubleBedRoomController = TextEditingController();
  TextEditingController hotWaterController = TextEditingController();
  TextEditingController insulationController = TextEditingController();
  TextEditingController heatingController = TextEditingController();
  TextEditingController separateBathRoomsController = TextEditingController();
  TextEditingController separateWCController = TextEditingController();
  TextEditingController separateShowersController = TextEditingController();
  TextEditingController combinedBathController = TextEditingController();
  TextEditingController ensuiteController = TextEditingController();
  TextEditingController exteriorController = TextEditingController();
  TextEditingController roofController = TextEditingController();
  TextEditingController flooringController = TextEditingController();
  TextEditingController viewsController = TextEditingController();
  TextEditingController sewageController = TextEditingController();
  TextEditingController waterController = TextEditingController();
  TextEditingController otherCommentsController = TextEditingController();
  TextEditingController otherFeaturesController = TextEditingController();
  TextEditingController excludedChattelsController = TextEditingController();
  TextEditingController internalRemarksController = TextEditingController();

  @override
  void dispose() {
    chattelsController.dispose();
    otherRoomsController.dispose();
    singleBedRoomController.dispose();
    doubleBedRoomController.dispose();
    hotWaterController.dispose();
    insulationController.dispose();
    heatingController.dispose();
    separateBathRoomsController.dispose();
    separateWCController.dispose();
    separateShowersController.dispose();
    combinedBathController.dispose();
    ensuiteController.dispose();
    exteriorController.dispose();
    roofController.dispose();
    flooringController.dispose();
    viewsController.dispose();
    sewageController.dispose();
    waterController.dispose();
    otherCommentsController.dispose();
    otherFeaturesController.dispose();
    excludedChattelsController.dispose();
    internalRemarksController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(68),
            child: InnerScreenAppBarWidget(
              title: "PROPERTY DETAIL",
              onTapPreview: () {},
              onBack: () {},
            ),
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            children: [
              const SubTitleWidget(title: "Items"),
              const SizedBox(height: 12),
              TextFieldCheckBoxListWidget(
                checkBoxList: chattelsList,
                controller: chattelsController,
                hasOtherField: true,
                elementWidth: 218,
              ),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "OTHER ROOMS"),
              const SizedBox(height: 12),
              CheckBoxListWidget(
                checkBoxList: otherRooms,
                hasOtherField: true,
                controller: otherRoomsController,
                elementWidth: 140,
              ),
              const SizedBox(height: 24),
              const BulletMarkTitle( title: "BEDROOMS"),
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFieldWidget(
                      name: "Double",
                      hasPrefix: false,
                      placeholder: "Enter count",
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.sentences,
                      controller: doubleBedRoomController,
                      onSubmitField: () {},
                      validations: const [],
                      errorMessages: const [],
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: TextFieldWidget(
                      name: "Single",
                      hasPrefix: false,
                      placeholder: "Enter count",
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.sentences,
                      controller: singleBedRoomController,
                      onSubmitField: () {},
                      validations: const [],
                      errorMessages: const [],
                    ),
                  ),
                  const Expanded(child: SizedBox())
                ],
              ),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "HOT WATER"),
              const SizedBox(height: 12),
              CheckBoxListWidget(
                checkBoxList: hotWaterList,
                hasOtherField: true,
                controller: hotWaterController,
                elementWidth: 140,
              ),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "INSULATION"),
              const SizedBox(height: 12),
              CheckBoxListWidget(
                checkBoxList: insulationList,
                hasOtherField: true,
                controller: insulationController,
                elementWidth: 140,
              ),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "HEATING"),
              const SizedBox(height: 12),
              CheckBoxListWidget(
                checkBoxList: heatingList,
                hasOtherField: true,
                controller: heatingController,
                elementWidth: 184,
              ),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "KITCHEN"),
              const SizedBox(height: 12),
              CheckBoxListWidget(checkBoxList: kitchenList, elementWidth: 140),
              const SizedBox(height: 28),
              const SubTitleWidget(
                title: "Dining",
              ),
              const SizedBox(height: 12),
              CheckBoxListWidget(checkBoxList: diningList, elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "BATHROOMS/TOILET"),
              const SizedBox(height: 12),
              TextFieldCheckBoxListWidget(
                  checkBoxList: bathroomToiletList, elementWidth: 218),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "LOUNGE"),
              const SizedBox(height: 12),
              CheckBoxListWidget(checkBoxList: loungeList, elementWidth: 184),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "STOVE"),
              const SizedBox(height: 12),
              CheckBoxListWidget(checkBoxList: stoveList, elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "INTERIOR CONDITION"),
              const SizedBox(height: 12),
              CheckBoxListWidget(checkBoxList: interiorList, elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "EXTERIOR"),
              const SizedBox(height: 12),
              CheckBoxListWidget(
                checkBoxList: exteriorList,
                hasOtherField: true,
                controller: exteriorController,
                elementWidth: 184,
              ),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "EXTERIOR CONDITION"),
              const SizedBox(height: 12),
              CheckBoxListWidget(
                checkBoxList: exteriorConditionList,
                elementWidth: 140,
              ),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "SWIMMING POOL"),
              const SizedBox(height: 12),
              CheckBoxListWidget(checkBoxList: swimmingPoolList, elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "GENERAL"),
              const SizedBox(height: 12),
              CheckBoxListWidget(checkBoxList: generalList, elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "ROOF"),
              const SizedBox(height: 12),
              CheckBoxListWidget(
                  checkBoxList: roofList,
                  hasOtherField: true,
                  controller: roofController,
                  elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "FLOORING"),
              const SizedBox(height: 12),
              CheckBoxListWidget(
                  checkBoxList: flooringList,
                  hasOtherField: true,
                  controller: flooringController,
                  elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "GARAGE"),
              const SizedBox(height: 12),
              CheckBoxListWidget(checkBoxList: generalList, elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "FENCING"),
              const SizedBox(height: 12),
              CheckBoxListWidget(checkBoxList: fencingList, elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "ASPECT"),
              const SizedBox(height: 12),
              CheckBoxListWidget(checkBoxList: aspectList, elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "VIEWS"),
              const SizedBox(height: 12),
              CheckBoxListWidget(
                  checkBoxList: viewList,
                  hasOtherField: true,
                  controller: viewsController,
                  elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "SEWAGE SYSTEM"),
              const SizedBox(height: 12),
              CheckBoxListWidget(
                  checkBoxList: sewageSystem,
                  hasOtherField: true,
                  controller: sewageController,
                  elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "SEWAGE SYSTEM"),
              const SizedBox(height: 12),
              CheckBoxListWidget(
                  checkBoxList: waterSystemList,
                  hasOtherField: true,
                  controller: waterController,
                  elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "FRONTAGE"),
              const SizedBox(height: 12),
              CheckBoxListWidget(checkBoxList: frontageList, elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "LEVELS"),
              const SizedBox(height: 12),
              CheckBoxListWidget(checkBoxList: levelsList, elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "AMENITIES"),
              const SizedBox(height: 12),
              CheckBoxListWidget(checkBoxList: amenitiesList, elementWidth: 140),
              const SizedBox(height: 40),
              const SubTitleWidget(title: "OTHER"),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFieldWidget(
                      name: "Others",
                      hasPrefix: false,
                      height: 136,
                      maxLine: 5,
                      placeholder: "Please specify",
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.sentences,
                      controller: otherCommentsController,
                      onSubmitField: () {},
                      validations: const [],
                      errorMessages: const [],
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: TextFieldWidget(
                      name: "Other features/additionals",
                      height: 136,
                      maxLine: 5,
                      hasPrefix: false,
                      placeholder: "Please specify",
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.sentences,
                      controller: otherFeaturesController,
                      onSubmitField: () {},
                      validations: const [],
                      errorMessages: const [],
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: TextFieldWidget(
                      name: "Excluded chattels",
                      height: 136,
                      maxLine: 5,
                      hasPrefix: false,
                      placeholder: "Enter excluded chattels",
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.sentences,
                      controller: excludedChattelsController,
                      onSubmitField: () {},
                      validations: const [],
                      errorMessages: const [],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFieldWidget(
                      name: "Internal remarks",
                      height: 136,
                      maxLine: 5,
                      hasPrefix: false,
                      placeholder: "Enter internal remarks",
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.sentences,
                      controller: internalRemarksController,
                      onSubmitField: () {},
                      validations: const [],
                      errorMessages: const [],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 104),
            ],
          ),
          bottomNavigationBar: CommonBottomBarWidget(
              onTapNext: () {

              },
              onTapBack: () {}),
        ),
      ),
    );
  }
}
