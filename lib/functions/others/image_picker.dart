import 'package:image_picker/image_picker.dart';

Future<String> pickImage() async {
  final pickedimage = await ImagePicker().pickImage(
    source: ImageSource.gallery,
    maxWidth: 1800,
    maxHeight: 1800,
  );
  if (pickedimage == null) {
    
    return 'error';
  } else {
    
    return pickedimage.path;
  }
}
