import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
            centerTitle: true,
            elevation: 1,
            backgroundColor: Colors.blue.shade400,
            leading: Container(
              margin: const EdgeInsets.all(10.0),
              child: const CircleAvatar(
                backgroundImage: AssetImage('dimas.png'),
                backgroundColor: Colors.white,
              ),
            ),
            title: SizedBox(
              child:  
                Image.asset('assets/twitter_logo.png'
                ),
                width: 40,
              ),
            actions: const <Widget> [
              Icon(Icons.auto_awesome_sharp
              ),
            ],
          ),

        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          onTap: (int i) {},
          items : const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ("")),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ("")),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ("")),
            BottomNavigationBarItem(icon: Icon(Icons.mail), label: ("")),
          ],
        ),
        body: _body(),
        floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      );
  }

  Widget _body()
  {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, i)=>
      Column(
        children: [
          const Divider(height: 5.0,),
          ListTile(
            leading: const CircleAvatar(backgroundImage: AssetImage('dimas.png'),
            ),
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Dimas Maulana", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    Text("@bukandendimas", style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal, color: Colors.grey),),
                    Text(". a week ago", style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal, color: Colors.grey),),
                  ],
                ),
              ],
            ),
            subtitle: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Text('persiapan ikut tes cpns bareng',),
                const Text('@billieilish', style: TextStyle(color: Colors.blue),),
                const SizedBox(height: 5,),
                Image.asset('billy.png'),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.chat_bubble_outline, color: Colors.grey,),
                    Icon(Icons.repeat, color: Colors.grey,),
                    Icon(Icons.favorite_border, color: Colors.grey,),
                    Icon(Icons.share, color: Colors.grey,),
                  ],
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}