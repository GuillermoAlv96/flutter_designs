import 'package:flutter/material.dart';

class BasicScreenDesign extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/landscape.jpg'),
          ),
          //Title
          Title(),
          //Button Section
          ButtonSection(),
          //Description
          Description()
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Text('Fragmento de un escrito con unidad temática, que queda diferenciado del resto de fragmentos por un punto y aparte y generalmente también por llevar letra mayúscula inicial y un espacio en blanco en el margen izquierdo de alineación del texto principal de la primera línea.'),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                icon: Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),

              Text('data')
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: Icon(
                  Icons.map_sharp,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),

              Text('route')
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: Icon(
                  Icons.share,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),

              Text('share')
            ],
          ),

        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' Hola Mundo ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(' Adios Mundo ')
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}
