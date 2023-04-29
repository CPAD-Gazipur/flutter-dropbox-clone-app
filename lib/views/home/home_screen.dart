import 'package:flutter/material.dart';
import 'package:flutter_dropbox_ui_clone/models/models.dart';
import 'package:flutter_dropbox_ui_clone/utils/utils.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context: context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: kPaddingHorizontal,
          ),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.blockSizeVertical! * 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Your Dropbox',
                    style: kQuestrialSemiBold.copyWith(
                      color: kBlackColor,
                      fontSize: SizeConfig.blockSizeHorizontal! * 6,
                    ),
                  ),
                  SvgPicture.asset(
                    ImageUtils.icMenu,
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeVertical! * 4),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      kBorderRadius,
                    ),
                    borderSide: const BorderSide(
                      width: 1,
                      color: kGreyColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      kBorderRadius,
                    ),
                    borderSide: const BorderSide(
                      width: 1,
                      color: kGreyColor,
                    ),
                  ),
                  prefixIcon: Container(
                    width: 24,
                    height: 24,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      ImageUtils.icSearch,
                    ),
                  ),
                  hintText: 'Search folder',
                  hintStyle: kQuestrialMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    color: kDarkGreyColor,
                  ),
                ),
                style: kQuestrialMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  color: kDarkGreyColor,
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical! * 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Recent',
                        style: kQuestrialSemiBold.copyWith(
                          color: kLightBlackColor,
                          fontSize: SizeConfig.blockSizeHorizontal! * 4,
                        ),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal! * 2.4),
                      SvgPicture.asset(ImageUtils.icArrowDown),
                    ],
                  ),
                  SvgPicture.asset(ImageUtils.icSort),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeVertical! * 3),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: SizeConfig.blockSizeHorizontal! * 2.5,
                  mainAxisSpacing: SizeConfig.blockSizeHorizontal! * 2,
                  mainAxisExtent: 107,
                ),
                itemCount: folders.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: kPaddingHorizontal * 0.5,
                    ),
                    decoration: BoxDecoration(
                        color: folders[index].folderColor,
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 0.001,
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(folders[index].folderIcon),
                            SvgPicture.asset(folders[index].moreIcon),
                          ],
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                        Text(
                          folders[index].folderName,
                          style: kQuestrialSemiBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: folders[index].textColor,
                          ),
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical! * 0.3),
                        Text(
                          folders[index].folderDate,
                          style: kQuestrialRegular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                            color: folders[index].textColor,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: SizeConfig.blockSizeVertical! * 4),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          elevation: 3,
          onPressed: () {},
          backgroundColor: kPurpleColor,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
