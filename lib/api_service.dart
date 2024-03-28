import 'dart:convert';

import 'package:http/http.dart' as http;
//Start with Array.....

// Future<List<dynamic>> getData() async{
//   var data;
//   var res = await http.get(Uri.parse('https://dummyjson.com/products'));
//
//   if(res.statusCode==200){
//     data=jsonDecode(res.body);
//     return data;
//   }else{
//     throw Exception('Error');
//   }
// }

//Start with object.........

getData() async{
  var data;
  var res = await http.get(Uri.parse('https://dummyjson.com/products'));

  if(res.statusCode==200){
    data=jsonDecode(res.body);
    return data;
  }else{
    throw Exception('Error');
  }
}