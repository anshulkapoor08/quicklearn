import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text('Animated Text Widget',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /* AnimatedTextKit(
              animatedTexts: [
              TypewriterAnimatedText('Anshul Kapoor',textStyle: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold,color: Colors.red.shade700,
              ),
              speed: Duration(milliseconds: 50,
              ),),
            ],
              totalRepeatCount: 10,
              pause: Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,

            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('Shubham Raj',textStyle: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold,color: Colors.green.shade700,
                ),),
                RotateAnimatedText('Shubham Yadav',textStyle: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold,color: Colors.green.shade700,
                ),),
                RotateAnimatedText('Saurabh Yadav',textStyle: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold,color: Colors.green.shade700,
                ),),
              ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,

            ), */

            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Anshul Kapoor',textStyle: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold,color: Colors.red.shade700,
                ),
                  speed: Duration(milliseconds: 50,
                  ),),
              ],
              totalRepeatCount: 10,
              pause: Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,

            ),
          ],
        ),
      ),
    );
  }
}
