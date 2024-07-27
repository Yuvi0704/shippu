// lib/presentation/widgets/footer.dart

import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.blue,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '© 2024 AI Tutorial Platform',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(' | ', style: TextStyle(color: Colors.white)),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Terms of Service',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
