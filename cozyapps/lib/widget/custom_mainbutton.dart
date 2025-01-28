import 'package:cozyapps/cubit/page_cubit.dart';
import 'package:cozyapps/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CustomMainButton extends StatelessWidget{

  final int index;
  final String imgurl;

  const CustomMainButton({
    Key? key,
    required this.index,
    required this.imgurl
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imgurl,
            width: 26,
            height: 60,
            color: context.read<PageCubit>().state == index?
            purple : grey,
          ),
        ],
      ),
    );
  }
  
}