import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class timelineview extends StatelessWidget {
  const timelineview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TimeLine"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(UniconsLine.plus_square),
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){

              showBottomSheet(context: context, 
              builder:(context){
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:NetworkImage(
                        "https://picsum.photos/200/300?random=${index+1}"
                      )
                    ),
                  ),
                );
            },);
            },
            child: Card(
              elevation: 5,
              shadowColor: Colors.grey[100],
          
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  ListTile(contentPadding: EdgeInsets.all(0),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1586716402203-79219bede43c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHBvdHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60"),
                    ),
                    title: Text("Knigt King"),
                    subtitle: Text("2 weeks ago"),
                    trailing: Icon(Icons.more_horiz),
                  ),
                  Text("That was my first time i flew to MAXICO in three years"),
                 SizedBox(
                   height: 10,
                 ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        "https://picsum.photos/200/300?random=${index+1}",
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      )
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Row(children: [
                          Icon(UniconsLine.thumbs_up),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(UniconsLine.comment_message)
                        ],),
                        Icon(UniconsLine.telegram_alt)
                      ],)
          
                ]
                ),
              ),
            )
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 20,
      ),
    );
  }
}
