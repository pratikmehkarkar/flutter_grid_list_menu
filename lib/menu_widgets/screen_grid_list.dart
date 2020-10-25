//created by Pratik Mehkarkar
import 'package:flutter/material.dart';

enum GridListDemoType
{
  imageOnly
}

class Screen_Three extends StatelessWidget
{
  const Screen_Three({Key key, this.type}) : super(key: key);
  final GridListDemoType type;

  List<_Photo> _photos(BuildContext context)
  {
    return [
      _Photo(
        assetName: 'images/d1.jpg',
      ),
      _Photo(
        assetName: 'images/d2.jpeg',
      ),
      _Photo(
        assetName: 'images/d3.jpg',
      ),
      _Photo(
        assetName: 'images/d4.jpeg',
      ),
      _Photo(
        assetName: 'images/d5.jpg',
      ),
      _Photo(
        assetName: 'images/d6.jpg',
      ),
      _Photo(
        assetName: 'images/d7.jpg',
      ),
      _Photo(
        assetName: 'images/d8.jpg',
      ),
      _Photo(
        assetName: 'images/d9.jpeg',
      ),
      _Photo(
        assetName: 'images/d10.jpeg',
      ),
      _Photo(
        assetName: 'images/d11.jpg',
      ),
      _Photo(
        assetName: 'images/d12.jpg',
      ),
    ];
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dogs Images Gallery"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        padding: const EdgeInsets.all(8),
        childAspectRatio: 1,
        children: _photos(context).map<Widget>((photo) {
          return _GridDemoPhotoItem(
            photo: photo,
            tileStyle: type,
          );
        }).toList(),
      ),
    );
  }
}

class _GridDemoPhotoItem extends StatelessWidget
{
  _GridDemoPhotoItem({
    Key key,
    @required this.photo,
    @required this.tileStyle,
  }) : super(key: key);

  final _Photo photo;
  final GridListDemoType tileStyle;

  @override
  Widget build(BuildContext context) {
    final Widget image = Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      clipBehavior: Clip.antiAlias,
      child: Image.asset(
        photo.assetName,
        fit: BoxFit.cover,
      ),
    );

    //GridListDemoType.imageOnly:
    return image;
  }
}
class _Photo {
  _Photo({
    this.assetName,
  });
  final String assetName;

}
