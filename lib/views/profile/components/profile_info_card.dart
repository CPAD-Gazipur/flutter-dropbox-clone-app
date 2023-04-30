import 'package:flutter/material.dart';
import 'package:flutter_dropbox_ui_clone/utils/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kBorderRadius),
        boxShadow: [
          BoxShadow(
            spreadRadius: 0,
            offset: const Offset(0, 18),
            blurRadius: 18,
            color: kBlackColor.withOpacity(0.06),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        vertical: 19,
        horizontal: kPaddingHorizontal,
      ),
      child: IntrinsicHeight(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: SvgPicture.asset(ImageUtils.icProLevel),
            ),
            Container(
              transform: Matrix4.translationValues(0, -18, 0),
              child: const CircleAvatar(
                radius: 40,
                backgroundColor: kLightBlueColor,
                backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/alamin-karno',
                ),
              ),
            ),
            Text(
              'Md. Al-Amin',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: kQuestrialBold.copyWith(
                color: kBlackColor,
                fontSize: SizeConfig.blockSizeHorizontal! * 6,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 1,
            ),
            Text(
              'Software Engineer',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: kQuestrialRegular.copyWith(
                color: kLightBlackColor,
                fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 1.2,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Rutrum quisque non tellus orci ac. Nec nam aliquam sem et tortor consequat id. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Eu volutpat odio facilisis mauris sit amet. Vestibulum mattis ullamcorper velit sed ullamcorper. ',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: kQuestrialRegular.copyWith(
                color: kLightBlackColor,
                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
