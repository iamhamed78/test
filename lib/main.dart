// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, unused_field, library_private_types_in_public_api, no_leading_underscores_for_local_identifiers, unnecessary_this, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

enum _SkillType { photoShop, xd, afterEffect, illustrator, lightRoom }

class _MyAppState extends State<MyApp> {
  _SkillType skill = _SkillType.photoShop;
  void UpdateSelectedSkill(_SkillType _skillType) {
    setState(() {
      this.skill = _skillType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.pink,
          brightness: Brightness.dark,
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: Colors.white10),
          primaryColor: const Color.fromARGB(255, 243, 93, 143)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'My Test App',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Icon(
              CupertinoIcons.ellipses_bubble,
              color: Colors.white,
            ),
            SizedBox(
              width: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.ellipsis_vertical,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(32),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/profile_image.png',
                          width: 70.0,
                          height: 70.0,
                        )),
                    SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hamed',
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Text('flutter developer'),
                          SizedBox(
                            height: 3.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.location_circle,
                                size: 18.0,
                              ),
                              Text('Tehran/Iran')
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(
                      CupertinoIcons.heart,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 16.0),
                child: Text(
                    'hi iam hamed from tehran iam 24 years old  this is test app and test text this is test app and test text  this is test app and test text this is test app and test text'),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 5, 10, 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('skills'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      CupertinoIcons.chevron_down,
                      size: 14,
                    ),
                  ],
                ),
              ),
              Center(
                child: Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  direction: Axis.horizontal,
                  children: [
                    skills(
                      type: _SkillType.photoShop,
                      title: 'photoshop',
                      imagepath: 'assets/images/app_icon_01.png',
                      isactive: skill == _SkillType.photoShop,
                      shadowcolor: Colors.blue,
                      ontap: () {
                        UpdateSelectedSkill(_SkillType.photoShop);
                      },
                    ),
                    skills(
                      type: _SkillType.xd,
                      title: 'adobe xd',
                      imagepath: 'assets/images/app_icon_05.png',
                      isactive: skill == _SkillType.xd,
                      shadowcolor: Colors.pink,
                      ontap: () {
                        UpdateSelectedSkill(_SkillType.xd);
                      },
                    ),
                    skills(
                      type: _SkillType.illustrator,
                      title: 'illustrator',
                      imagepath: 'assets/images/app_icon_04.png',
                      isactive: skill == _SkillType.illustrator,
                      shadowcolor: Colors.orange,
                      ontap: () {
                        UpdateSelectedSkill(_SkillType.illustrator);
                      },
                    ),
                    skills(
                      type: _SkillType.afterEffect,
                      title: 'after effect',
                      imagepath: 'assets/images/app_icon_03.png',
                      isactive: skill == _SkillType.afterEffect,
                      shadowcolor: Colors.purple,
                      ontap: () {
                        UpdateSelectedSkill(_SkillType.afterEffect);
                      },
                    ),
                    skills(
                      type: _SkillType.lightRoom,
                      title: 'lightroom',
                      imagepath: 'assets/images/app_icon_02.png',
                      isactive: skill == _SkillType.lightRoom,
                      shadowcolor: Colors.blueAccent,
                      ontap: () {
                        UpdateSelectedSkill(_SkillType.lightRoom);
                      },
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 5, 10, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('personal information'),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(CupertinoIcons.at)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(CupertinoIcons.lock)),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('save')))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class skills extends StatelessWidget {
  final _SkillType type;
  final String title;
  final String imagepath;
  final Color shadowcolor;
  final bool isactive;
  final Function() ontap;
  const skills({
    super.key,
    required this.type,
    required this.title,
    required this.imagepath,
    required this.shadowcolor,
    required this.isactive,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: ontap,
      child: Container(
        decoration: isactive
            ? BoxDecoration(
                color: const Color.fromARGB(45, 255, 255, 255),
                borderRadius: BorderRadius.circular(12))
            : null,
        width: 120,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: isactive
                  ? BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: shadowcolor.withOpacity(0.5), blurRadius: 20)
                    ])
                  : null,
              child: Image.asset(
                imagepath,
                width: 40,
                height: 40,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
