// @Responsable -> Alcántara Chávez Samuel

//Flutter
import 'package:flutter/material.dart';
// Packages
import 'package:provider/provider.dart';
// Owned
import '../providers/emotion_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Variables
    final emotionsState = Provider.of<EmotionProvider>(context);
    String actualEmotion = Provider.of<EmotionProvider>(context).actualEmotion;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Este es mi estado de ánimo actual\n\n $actualEmotion',
              textAlign: TextAlign.center,
            ),
            Container(
              padding: const EdgeInsets.all(150),
              child: Image.asset('assets/images/$actualEmotion.png'),
            ),
            DropdownButton(
              value: emotionsState.actualEmotion,
              items: emotionsState.emotions
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
              onChanged: (String? newEmotion) => emotionsState.actualEmotion = newEmotion!,
            )
          ],
        ),
      ),
    );
  }
}
