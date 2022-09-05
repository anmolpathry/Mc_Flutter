import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isAccessSelected = false;
  bool isTimerSelected = false;
  bool isAndroidSelected = false;
  bool isIphoneSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mc Flutter'),
      ),
      body: 
      Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black87)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    size: 45
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flutter McFlutter",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                  ),
                  Text(
                    "Experienced App Developer",
                    style: TextStyle(fontWeight: FontWeight.w400)
                  ),
                ],
              )
              ],
            ),
            SizedBox(height:12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("123 Main Street"),
                Text("(415) 555-0198")
              ],
            ),
            SizedBox(height:12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                    onPressed: (){
                      ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          content: Text("Únete a un club con otras personas"),
                        )
                      );

                    isAccessSelected = !isAccessSelected;
                    //isTimerSelected = false;
                    //isAndroidSelected = false;
                    //isIphoneSelected = false;
                    setState(() {
                      
                    });

                    }, 
                      icon: Icon(
                        Icons.accessibility,
                        color: isAccessSelected ? Colors.indigo : Colors.black,
                      )
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: (){
                      ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          content: Text("Cuenta regresiva para el evento: 31 días"),
                        )
                      );

                    //isAccessSelected = false;
                    isTimerSelected = !isTimerSelected;
                    //isAndroidSelected = false;
                    //isIphoneSelected = false;
                    setState(() {
                      
                    });
                    }, 
                      icon: Icon(
                        Icons.timer,
                        color: isTimerSelected ? Colors.indigo : Colors.black,
                      )
                    )
                  ],
                ),
                Column(
                  children: [
                     IconButton(
                      onPressed: (){
                      ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          content: Text("Llama al número 4155550198"),
                        )
                      );
                    //isAccessSelected = false;
                    //isTimerSelected = false;
                    isAndroidSelected = !isAndroidSelected;
                    //isIphoneSelected = false;
                    setState(() {
                      
                    });
                    }, 
                      icon: Icon(
                        Icons.phone_android,
                        color: isAndroidSelected ? Colors.indigo : Colors.black,
                      )
                    )
                  ],
                ),
                Column(
                  children: [
                     IconButton(
                      onPressed: (){
                      ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          content: Text("Llama al celular 3317865113"),
                        )
                      );
                    //isAccessSelected = false;
                    //isTimerSelected = false;
                    //isAndroidSelected = false;
                    isIphoneSelected = !isIphoneSelected;
                    setState(() {
                      
                    });
                    }, 
                      icon: Icon(
                        Icons.phone_iphone,
                        color: isIphoneSelected ? Colors.indigo : Colors.black,
                      )
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )
    );
  }
}