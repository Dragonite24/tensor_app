import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tensor_app/components/personinfo_tile.dart';
import 'package:tensor_app/models/classmate_model.dart';
import 'package:tensor_app/models/classmates_provider.dart';
import '../../constants.dart';

class ClassmateCard extends StatefulWidget {
  final Classmate me;
  final int index;

  const ClassmateCard({Key? key, required this.me, required this.index}) : super(key: key);

  @override
  _ClassmateCardState createState() => _ClassmateCardState();
}

class _ClassmateCardState extends State<ClassmateCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showModalBottomSheet(context);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.white,
        width: double.infinity,
        height: 72,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: hover,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(widget.me.avatar),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(
                      '${widget.me.firstName} ${widget.me.lastName}',
                      style: const TextStyle(
                        color: mainText,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Text(
                    'КГАСУ 2 курс',
                    style: TextStyle(
                      color: semiText,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            InkWell(
              onTap: () {
                if (Provider.of<ClassmatesProvider>(context, listen: false)
                    .classmates
                    .isNotEmpty) {
                  Provider.of<ClassmatesProvider>(context, listen: false)
                      .classmates
                      .removeAt(widget.index);
                  Provider.of<ClassmatesProvider>(context, listen: false)
                      .updateProvider();
                }
              },
              child: Image.asset(
                'assets/icons/Delete.png',
                color: semiIcon2,
                width: 50,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Модальное окно
  _showModalBottomSheet(context) {
    showModalBottomSheet(
      backgroundColor: Colors.grey.withOpacity(0.2),
      isScrollControlled: true,
      context: context,
      builder: (_) {
        return SizedBox(
          height: 350,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                height: 350,
                width: 600,
                child: Column(
                  children: [
                    /// Якорь
                    Container(
                      decoration: BoxDecoration(
                          color: mainText.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(16)),
                      width: 50,
                      height: 4,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        '${widget.me.firstName} ${widget.me.lastName}',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: mainText,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// Контент
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(widget.me.avatar),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            personInfo(icon: 'map_pin', text: 'Уфа'),
                            personInfo(
                                icon: 'University', text: 'УГАТУ, 2 курс'),
                            personInfo(icon: 'Phone', text: '+7 999 345 34 33'),
                            personInfo(icon: 'Mail', text: widget.me.email),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Информация:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: mainText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    /// Способы связи
                    const Text('Связаться:', style: TextStyle(color: mainText)),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/icons/Tlg.png',
                            color: semiIcon1, scale: 0.7),
                        Image.asset('assets/icons/VK.png',
                            color: semiIcon1, scale: 0.7),
                        Image.asset('assets/icons/FB.png',
                            color: semiIcon1, scale: 0.7),
                        Image.asset('assets/icons/WA.png',
                            color: semiIcon1, scale: 0.7),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
