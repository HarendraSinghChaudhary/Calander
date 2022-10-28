

import 'dart:convert';
import 'dart:io';

import 'package:calcu_lien/utils/endpoints.dart';
import 'package:http/http.dart' as http;
import 'package:mime_type/mime_type.dart';
import 'package:http_parser/http_parser.dart';

Future uploadFile(File file)async{
  String mimeType = mime(file.path.split("/").last).toString();
try {
  var request = http.MultipartRequest('POST', Uri.parse(fileUploade));

request.files.add(await http.MultipartFile.fromPath('contract', file.path, filename: file.path.split("/").last,contentType: MediaType("application",mimeType.split("/").last)));

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
 var res = await response.stream.bytesToString();
 
 print(res);
 return jsonDecode(res)["extract_request_id"]+","+jsonDecode(res)["convert_request_id"];
 
}
else {
print(response.reasonPhrase);
}
} catch (e) {
  
}
}

Future uploadDetail(
  String extract_request_id,
  String convert_request_id,
  String email,
  String first_name,
  String last_name,
  String company,
  String role,
  String city,
  String state
)async{
  
}