import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
   const CustomButton({super.key, this.ontap,  this.isloading =false});
 final void Function()? ontap;
 final bool isloading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kprimarycolor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Center(
          child: isloading ? const CircularProgressIndicator(color: Colors.black,) :
          const Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
