import 'package:flutter/material.dart';
import 'package:flutter_dropbox_ui_clone/models/models.dart';
import 'package:flutter_dropbox_ui_clone/utils/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridFolderList extends StatelessWidget {
  final List<Folder> folders;

  const GridFolderList({
    Key? key,
    required this.folders,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
            ],
          ),
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
    );
  }
}
