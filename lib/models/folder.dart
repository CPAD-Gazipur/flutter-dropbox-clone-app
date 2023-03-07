import 'package:flutter/material.dart';
import 'package:flutter_dropbox_ui_clone/utils/utils.dart';

class Folder {
  Color folderColor;
  Color textColor;
  String folderIcon;
  String moreIcon;
  String folderName;
  String folderDate;

  Folder({
    required this.folderColor,
    required this.textColor,
    required this.folderIcon,
    required this.moreIcon,
    required this.folderName,
    required this.folderDate,
  });
}

List<Folder> folders = [
  Folder(
    folderColor: kLightBlueColor,
    textColor: kBlueColor,
    folderIcon: ImageUtils.icFolderBlue,
    moreIcon: ImageUtils.icMoreBlue,
    folderName: 'Mobile apps',
    folderDate: 'December 20, 2020',
  ),
  Folder(
    folderColor: kLightYellowColor,
    textColor: kYellowColor,
    folderIcon: ImageUtils.icFolderYellow,
    moreIcon: ImageUtils.icMoreYellow,
    folderName: 'SVG icons',
    folderDate: 'December 14, 2022',
  ),
  Folder(
    folderColor: kLightRedColor,
    textColor: kRedColor,
    folderIcon: ImageUtils.icFolderRed,
    moreIcon: ImageUtils.icMoreRed,
    folderName: 'Prototypes',
    folderDate: 'January 13, 2022',
  ),
  Folder(
    folderColor: kLightGreenColor,
    textColor: kBlueDiamondsColor,
    folderIcon: ImageUtils.icFolderBlueDiamond,
    moreIcon: ImageUtils.icMoreBlueDiamond,
    folderName: 'Avatars',
    folderDate: 'October 16, 2023',
  ),
  Folder(
    folderColor: kLightYellowColor,
    textColor: kYellowColor,
    folderIcon: ImageUtils.icFolderYellow,
    moreIcon: ImageUtils.icMoreYellow,
    folderName: 'SVG icons',
    folderDate: 'December 14, 2022',
  ),
  Folder(
    folderColor: kLightBlueColor,
    textColor: kBlueColor,
    folderIcon: ImageUtils.icFolderBlue,
    moreIcon: ImageUtils.icMoreBlue,
    folderName: 'Mobile apps',
    folderDate: 'December 20, 2020',
  ),
  Folder(
    folderColor: kLightGreenColor,
    textColor: kBlueDiamondsColor,
    folderIcon: ImageUtils.icFolderBlueDiamond,
    moreIcon: ImageUtils.icMoreBlueDiamond,
    folderName: 'Avatars',
    folderDate: 'October 16, 2023',
  ),
  Folder(
    folderColor: kLightRedColor,
    textColor: kRedColor,
    folderIcon: ImageUtils.icFolderRed,
    moreIcon: ImageUtils.icMoreRed,
    folderName: 'Prototypes',
    folderDate: 'January 13, 2022',
  ),
  Folder(
    folderColor: kLightBlueColor,
    textColor: kBlueColor,
    folderIcon: ImageUtils.icFolderBlue,
    moreIcon: ImageUtils.icMoreBlue,
    folderName: 'Mobile apps',
    folderDate: 'December 20, 2020',
  ),
  Folder(
    folderColor: kLightYellowColor,
    textColor: kYellowColor,
    folderIcon: ImageUtils.icFolderYellow,
    moreIcon: ImageUtils.icMoreYellow,
    folderName: 'SVG icons',
    folderDate: 'December 14, 2022',
  ),
  Folder(
    folderColor: kLightRedColor,
    textColor: kRedColor,
    folderIcon: ImageUtils.icFolderRed,
    moreIcon: ImageUtils.icMoreRed,
    folderName: 'Prototypes',
    folderDate: 'January 13, 2022',
  ),
  Folder(
    folderColor: kLightGreenColor,
    textColor: kBlueDiamondsColor,
    folderIcon: ImageUtils.icFolderBlueDiamond,
    moreIcon: ImageUtils.icMoreBlueDiamond,
    folderName: 'Avatars',
    folderDate: 'October 16, 2023',
  ),
];
