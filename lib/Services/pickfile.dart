


import 'package:file_picker/file_picker.dart';

Future filePicker()async{
  FilePickerResult? result = await FilePicker.platform.pickFiles(
  type: FileType.custom,
  allowedExtensions: ['pdf', 'doc', 'docx'],
);
if(result!=null){
  return result.files.first.path;
}
}