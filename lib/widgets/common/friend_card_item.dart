import 'package:flutter/material.dart';

class FriendCardItem extends StatefulWidget{

  @override
  _FriendCardItemState createState() => _FriendCardItemState();
}

class _FriendCardItemState extends State<FriendCardItem> {

  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147,
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1.0,
            blurRadius: 5.0,
            offset: Offset(0,2)
          )
        ]
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/person.png',
                  fit: BoxFit.cover,
                  width: 147,
                  height: double.infinity,
                ),
                Positioned(
                  top: 4,
                  right: 4,
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                      child: isLiked
                          ?Icon(Icons.favorite,color: Colors.red,)
                          :Icon(Icons.favorite_border,color: Colors.white,),
                  )
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Maya is interested in',
                  style: TextStyle(fontSize: 12, color: Color(0xFF7F888D)),
                  maxLines: 1,
                ),
                SizedBox(height: 6,),
                Text('Flutter Developer...',
                  style: TextStyle(fontSize: 12,color: Theme.of(context).accentColor,fontWeight: FontWeight.w700),
                  maxLines: 1,
                ),
                SizedBox(height: 6,),
                Text('Chief of Staff',
                  style: TextStyle(fontSize: 12,color: Theme.of(context).accentColor,fontWeight: FontWeight.w700),
                  maxLines: 1,
                ),
                SizedBox(height: 6,),
                Text('London • Remotely',
                  style: TextStyle(fontSize: 12,color: Theme.of(context).accentColor,),
                  maxLines: 1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}