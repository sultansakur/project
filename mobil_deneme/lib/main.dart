import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
        Container(
           width:double.infinity,
        height:45 ,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Image.asset("assets/images/logo.png"),
            Row(
              children: [
               Padding(
               padding:const EdgeInsets.all(8.0),
               child: Icon(
                  Icons.add_circle,
                   color: Colors.black87 ,
                    size:20
                    ),
                    ),


              Padding(
              padding:const EdgeInsets.all(8.0), 
              child: Icon(
                  Icons.favorite ,
                   color: Colors.black87 ,
                    size:20
                    ),
              ),
               
               
                Padding(
                padding:const EdgeInsets.all(8.0),
                child:Icon(
                  Icons.send ,
                   color: Colors.black87 , 
                   size:20
                   ),
                ),
              ],
            ),


        ],)
        ),
       
       
      
       Expanded(
        child :Container(
        child: SingleChildScrollView(
          child:  Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                children: [
                  StoryWidget("assets/images/p2.jpg" , "deniiz.st"),
                  StoryWidget("assets/images/p3.jpg" , "nurr.hlvc"),
                  StoryWidget("assets/images/p4.jpg" , "busekzld"),
                  StoryWidget("assets/images/p5.jpg" , "iansomerhalder"),
                  StoryWidget("assets/images/p6.jpg" , "nina"),
                  StoryWidget("assets/images/p7.jpg" , "andysamberg"),
                  StoryWidget("assets/images/p2.jpg" , "deniiz.st"),
                  StoryWidget("assets/images/p3.jpg" , "nurr.hlvc"),
                  StoryWidget("assets/images/p4.jpg" , "busekzld"),
                  StoryWidget("assets/images/p5.jpg" , "iansomerhalder"),
                  StoryWidget("assets/images/p6.jpg" , "nina"),
                  StoryWidget("assets/images/p7.jpg" , "andysamberg"),
                  
          
                ],
              )
              ),
              PostItem( "assets/images/p5.jpg" , "assets/images/post5.jpg" , "iansomerhalder" , "İstanbul"),
              PostItem( "assets/images/p1.jpg" , "assets/images/post1.jpg" , "cereen.st" , "İstanbul/kuzguncuk"),
              PostItem( "assets/images/p6.jpg" , "assets/images/post6.jpg" , "nina" , "15Temmuz sehitler koprusu"),
              PostItem( "assets/images/p2.jpg" , "assets/images/post7.jpg" , "denizz.st" , "Kocaeli"),
              PostItem( "assets/images/p3.jpg" , "assets/images/post10.jpg" , "nur.hlvc" , "isparta"),
              PostItem( "assets/images/p4.jpg" , "assets/images/post9.jpg" , "buse.kzld" , "su"),
            ],
            ),
        )
          ),
          ),
        Container(
           width:double.infinity,
           height: 60,
           decoration:BoxDecoration(
            border:Border.all(
              color:Colors.black12,
               ),
           ),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.home , size:28, color: Colors.black87),
              ),
               Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.search , size:28, color: Colors.black87),
              ),
               Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.smart_display , size:28, color: Colors.black87),
              ),
               Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.favorite , size:28, color: Colors.black87),
              ),
               Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.person , size:28, color: Colors.black87),
              ),


            ],
            )
           ),
        ]
        ),
      )
    );
  }

  Container PostItem(String avatar , String photo , String name, String location ) => Container(
    child: Column(
      children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(avatar,
         ),
               radius: 20,
            ),
            SizedBox(width:10 ,),
            Column(
                     

              crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                Text(name, 
                style:TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                ),
       
                Text(location, 
                style:TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                ),
                ),
       
       
              ],
            ),
       
          ],
         ),
     
    
       ),
       Image.asset(photo),
       LikeCommentBox(),
        CommentBox("busekzld","çok güzel durmuslar cok begendim"),
        CommentBox("nurhlvc","sen cekmissin gibi net ve güzel harika sekerim cok iyi misssssssssssssssssssssssssssssssssssssssssssssssssssss"),
        CommentBox("sultansakur","cok tatli bi fotograf "),
      ],
    ),
  );

  Padding LikeCommentBox() {
    return Padding(
       padding: const EdgeInsets.all(8.0),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.black87),
              SizedBox(width: 8,),
              Icon(Icons.comment_bank_outlined , color: Colors.black87),
            ],
          ),
          Icon(Icons.flag_circle_outlined ,color: Colors.black87),
                            ],
       ),
     );
  }

  Padding CommentBox(String name, String comment) {
    return Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
          Expanded(
            child: RichText(
              maxLines:3,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: name,
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 12,

                    ),
                  ),
                  TextSpan(text:" "),
                  TextSpan(
                    text: comment,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),

            ),
            ),
          ],
        ),
      );
  } 
   
  


  Widget StoryWidget( String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration:  BoxDecoration(
                          color: Colors.green,
                          gradient: LinearGradient(colors: [
                          const Color.fromRGBO(214, 71, 103, 1),
                          const Color.fromRGBO(241, 166, 117, 1),


                     ] ),
                          shape:BoxShape.circle,

                        ),
                  
                        child: Container(
                          padding:EdgeInsets.all(1) ,
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(avatar),
                            radius: 35,
                                
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(

                        name,
                         style: TextStyle(
                          fontSize:11),),
                    ],
                  ),
    );
  }
}

  Widget StoryWidget2() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/p2.jpg"),
                        radius: 40,
        
                      ),
                      SizedBox(height: 5,),
                      Text("deniiz.st", style: TextStyle(fontSize:11),),
                    ],
                  ),
    );
  
  }

    Widget StoryWidget3() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/p3.jpg"),
                        radius: 40,
        
                      ),
                      SizedBox(height: 5,),
                      Text("nurr.hlvc",  style: TextStyle(fontSize:11),),
                    ],
                  ),
    );
  }


    Widget StoryWidget4() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/p4.jpg"),
                        radius: 40,
        
                      ),
                      SizedBox(height: 5,),
                      Text("buse.kzld",  style: TextStyle(fontSize:11),),
                    ],
                  ),
    );
  }