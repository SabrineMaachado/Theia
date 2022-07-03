import 'package:flutter/material.dart';

void main() {
  runApp(const CardExamplesApp());
}

class CardExamplesApp extends StatelessWidget {
  const CardExamplesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Categoria',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: const <Widget>[
            Spacer(),
            CategoryAnimals(),
            CategoryPeoples(),
            CategoryPlaces(),
            CategoryHome(),
            CategoryWhatIs(),
            CategorySchool(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class CategoryAnimals extends StatelessWidget {
  const CategoryAnimals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Color.fromARGB(255, 87, 34, 210),
        child: InkWell(
          splashColor: Color.fromARGB(255, 223, 56, 253).withAlpha(200),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(
              child: Text(
                'Animais',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryPeoples extends StatelessWidget {
  const CategoryPeoples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Color.fromARGB(255, 210, 34, 210),
        child: InkWell(
          splashColor: Color.fromARGB(255, 244, 56, 238).withAlpha(200),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(
              child: Text(
                'Pessoas',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryPlaces extends StatelessWidget {
  const CategoryPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Color.fromARGB(255, 84, 34, 210),
        child: InkWell(
          splashColor: Color.fromARGB(255, 56, 138, 253).withAlpha(200),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(
              child: Text(
                'Lugares',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryHome extends StatelessWidget {
  const CategoryHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Color.fromARGB(255, 46, 210, 34),
        child: InkWell(
          splashColor: Color.fromARGB(255, 56, 253, 102).withAlpha(200),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(
              child: Text(
                'Casa',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryWhatIs extends StatelessWidget {
  const CategoryWhatIs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Color.fromARGB(255, 210, 104, 34),
        child: InkWell(
          splashColor: Color.fromARGB(255, 253, 177, 56).withAlpha(200),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(
              child: Text(
                'O que e, O que e?',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategorySchool extends StatelessWidget {
  const CategorySchool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Color.fromARGB(255, 34, 210, 184),
        child: InkWell(
          splashColor: Color.fromARGB(255, 56, 253, 207).withAlpha(200),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(
              child: Text(
                'Escola',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
