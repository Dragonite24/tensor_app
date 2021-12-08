import 'package:flutter/material.dart';

import '../constants.dart';

personInfo({required String icon, required String text}) => Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/icons/$icon.png',
            color: semiText,
          ),
          const SizedBox(width: 8),
          FittedBox(
            child: Text(
              text,
              style: const TextStyle(color: semiText, fontSize: 14),
            ),
          )
        ],
      ),
    );
