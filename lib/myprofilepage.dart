import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            const Color(0xffAAFADB),
            const Color(0xff6787A8),
          ], begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.0, 1.0),
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: SizedBox(height: 25, width: 25, child: Image.asset('assets/images/left.png',))),
                  IconButton(onPressed: (){}, icon: SizedBox(height: 25, width: 25,
                      child: Image.asset('assets/images/settings.png'))),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 85, width: 85,
                      child: Image.asset('assets/images/avatar.png')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Active Since - ', style: TextStyle(fontFamily: 'Inter', fontSize: 12),),
                      Text('July 2019', style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 12)),
                    ],
                  ),

                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Personal Information', style: TextStyle(fontFamily: 'JosefinSans', fontSize: 13),),
                      Row(
                        children: [
                          SizedBox(
                            height: 18, width: 18,
                              child: Image.asset('assets/images/edit.png')),
                          Text('Edit', style: TextStyle(fontFamily: 'Inter', color: Color(0xff2E57FB), fontWeight: FontWeight.w500, fontSize: 13), ),
                        ]
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Container(width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffDAFFE9), borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                      child: Image.asset('assets/images/email.png'), height: 25, width: 25,),
                                  SizedBox(width: 4,),
                                  Text('Email', style: TextStyle(fontFamily: 'JoseLight',),)
                                ],
                              ),
                              Text('abcd@gmail.com', style: TextStyle(fontFamily: 'JosefinSans'),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 3,),
                      Container(width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffDAFFE9),
                        ),child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Image.asset('assets/images/phone.png'), height: 25, width: 25,),
                                    SizedBox(width: 4,),
                                    Text('Phone', style: TextStyle(fontFamily: 'JoseLight',),)
                                  ],
                                ),
                                Text('+919255XXX635', style: TextStyle(fontFamily: 'JosefinSans'),),
                              ],
                            ),
                          ),
                      ),
                      SizedBox(height: 3,),
                      Container(width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffDAFFE9),
                        ),child:  Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    child: Image.asset('assets/images/linkedin.png'), height: 25, width: 25,),
                                  SizedBox(width: 4,),
                                  Text('Linkedin', style: TextStyle(fontFamily: 'JoseLight',),)
                                ],
                              ),
                              Text('www.linkedin.com/abcdy', style: TextStyle(fontFamily: 'JosefinSans'),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 3,),
                      Container(width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffDAFFE9), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))
                        ), child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Image.asset('assets/images/website.png'), height: 25, width: 25,),
                                    SizedBox(width: 4,),
                                    Text('Website', style: TextStyle(fontFamily: 'JoseLight',),)
                                  ],
                                ),
                                Text('www.randomweb.com', style: TextStyle(fontFamily: 'JosefinSans'),),
                              ],
                            ),
                          ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Utilities', style: TextStyle(fontFamily: 'JosefinSans', fontSize: 13),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Container(width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffDAFFE9), borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    child: Image.asset('assets/images/analytics.png'), height: 25, width: 25,),
                                  SizedBox(width: 6,),
                                  Text('User Analytics', style: TextStyle(fontFamily: 'JosefinSans',),)
                                ],
                              ),
                              SizedBox(height: 25, width: 25,
                                child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/right.png'), style: ButtonStyle(padding: MaterialStateProperty.all(
                                  EdgeInsets.zero
                                ),tapTargetSize: MaterialTapTargetSize.shrinkWrap),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 3,),
                      Container(width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffDAFFE9),
                        ),child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    child: Image.asset('assets/images/accountset.png'), height: 25, width: 25,),
                                  SizedBox(width: 6,),
                                  Text('Account Settings', style: TextStyle(fontFamily: 'JosefinSans',),)
                                ],
                              ),
                              SizedBox(height: 25, width: 25,
                                child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/right.png'), style: ButtonStyle(padding: MaterialStateProperty.all(
                                    EdgeInsets.zero
                                ),tapTargetSize: MaterialTapTargetSize.shrinkWrap),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 3,),
                      Container(width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffDAFFE9),
                        ),child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    child: Image.asset('assets/images/helpdesk.png'), height: 25, width: 25,),
                                  SizedBox(width: 6,),
                                  Text('HelpDesk', style: TextStyle(fontFamily: 'JosefinSans',),)
                                ],
                              ),
                              SizedBox(height: 25, width: 25,
                                child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/right.png'), style: ButtonStyle(padding: MaterialStateProperty.all(
                                    EdgeInsets.zero
                                ),tapTargetSize: MaterialTapTargetSize.shrinkWrap),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 3,),
                      Container(width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffDAFFE9), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)
                        ),
                      ), child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    child: Image.asset('assets/images/logout.png'), height: 25, width: 25,),
                                  SizedBox(width: 6,),
                                  Text('Log Out', style: TextStyle(fontFamily: 'JosefinSans',),)
                                ],
                              ),
                              SizedBox(height: 25, width: 25,
                                child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/right.png'), style: ButtonStyle(padding: MaterialStateProperty.all(
                                    EdgeInsets.zero
                                ),tapTargetSize: MaterialTapTargetSize.shrinkWrap),),
                              ),
                            ],
                          ),
                      ),)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
