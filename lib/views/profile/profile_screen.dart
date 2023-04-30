import 'package:flutter/material.dart';
import 'package:flutter_dropbox_ui_clone/utils/utils.dart';
import 'package:flutter_dropbox_ui_clone/views/views.dart';
import 'package:flutter_dropbox_ui_clone/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/models.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context: context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: kPaddingHorizontal,
          ),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(ImageUtils.icArrowBack),
                  Text(
                    'My Profile',
                    style: kQuestrialSemiBold.copyWith(
                      color: kBlackColor,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                    ),
                  ),
                  SvgPicture.asset(ImageUtils.icMoreHorizontal),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeVertical! * 3),
              const ProfileInfoCard(),
              SizedBox(height: SizeConfig.blockSizeVertical! * 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My folders',
                    style: kQuestrialSemiBold.copyWith(
                      color: kBlackColor,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(ImageUtils.icAdd),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal! * 3),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(ImageUtils.icSetting),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal! * 3),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(ImageUtils.icArrowRight),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeVertical! * 3),
              GridFolderList(folders: profileFolders),
              SizedBox(height: SizeConfig.blockSizeVertical! * 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent uploads',
                    style: kQuestrialSemiBold.copyWith(
                      color: kBlackColor,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(ImageUtils.icArrangeVertical),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeVertical! * 3),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      bottom: SizeConfig.blockSizeVertical! * 1.5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20.5,
                              backgroundColor: kLightBlueColor,
                              child: Center(
                                child: SvgPicture.asset(
                                  ImageUtils.icWord,
                                  width: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                                width: SizeConfig.blockSizeHorizontal! * 3.5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'dropbox file $index.docs',
                                  style: kQuestrialSemiBold.copyWith(
                                    color: kBlackColor,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 0.5,
                                ),
                                Text(
                                  'November 22, 2023',
                                  style: kQuestrialRegular.copyWith(
                                    color: kLightBlackColor,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 2.5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          getFileSize(index),
                          style: kQuestrialRegular.copyWith(
                            color: kLightBlackColor,
                            fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getFileSize(int index) {
    int size = (500 * index) + index + 456;
    if (size > 1024) {
      return '${(size / 1024).toStringAsFixed(2)} MB';
    } else {
      return '$size KB';
    }
  }
}
