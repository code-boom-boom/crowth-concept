import 'package:carousel_slider/carousel_slider.dart';
import 'package:crowth/widgets/common/friend_card_item.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExplorerPage extends StatefulWidget {

  @override
  _ExplorerPageState createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {

  int bannerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explorer',style: TextStyle(color: Theme.of(context).accentColor, fontSize: 36, fontWeight: FontWeight.w700),),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,),
            child: InkWell(
              onTap: (){},
              borderRadius: BorderRadius.circular(30),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/icons/message.png'),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Color(0xFF3CE87C),
                            shape: BoxShape.circle
                        ),
                        child: Text('2',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 8,color: Theme.of(context).accentColor),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 4),
            child: InkWell(
              onTap: (){},
              borderRadius: BorderRadius.circular(30),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.more_vert,color: Theme.of(context).accentColor,),
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Container(
              decoration: BoxDecoration(
                color: Color(0xFF95A4AC).withOpacity(0.1),
                borderRadius: BorderRadius.circular(7),
              ),
              height: 40,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    prefixIconConstraints: BoxConstraints(maxWidth: 20, maxHeight: 20),
                    prefixIcon: Icon(Icons.search,color: Color(0xFF95A4AC),),
                    hintText: 'Senior Project Manager, London',
                    hintStyle: TextStyle(color: Color(0xFFAFB1BF))
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            actions: [
              Container(
                padding: EdgeInsets.only(right: 45,top: 8,bottom: 8),
                child: InkWell(
                    onTap: (){},
                    borderRadius: BorderRadius.circular(30),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.close,color: Color(0xFF7F888D),),
                    )
                ),
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Theme.of(context).accentColor,width: 2)
                                ),
                                width: 48,
                                height: 48,
                                child: Image.asset('assets/icons/briefcase.png')
                            ),
                            SizedBox(height: 4,),
                            Text('Find Jobs',style: TextStyle(color: Theme.of(context).accentColor,fontSize: 12),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor,
                                ),
                                width: 48,
                                height: 48,
                                child: Icon(Icons.favorite,color: Colors.white,)
                            ),
                            SizedBox(height: 4,),
                            Text('Help Others',style: TextStyle(color: Theme.of(context).accentColor,fontSize: 12,fontWeight: FontWeight.w700),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Theme.of(context).accentColor,width: 2)
                                ),
                                width: 48,
                                height: 48,
                                child: Image.asset('assets/icons/person_check.png')
                            ),
                            SizedBox(height: 4,),
                            Text('Find Candidates',style: TextStyle(color: Theme.of(context).accentColor,fontSize: 12),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    child: Stack(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                              height: 230.0,
                              viewportFraction: 1.0,
                              onPageChanged: (i,_)=>setState(() { bannerIndex = i;})
                          ),
                          items: [1,2,3,4,5].map((i) {
                            return Stack(
                              children: [
                                Image.asset(
                                  'assets/images/banner1.png',
                                  fit: BoxFit.cover,
                                  height: 230.0,
                                  width: MediaQuery.of(context).size.width,
                                ),
                                Positioned(
                                    left: 10,
                                    right: 10,
                                    bottom: 5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text('Black Lives Matter $i',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700, fontSize: 16),),
                                        Icon(Icons.arrow_forward,color: Colors.white,)
                                      ],
                                    )
                                )
                              ],
                            );
                          }).toList(),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 30,
                          child: DotsIndicator(
                            dotsCount: 5,
                            position: bannerIndex.toDouble(),
                            decorator: DotsDecorator(
                              color: Color(0xFFC1C1C2), // Inactive color
                              activeColor: Color(0xFF121521),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Help friends and get paid',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Theme.of(context).accentColor),),
                        ),
                        Container(
                          height: 190,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            children: [
                              for(int i=0; i<5; i++)
                                FriendCardItem(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Help friends and get paid',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700, color: Theme.of(context).accentColor),),
                        ),
                        Container(
                          height: 190,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            children: [
                              for(int i=0; i<5; i++)
                                FriendCardItem(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                ],
              )
          )
        ],
      ),
    );
  }
}