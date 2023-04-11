import 'package:flutter/material.dart';

class ImageEx extends StatelessWidget {
  const ImageEx({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // if you only need to wrap a column or row without any properties just use SizedBox instead Container
      child: Column(
        children: const [
          Text("Image"),
          Image(
            image: NetworkImage(
              "https://png.pngtree.com/element_our/sm/20171207/sm_5a28d9b745ba1.jpg",
              // scale: 20, //scaling an image
            ),
            // fit: BoxFit.fill, //use fit when you wrap a Image inside a SizedBox or Container
            // alignment: Alignment.bottomCenter, //align a image if wrap inside a Sizedbox or Container
            // repeat: ImageRepeat.repeatY, //repeating an image inside a Box
            height: 150,
          ),
          SizedBox(
            height: 30,
          ), //add a spacing
          Text("image with sizedbox"),
          SizedBox(
            height: 150,
            width: 300,
            child: Image(
              image: NetworkImage(
                  "https://png.pngtree.com/element_our/sm/20171207/sm_5a28d9b745ba1.jpg"),
              alignment: Alignment.bottomRight,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text("circle avatar"),
          CircleAvatar(
            // automatically make a image circle
            // wrap in a SizedBox or Container for change the width or height
            backgroundImage: NetworkImage(
              "https://png.pngtree.com/element_our/sm/20171207/sm_5a28d9b745ba1.jpg",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text("circle avatar with sized box and assetImage"),
          SizedBox(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundColor:
                  Colors.black, //change background behind the images
              backgroundImage: AssetImage(
                "lib/app/assets/images/getx.png", //please refer to pubspec.yaml for import a file, see the word with: assets: directory/
              ),
            ),
          )
        ],
      ),
    );
  }
}
