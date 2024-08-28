import 'package:flutter/material.dart';

class AddTweetWidget extends StatelessWidget {
  const AddTweetWidget({
    super.key,  required this.onPressed,required this.onSubmitted,
  });


  final void Function()? onPressed ;

  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 120,
      child:  Column(
        children: [
    
          const SizedBox(height: 20,),
           SizedBox(
            width: 300,
            height: 30,
            child: TextField(

              onSubmitted: onSubmitted ,
              decoration: const InputDecoration(
                  fillColor: Color(0xffE7ECF0),
                  filled: true,
                  hintText: "What is happening?",
                  helperStyle: TextStyle(color: Color(0xff687684)),
                  border: InputBorder.none),
            ),
          ),
    
          const SizedBox(height: 10,),
    
          SizedBox(
            width: 300,
            child: ElevatedButton(
            
              style: ElevatedButton.styleFrom(
    
                backgroundColor: const Color(0xffE7ECF0)
                
              ),
            
               onPressed: onPressed,
              
               child: const Text("Cancel",style: TextStyle(color: Colors.black),),
               
               
               ),
          )
        ],
      ),
    );
  }
}
