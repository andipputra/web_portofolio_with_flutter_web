import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/state_management/content_cubit/content_cubit.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  String currentTile = 'Home';
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;

    var _contentCubit = context.read<ContentCubit>();

    return BlocListener<ContentCubit, ContentState>(
        listener: (context, state) {
          switch (state.type) {
            case ContentType.home:
              setState(() {
                currentTile = 'Home';
              });
              break;
            case ContentType.about:
              setState(() {
                currentTile = 'About';
              });
              break;
            case ContentType.experience:
              setState(() {
                currentTile = 'Experience';
              });
              break;
            case ContentType.education:
              setState(() {
                currentTile = 'Education';
              });
              break;
            case ContentType.contact:
              setState(() {
                currentTile = 'Contact';
              });
              break;
          }
        },
        child: Drawer(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DrawerHeader(child: Text('Disini Foto')),
                DrawerListTile(
                  judul: 'Home',
                  isSelected: currentTile == 'Home' ? true : false,
                  onPress: () {
                    _contentCubit.changeType(selectedType: 'Home');
                  },
                ),
                DrawerListTile(
                  judul: 'About',
                  isSelected: currentTile == 'About' ? true : false,
                  onPress: () {
                    _contentCubit.changeType(selectedType: 'About');
                  },
                ),
                DrawerListTile(
                  judul: 'Experience',
                  isSelected: currentTile == 'Experience' ? true : false,
                  onPress: () {
                    _contentCubit.changeType(selectedType: 'Experience');
                  },
                ),
                DrawerListTile(
                  judul: 'Education',
                  isSelected: currentTile == 'Education' ? true : false,
                  onPress: () {
                    _contentCubit.changeType(selectedType: 'Education');
                  },
                ),
                DrawerListTile(
                  judul: 'Contact',
                  isSelected: currentTile == 'Contact' ? true : false,
                  onPress: () {
                    _contentCubit.changeType(selectedType: 'Contact');
                  },
                )
              ],
            ),
          ),
        ));
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    this.isSelected = false,
    required this.judul,
    required this.onPress,
  }) : super(key: key);

  final bool isSelected;
  final String judul;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isSelected,
      selectedTileColor: Colors.blue,
      title: Text(judul,
          style: isSelected
              ? TextStyle(color: Colors.white)
              : TextStyle(color: Colors.black)),
      onTap: onPress,
    );
  }
}
