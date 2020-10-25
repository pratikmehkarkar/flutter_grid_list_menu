import 'package:flutter/material.dart';

enum ListDemoType {
  oneLine,
  twoLine,
}

class Screen_Four extends StatelessWidget
{
  const Screen_Four({Key key, this.type}) : super(key: key);
  final ListDemoType type;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of Dog Breeds"),
      ),
      body: Scrollbar(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: [
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text("A")),
                ),
                title: Text("Affenpinscher"),
                subtitle: Text("Loyal, curious, and famously amusing"),
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text("A")),
                ),
                title: Text("Airedale Terrier"),
                subtitle: Text("The King of Terriers"),
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text("B")),
                ),
                title: Text("Barbet"),
                subtitle: Text("An archetypic water dog of France"),
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text("B")),
                ),
                title: Text("Basenji"),
                subtitle: Text("Africa’s Barkless Dog"),
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text("C")),
                ),
                title: Text("Canaan Dog"),
                subtitle: Text("The national dog of Israel"),
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text("C")),
                ),
                title: Text("Cane Corso"),
                subtitle: Text("Smart and Trainable"),
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text("D")),
                ),
                title: Text("Doberman Pinscher"),
                subtitle: Text("Sleek and Powerful"),
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text("D")),
                ),
                title: Text("Dogo Argentino"),
                subtitle: Text("A pack-hunting dog"),
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text("E")),
                ),
                title: Text("Estrela Mountain Dog"),
                subtitle: Text("An excellent livestock guardian"),
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text("F")),
                ),
                title: Text("Field Spaniel"),
                subtitle: Text("Sweet and Sensitive"),
              ),
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text("F")),
                ),
                title: Text("Flat-Coated Retriever"),
                subtitle: Text("Forever Young"),
              ),
            ],
          )),
    );
  }

}