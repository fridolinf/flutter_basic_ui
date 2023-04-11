import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/image_ex.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/text_ex.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/listview_ex.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/gridview_ex.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/usefull_widget_ex.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/statefullwidget_ex.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/page_navigation_ex.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/appbar_with_sliverappbar.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/tabbar_ex.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/drawer_ex.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/all_button_ex.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/text_field_ex.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/date_time_ex.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/form_and_widget_validation.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/selected_value_widget.dart';
import 'package:flutter_basic_ui/app/widgets/list_of_widget_example/dialog_and_bottom_sheet.dart';

final widgetList = [
  {
    "id": 0,
    "name": "Text",
    "component": const TextEx(),
    "icon": Icons.text_format,
  },
  {
    "id": 1,
    "name": "Image",
    "component": const ImageEx(),
    "icon": Icons.image,
  },
  {
    "id": 2,
    "name": "List View",
    "component": ListviewEx(),
    "icon": Icons.list,
  },
  {
    "id": 3,
    "name": "Grid",
    "component": const GridviewEx(),
    "icon": Icons.layers_outlined,
  },
  {
    "id": 4,
    "name": "UseFull Widget",
    "component": const UseFullWidgetEx(),
    "icon": Icons.widgets,
  },
  {
    "id": 5,
    "name": "Statefull Widget",
    "component": const StateFullWidgetEx(),
    "icon": Icons.panorama_wide_angle,
  },
  {
    "id": 6,
    "name": "Page Navigation",
    "component": const PageNavigationEx(),
    "icon": Icons.navigate_next,
  },
  {
    "id": 7,
    "name": "Appbar",
    "component": const AppbarWithSliverAppBar(),
    "icon": Icons.border_top,
  },
  {
    "id": 8,
    "name": "Tab Bar",
    "component": const TabBarEx(),
    "icon": Icons.tab,
  },
  {
    "id": 9,
    "name": "Drawer",
    "component": const DrawerEx(),
    "icon": Icons.draw_rounded,
  },
  {
    "id": 10,
    "name": "All Button",
    "component": const AllButtonEx(),
    "icon": Icons.smart_button_rounded,
  },
  {
    "id": 11,
    "name": "TextField",
    "component": const TextFieldEx(),
    "icon": Icons.text_fields,
  },
  {
    "id": 12,
    "name": "Date Time",
    "component": const DateTimeEx(),
    "icon": Icons.date_range,
  },
  {
    "id": 13,
    "name": "Form Validation",
    "component": const FormAndWidgetValidation(),
    "icon": Icons.dynamic_form,
  },
  {
    "id": 14,
    "name": "Selected Widget",
    "component": const SelectedValueWidget(),
    "icon": Icons.select_all,
  },
  {
    "id": 15,
    "name": "Dialog & Bottom Sheet",
    "component": const DialogAndButtomSheet(),
    "icon": Icons.dynamic_feed_outlined,
  },
];
