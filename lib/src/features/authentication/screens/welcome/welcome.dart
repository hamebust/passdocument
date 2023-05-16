
import 'package:flutter/material.dart';

class WelcomeSreen extends StatelessWidget{  
  const WelcomeSreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(".appable/"), leading: const Icon(Icons.ondemand_video)),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.add_shopping_cart_outlined), onPressed: (){},),
      body: Padding( padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text("Heading", style: Theme.of(context).textTheme.titleLarge,),
            Text("Sub-heading", style: Theme.of(context).textTheme.titleMedium,),
            Text("Paragraph", style: Theme.of(context).textTheme.titleSmall,),
            ElevatedButton(onPressed: () {}, child: const Text("Elevated Button"),),
            OutlinedButton(onPressed: () {}, child: const Text("Outlined Button"),),
            const Padding(padding: EdgeInsets.all(20.0),
              child: Image(image: AssetImage("assets/images/iglulogo.gif")),
            ),
          ],
        ),
      
       ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
