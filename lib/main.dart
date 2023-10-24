import 'package:cedesapp/Pagina1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const Pagina1(),
    );
  }
}


//INTRODUCCION 
//tendras que pasar lo que esta en la paagina del cedes mayormente es texto e imagenes y ya te deje ambos codigos para que puedas hacerlo
//trata de ser ordenado conj tus imagenes y ponlos en carpetas dentro de ASSETS


/*
cuando quieras agreagr imagenes debes ponerlas en la carpeta ASSETS y luego ve al archivo "pubspec.yaml"
aqui vas a agreagr todas las imagenes que pongas en la carpeta de la siguienrte manera 
- assets/talleresalbarrada.jpeg cuida los espacios o de lo contrario te marcara error




 uses-material-design: true   ///dejabadjo de este textop en ese archivo podras agregar tus imaegnes

  assets:
    - assets/banner.jpg        
    - assets/lcedes.jpg
    - assets/home1.jpg        
    - assets/infraverde.jpg 
    - assets/talleresalbarrada.jpeg







///////////////////////////////////////////////////

para crear una pagina nueva debes agregar la libreria 
import 'package:flutter/material.dart';


luego para crear un  StatelessWidget solo te bastara escribir "sta" y te aparecerea el resto
o puedes copiar y modificar las paginas que ta te deje 


////////////////////////////////////////////////////////////////////////



por ejemplo en el
 ListTile(
        leading: Icon(Icons.info),      
        title: Text('Pagina3'),          
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Pagina3()),   //aqui donde dice pagina3 agregaras las pag nuevas, para hacerlo borra pagina3 y mpeiza a escribir el nombre y te aparecera en opcjones 
          );
        },
      ),



///////////////////////////////////////////////////////////////

hay varias librerias por ejemplo  esta 
import 'package:flutter_web_browser/flutter_web_browser.dart';    // es para que pueda abrir el navegador
te servira por ejemplo con el boton que te deje y para la seccion denoticias o el slider que esas abren el navegadpoor





import 'package:carousel_slider/carousel_slider.dart';  //esta es la libreria para el sliderbar de la pagina2








*/