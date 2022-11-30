import 'package:flutter/material.dart';

class PaginaSearch extends StatelessWidget {
  const PaginaSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                textAlign: TextAlign.right,
                'Búsqueda',
                style:TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 36.0
                ),
              ),
            ),
          ),
          body: Column(
          children: const <Widget>[
            SearchInput(),
          ],
          ),
      ),
    );
  }
}

//Barra de Busqueda
class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<SearchInput> createState() => _SearchInputState();
}
class _SearchInputState extends State<SearchInput> {
  TextEditingController textController = TextEditingController();

  //dropdownMenu
  String dropdowntipodocumento = 'Libros';
  var itemsbooks = [
    'Libros',
    'Revistas',
    'Ensayos',
    'Tesis',
    'Artículos',
    'Informes'
  ];

  String dropdowndate = '2022';
  var itemsdates = [
    '2022',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
    '2015'
  ];

  String dropdowntopic = 'Educación';
  var itemstopic = [
    'Educación',
    'Literatura',
    'Tecnología',
    'Filosofía',
    'Psicología',
    'Administración de Empresas',
    'Medicina'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none
                        ),
                        hintText: 'Buscar Libros, Autores...',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18
                        ),
                        prefixIcon: Container(
                          padding: const EdgeInsets.all(15),
                          width: 18,
                          child: Image.asset('assets/149852.png'),
                        )
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only (left: 10),
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    width: 45,
                    child: Image.asset(
                        'assets/1159641.png')
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 8),
              child: const Text(
                textAlign: TextAlign.left,
                'Búsquedas Avanzadas',
                style:TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 32.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              alignment: Alignment.centerLeft,
              child: const Text(
                textAlign: TextAlign.left,
                'Tipo de documento',
                style:TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            ),
            DropdownButton(
              value: dropdowntipodocumento,
              icon: const Icon(Icons.keyboard_arrow_down),
              iconSize: 24,
              elevation: 16,
              underline: Container(
                height: 2,
                color: Colors.deepOrangeAccent,
              ),
              style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
              ),
              isExpanded: true,
              items: itemsbooks.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState((){
                  dropdowntipodocumento = newValue!;
                });
              },
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 16, 8, 8),
              alignment: Alignment.centerLeft,
              child: const Text(
                textAlign: TextAlign.left,
                'Año de Publicación',
                style:TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            ),
            DropdownButton(
              value: dropdowndate,
              icon: const Icon(Icons.keyboard_arrow_down),
              iconSize: 24,
              elevation: 16,
              underline: Container(
                height: 2,
                color: Colors.deepOrangeAccent,
              ),
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
              isExpanded: true,
              items: itemsdates.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState((){
                  dropdowndate = newValue!;
                });
              },
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 16, 8, 8),
              alignment: Alignment.centerLeft,
              child: const Text(
                textAlign: TextAlign.left,
                'Temas',
                style:TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            ),
            DropdownButton(
              value: dropdowntopic,
              icon: const Icon(Icons.keyboard_arrow_down),
              iconSize: 24,
              elevation: 16,
              underline: Container(
                height: 2,
                color: Colors.deepOrangeAccent,
              ),
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
              isExpanded: true,
              items: itemstopic.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState((){
                  dropdowntopic = newValue!;
                });
              },
            ),
            Padding (
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: ElevatedButton (
                    child: const Text("Aplicar filtros"),
                    onPressed: (){}
                )
            )
          ],
        ),
      ),
    );
  }
}
