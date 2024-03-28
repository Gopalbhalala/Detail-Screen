import 'package:detail_screen/api_service.dart';
import 'package:detail_screen/two_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('A P I'),),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context,AsyncSnapshot snapshot) {

          if(snapshot.hasData){

            var data = snapshot.data;
            return ListView.builder(
              // itemCount: snapshot.data!.length,
              itemCount: 25,
                itemBuilder: (context,index){
                  return ListTile(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                        builder: (context) => TwoScreen(
                          title: data!['products'][index]['title'],
                          description: data!['products'][index]['description'],
                          brand: data!['products'][index]['brand'],
                          category: data!['products'][index]['category'],
                          thumbnail: data!['products'][index]['thumbnail'],
                          price: data!['products'][index]['price'],
                          rating: data!['products'][index]['rating'],

                        ),));
                    },
                    leading: Image.network(data!['products'][index]['thumbnail']),
                    title: Text(data!['products'][index]['title']),
                    subtitle: Text(data!['products'][index]['description']),
                    trailing: Text(data!['products'][index]['price'].toString()),
                  );
                });
          }else{
            return Center(child: CircularProgressIndicator());
          }


        }
      ),
    );
  }
}
