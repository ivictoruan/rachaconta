import 'package:flutter/material.dart';
import 'package:rachaconta/src/screens/home_screen/widgets/check_widget/check_widget.dart';
import 'package:rachaconta/src/screens/home_screen/widgets/navigation_drawer_widget/navigation_drawer_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: NavigationDrawerWidget() ,
      appBar: AppBar(      
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        title: const Text("Racha Racha"), 
        centerTitle: true,
        elevation: 1,
        
        actions: [
            IconButton(
              onPressed: () => {},
               icon: const Icon(Icons.history),               
            ),
          ],       
      ),

      body: const CheckWidget(),
      
     
    );
  }
}

