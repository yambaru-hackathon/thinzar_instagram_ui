import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 HomePage ({super.key});

final images = ['https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png',
'https://t4.ftcdn.net/jpg/02/16/28/19/360_F_216281970_6gotBzdxtFD6vjh7RGmcc4X2JpJz3pr0.jpg', 
'https://pbs.twimg.com/profile_images/1693367482135023616/Ovf4cg-X_400x400.jpg', 
'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' My Page' , textAlign: TextAlign.center,),  ),
      body: 
      SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                  children: [
                  Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png',
                  height: 70,
                  width: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: 
                    Column(
                      children: [
                        Text('7,413', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),),
                        Text('投稿'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Column(
                    children: [
                      Text('4.6 憶', 
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 16),),
                      Text('フォロワー'),
                    ],
                  ),
                  const SizedBox(width: 15,),
                  Column(
                    children: [
                      Text('99' , 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          fontSize: 16),),
                      Text('フォロー中'),
                    ],
                  )
                  ],
                  ),
            ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Instagram', 
                       style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 16),
                       ),
                       Text('#YoursToMake', 
                       style: TextStyle(
                       color:Colors.blue, ),
                       ),
                       Text('#help.instagram.com', 
                       style: TextStyle(
                       color:Colors.blue, ),
                       ),
                     ],
                   ),
                 ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: OutlinedButton(onPressed: (){}, 
                              child: 
                                Text('フォロー中',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12),),
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
                                  )
                                ),   
                              ),
                            ),
                            const SizedBox(width: 4,),
                            Expanded(
                              child: OutlinedButton(onPressed: (){}, 
                              child: Text('メッセージ' ,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12),),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 2,),
                      OutlinedButton(onPressed: (){}, 
                      child: 
                        Icon(Icons.keyboard_arrow_down, color: Colors.black,),
                        
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                      ),
                      ),
                    ],
                  ),
                ),
                
                GridView.count(
                primary: false,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: images.map((imgUrl) {
                  return InstagramPost(imgUrl: imgUrl);
                }).toList(),
                  
              )
              ],
          ),
      ),
    );
  }
}

class InstagramPost extends StatelessWidget {
  const InstagramPost({Key? key,required this.imgUrl}) :
super(key : key);
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imgUrl,
      fit: BoxFit.cover,);
  }
}