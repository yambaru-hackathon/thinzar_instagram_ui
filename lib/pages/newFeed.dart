import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> posts = ['https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png',
'https://t4.ftcdn.net/jpg/02/16/28/19/360_F_216281970_6gotBzdxtFD6vjh7RGmcc4X2JpJz3pr0.jpg', 
'https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 
'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
'https://images.unsplash.com/photo-1509043759401-136742328bb3?ixlib=rb-4.0.3']; 

  @override
class NewFeed extends StatelessWidget {
  const NewFeed ({super.key});
  
  @override
  Widget build(BuildContext context) {
    ;
    return Scaffold(
      appBar: AppBar(title: const Text('Instagram \n 投稿',
      style:TextStyle(
        fontSize: 15, ),
        ),
        ),
      
      body: SingleChildScrollView(
       child:  Column(
          children: [
            for ( var post in posts ) PostTile(imagelinklist: post)
          ],
        ),
          
    ),
    );
    
  }
}
class PostTile extends StatelessWidget {

  const PostTile({Key? key,required this.imagelinklist}) :
super(key : key);

final imagelinklist;

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Card(
     child: Column(
       children: [
         Padding(
           padding: const EdgeInsets.fromLTRB(10,5,10,0),
           child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(1,1,10,0),
                          child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png',
                          height: 30,
                          width: 30,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(7, 5, 10, 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Instagram', 
                                 style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 10),
                                 ),
                                 Text('サンディエゴ', 
                                 style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 10),
                                 ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Column(
                          children : [TextButton(onPressed: (){}, 
                          child: 
                            Icon(Icons.more_horiz, color: Colors.black,),
                          ),
                          ],
                        ),
                ],
              ),
         ),
         
         Photo(imageUrl: imagelinklist),
    
         Padding(
           padding: const EdgeInsets.all(3),
           child: Row(
              children: [
                IconButton(
                  onPressed: (){
                    Icon(CupertinoIcons.heart_fill);
                  }, 
                  icon: Icon(Icons.favorite_border_sharp)
                 ),
                 IconButton(
                  onPressed: (){}, 
                  icon: Icon(CupertinoIcons.chat_bubble)
                 ),
                 IconButton(
                  onPressed: (){}, 
                  icon: Icon(CupertinoIcons.paperplane)
                 ),
                 Spacer(),
                 IconButton(onPressed: (){
                  Icon(CupertinoIcons.bookmark_fill);
                 }, icon: Icon(Icons.bookmark_border)),
                ],
            ),
         ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Row(
              children: [
                Text('「いいね！」704,899 件'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Container(
                    width: 330,
                    child: Text(
                    'instagram "Style and sustainablikty don\'t have to be two separate things. They can be one and the same, and sustainable living itself should be ....',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                    ),  
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(9, 0, 10, 0),
            child: Row(
                children: [
                  Text('コメント',
                     style: TextStyle(color: Colors.grey,
                     fontSize: 12,),
                     ),
                ],
              ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 1, 5, 1),
            child: Row(
              children: [
                Text('6 hours ago',
                   style: TextStyle(color: Colors.grey,
                   fontSize: 9,),),
              ],
            ),
          )
       ],
      ),
          ),
        );
  }
}

class Photo extends StatelessWidget {
  const Photo({Key? key,required this.imageUrl}) :
super(key : key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network( 
      imageUrl,
      fit: BoxFit.cover,);
  }
  }
