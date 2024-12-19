import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  final String email = "abcd@gmail.com";
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              const Color(0xffAAFADB),
              const Color(0xff6787A8),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: SizedBox(
                            height: MediaQuery.of(context).size.height * .04,
                            width: MediaQuery.of(context).size.width * .07,
                            child: Image.asset(
                              'assets/images/left.png',
                            ))),
                    IconButton(
                        onPressed: () {},
                        icon: SizedBox(
                            height: MediaQuery.of(context).size.height * .04,
                            width: MediaQuery.of(context).size.width * .07,
                            child: Image.asset('assets/images/settings.png'))),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .018,
                ),
                Column(
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height * .15,
                        width: MediaQuery.of(context).size.width * .25,
                        child: Image.asset('assets/images/avatar.png')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Active Since - ',
                          style: TextStyle(fontFamily: 'Inter', fontSize: 12),
                        ),
                        Text('July 2019',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 12)),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .085,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Personal Information',
                          style:
                              TextStyle(fontFamily: 'JosefinSans', fontSize: 13),
                        ),
                        PopupMenuButton(
                          color: Colors.white,
                          surfaceTintColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          offset: Offset(0, 25),
                          itemBuilder: (context) => [
                            PopupMenuItem<int>(
                              value: 0,
                              onTap: () {
                                Get.defaultDialog(
                                    title: 'Edit Email',
                                    titlePadding: EdgeInsets.only(top: 20),
                                    titleStyle: TextStyle(fontSize: 18),
                                    confirm: TextButton(
                                      onPressed: () {},
                                      child: Text('Yes'),
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all(
                                              EdgeInsets.zero),
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap),
                                    ),
                                    cancel: TextButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: Text('No'),
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all(
                                              EdgeInsets.zero),
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap),
                                    ),
                                    content: TextField(
                                      controller: emailController,
                                      decoration: InputDecoration(

                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 10));
                              },
                              child: ListTile(
                                leading: SizedBox(
                                  child: Image.asset('assets/images/email.png'),
                                  height: MediaQuery.of(context).size.height * .1,
                                  width: MediaQuery.of(context).size.width * .06,
                                ),
                                title: Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .016,
                                    ),
                                    Text(
                                      'Email',
                                      style: TextStyle(
                                        fontFamily: 'JoseLight',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            PopupMenuItem<int>(
                              value: 1,
                              child: ListTile(
                                leading: SizedBox(
                                  child: Image.asset('assets/images/phone.png'),
                                  height: MediaQuery.of(context).size.height * .1,
                                  width: MediaQuery.of(context).size.width * .06,
                                ),
                                title: Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .016,
                                    ),
                                    Text(
                                      'Phone',
                                      style: TextStyle(
                                        fontFamily: 'JoseLight',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            PopupMenuItem<int>(
                              value: 2,
                              child: ListTile(
                                leading: SizedBox(
                                  child:
                                      Image.asset('assets/images/linkedin.png'),
                                  height: MediaQuery.of(context).size.height * .1,
                                  width: MediaQuery.of(context).size.width * .06,
                                ),
                                title: Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .016,
                                    ),
                                    Text(
                                      'Linkedin',
                                      style: TextStyle(
                                        fontFamily: 'JoseLight',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            PopupMenuItem<int>(
                              value: 3,
                              child: ListTile(
                                leading: SizedBox(
                                  child: Image.asset('assets/images/website.png'),
                                  height: MediaQuery.of(context).size.height * .1,
                                  width: MediaQuery.of(context).size.width * .06,
                                ),
                                title: Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .016,
                                    ),
                                    Text(
                                      'Website',
                                      style: TextStyle(
                                        fontFamily: 'JoseLight',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                          child: Row(children: [
                            SizedBox(
                                height: MediaQuery.of(context).size.height * .022,
                                width: MediaQuery.of(context).size.width * .04,
                                child: Image.asset('assets/images/edit.png')),
                            Text(
                              'Edit',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: Color(0xff2E57FB),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),
                          ]),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .027,
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .058,
                          decoration: BoxDecoration(
                            color: Color(0xffDAFFE9),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      child:
                                          Image.asset('assets/images/email.png'),
                                      height:
                                          MediaQuery.of(context).size.height * .1,
                                      width:
                                          MediaQuery.of(context).size.width * .06,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .016,
                                    ),
                                    Text(
                                      'Email',
                                      style: TextStyle(
                                        fontFamily: 'JoseLight',
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'abcd@gmail.com',
                                  style: TextStyle(fontFamily: 'JosefinSans'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .0038,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .058,
                          decoration: BoxDecoration(
                            color: Color(0xffDAFFE9),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      child:
                                          Image.asset('assets/images/phone.png'),
                                      height:
                                          MediaQuery.of(context).size.height * .1,
                                      width:
                                          MediaQuery.of(context).size.width * .06,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .016,
                                    ),
                                    Text(
                                      'Phone',
                                      style: TextStyle(
                                        fontFamily: 'JoseLight',
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  '+919255XXX635',
                                  style: TextStyle(fontFamily: 'JosefinSans'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .0038,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .058,
                          decoration: BoxDecoration(
                            color: Color(0xffDAFFE9),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Image.asset(
                                          'assets/images/linkedin.png'),
                                      height:
                                          MediaQuery.of(context).size.height * .1,
                                      width:
                                          MediaQuery.of(context).size.width * .06,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .016,
                                    ),
                                    Text(
                                      'Linkedin',
                                      style: TextStyle(
                                        fontFamily: 'JoseLight',
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  'www.linkedin.com/abcdy',
                                  style: TextStyle(fontFamily: 'JosefinSans'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .0038,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .058,
                          decoration: BoxDecoration(
                              color: Color(0xffDAFFE9),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Image.asset(
                                          'assets/images/website.png'),
                                      height:
                                          MediaQuery.of(context).size.height * .1,
                                      width:
                                          MediaQuery.of(context).size.width * .06,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .016,
                                    ),
                                    Text(
                                      'Website',
                                      style: TextStyle(
                                        fontFamily: 'JoseLight',
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  'www.randomweb.com',
                                  style: TextStyle(fontFamily: 'JosefinSans'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .015,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Utilities',
                          style:
                              TextStyle(fontFamily: 'JosefinSans', fontSize: 13),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .015,
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .058,
                          decoration: BoxDecoration(
                            color: Color(0xffDAFFE9),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Image.asset(
                                          'assets/images/analytics.png'),
                                      height:
                                          MediaQuery.of(context).size.height * .1,
                                      width:
                                          MediaQuery.of(context).size.width * .06,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .018,
                                    ),
                                    Text(
                                      'User Analytics',
                                      style: TextStyle(
                                        fontFamily: 'JosefinSans',
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * .1,
                                  width: MediaQuery.of(context).size.width * .06,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('assets/images/right.png'),
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.zero),
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .0038,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .058,
                          decoration: BoxDecoration(
                            color: Color(0xffDAFFE9),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Image.asset(
                                          'assets/images/accountset.png'),
                                      height:
                                          MediaQuery.of(context).size.height * .1,
                                      width:
                                          MediaQuery.of(context).size.width * .06,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .018,
                                    ),
                                    Text(
                                      'Account Settings',
                                      style: TextStyle(
                                        fontFamily: 'JosefinSans',
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * .1,
                                  width: MediaQuery.of(context).size.width * .06,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('assets/images/right.png'),
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.zero),
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .0038,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .058,
                          decoration: BoxDecoration(
                            color: Color(0xffDAFFE9),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Image.asset(
                                          'assets/images/helpdesk.png'),
                                      height:
                                          MediaQuery.of(context).size.height * .1,
                                      width:
                                          MediaQuery.of(context).size.width * .07,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .018,
                                    ),
                                    Text(
                                      'HelpDesk',
                                      style: TextStyle(
                                        fontFamily: 'JosefinSans',
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * .1,
                                  width: MediaQuery.of(context).size.width * .06,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('assets/images/right.png'),
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.zero),
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .0038,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .058,
                          decoration: BoxDecoration(
                            color: Color(0xffDAFFE9),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      child:
                                          Image.asset('assets/images/logout.png'),
                                      height:
                                          MediaQuery.of(context).size.height * .1,
                                      width:
                                          MediaQuery.of(context).size.width * .06,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .018,
                                    ),
                                    Text(
                                      'Log Out',
                                      style: TextStyle(
                                        fontFamily: 'JosefinSans',
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * .1,
                                  width: MediaQuery.of(context).size.width * .06,
                                  child: IconButton(
                                    onPressed: () {
                                      Get.defaultDialog(
                                          title: 'Log Out',
                                          titlePadding: EdgeInsets.only(top: 20),
                                          titleStyle: TextStyle(fontSize: 18),
                                          confirm: TextButton(
                                            onPressed: () {},
                                            child: Text('Yes'),
                                            style: ButtonStyle(
                                                padding:
                                                    MaterialStateProperty.all(
                                                        EdgeInsets.zero),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap),
                                          ),
                                          cancel: TextButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: Text('No'),
                                            style: ButtonStyle(
                                                padding:
                                                    MaterialStateProperty.all(
                                                        EdgeInsets.zero),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap),
                                          ),
                                          middleText:
                                              'Are you sure, you want to log out?',
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 10));
                                    },
                                    icon: Image.asset('assets/images/right.png'),
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.zero),
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
