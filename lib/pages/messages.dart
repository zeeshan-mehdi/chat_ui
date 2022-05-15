
import 'package:chat_ui/pages/widgets/search_widget_background.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {

  var chats = [1,2,3,4,5];
  var pages = [ChatPage(),Text('Second Page'),Text('Third Page')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFFFFFF),
        child: ListView(
          children:  [

            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text('Messages',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),


            SearchWidgetBorder(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none
                ),
              ),
            ),


            ...chats.map<Widget>((e){
              return ListTile(
                leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        'assets/user.png'
                    )
                ),
                title: Text('Sara',style: TextStyle(fontSize: 18,color: Colors.black),),
                subtitle: Text('Last Message .. ',style: TextStyle(fontSize: 18,color: Color(0xFF7C7C7C),),
                ),
                onTap: (){

                },
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Text('1 hr',style: TextStyle(fontSize: 14,color: Color(0xFF7C7C7C),),
                  ),
                ),
              );
            }),

          ],
        ),
      ),

      bottomNavigationBar:  BottomNavigationBar(items: const [
         BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/group.png'),),label: ''),
        BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/coolicon.png'),),label: ''),
        BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/settings.png'),),label: ''),
      ],

      )
    );
  }
}

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  var chats = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFF),
      child: ListView(
        children:  [

          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text('Messages',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),


          SearchWidgetBorder(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none
              ),
            ),
          ),


          ...chats.map<Widget>((e){
            return ListTile(
              leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      'assets/user.png'
                  )
              ),
              title: Text('Sara',style: TextStyle(fontSize: 18,color: Colors.black),),
              subtitle: Text('Last Message .. ',style: TextStyle(fontSize: 18,color: Color(0xFF7C7C7C),),
              ),
              onTap: (){

              },
              trailing: Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text('1 hr',style: TextStyle(fontSize: 14,color: Color(0xFF7C7C7C),),
                ),
              ),
            );
          }),

        ],
      ),
    );
  }
}

