import 'package:desafio_flutter_in_the_dark_2/common/app_colors.dart';
import 'package:desafio_flutter_in_the_dark_2/common/app_text_styles.dart';
import 'package:desafio_flutter_in_the_dark_2/common/image_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PanelListPage extends StatefulWidget {
  @override
  createState() => _PanelListPage();
}

class _PanelListPage extends State<PanelListPage> {
  List<Widget> cards = [];
  @override
  void initState() {
    super.initState();
    cards = [_card(0), _card(1), _card(2)];
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppColors.gray,
          appBar: _appBar(),
          body: GridView.builder(
            itemCount: cards.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) => cards[index],
          ),
        ),
        _logo()
      ],
    );
  }

  AppBar _appBar() {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: AppColors.black,
      actions: [
        GestureDetector(
          onTap: () {
            showDialog(builder: (context) => AlertDialog(), context: context);
          },
          child: Row(
            children: [
              Text(
                "MACHINE UNLOCK",
                style: AppTextStyle.getAppTextStyle(
                    size: 18,
                    weight: FontWeight.w700,
                    color: AppColors.red,
                    fontType: FontType.jura),
              ),
              SizedBox(
                width: 16.64,
              ),
              SvgPicture.asset(
                ImageResources.lock_open,
                color: Colors.white,
              ),
              SizedBox(
                width: 95.5,
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _logo() {
    return Padding(
      padding: EdgeInsets.only(top: 35.5, left: 81.5),
      child: SvgPicture.asset(
        ImageResources.logo,
        height: 71,
        width: 71,
      ),
    );
  }

  Widget _card(int character) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Card(
        color: AppColors.gray,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 140,
          width: 390,
          child: Column(
            children: [
              Container(height: 225, child: _getCharacterImg(character)),
              Text(
                _getCharacterName(character),
                style: AppTextStyle.getAppTextStyle(
                    size: 24, fontType: FontType.krona, color: AppColors.red),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getCharacterImg(int character) {
    switch (character) {
      case 0:
        return Image.asset(
          ImageResources.atria_bg,
          fit: BoxFit.cover,
        );
      case 1:
        return Image.asset(
          ImageResources.leick_bg,
          fit: BoxFit.cover,
        );
      case 2:
        return Image.asset(
          ImageResources.lilith_bg,
          fit: BoxFit.cover,
        );
      default:
        return Image.asset(
          ImageResources.atria_bg,
          fit: BoxFit.cover,
        );
    }
  }

  String _getCharacterName(int character) {
    switch (character) {
      case 0:
        return "ATRIA";
      case 1:
        return "LEICK";
      case 2:
        return "LILITH";
      default:
        return "ATRIA";
    }
  }
}
