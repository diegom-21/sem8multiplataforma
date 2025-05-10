import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/page2': (context) => ButtonsPage(), // Página de los botones
        '/page3': (context) => FAQPage(), // Página de las preguntas
        '/page4': (context) => FormPage(), // Página de el formulario
        '/page5': (context) => CalculadoraPage(), // Página de la calculadora

      },
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 90, 110, 241),  // Azul más claro
              Color.fromARGB(255, 25, 29, 86),   // Azul más oscuro
            ],
          ),
        ),
        child: Center(
          child: Container(
            width: 350,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nombre de usuario", style: TextStyle(fontSize: 16)),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: 'Ingresa tu nombre de usuario',
                    border: UnderlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Text("Contraseña", style: TextStyle(fontSize: 16)),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Ingresa tu contraseña',
                    border: UnderlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/page2');
                    },
                    child: Text(
                      "Iniciar sesión",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text("¿Olvidó su contraseña?"),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("¿No tienes cuenta?"),
                    SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Crear",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// Nueva página con los botones
class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 90, 110, 241),  // Azul más claro
              Color.fromARGB(255, 25, 29, 86),   // Azul más oscuro
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Contenedor para los botones
              Container(
                width: 350,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: Size(350, 50), // Ancho fijo
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/page3');
                      },
                      child: Text(
                        "Mostrar preguntas",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold, // Negrita
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: Size(350, 50), // Ancho fijo
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/page4');
                      },
                      child: Text(
                        "Formulario",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold, // Negrita
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: Size(350, 50), // Ancho fijo
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/page5');
                      },
                      child: Text(
                        "Calculadora",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold, // Negrita
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Botón de Cerrar sesión fuera de la caja
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(350, 50), // Ancho fijo
                ),
                onPressed: () {
                  // Acción para cerrar sesión
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                },
                child: Text(
                  "Cerrar sesión",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold, // Negrita
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Nueva página preguntas

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 90, 110, 241),  // Azul más claro
              Color.fromARGB(255, 25, 29, 86),   // Azul más oscuro
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: faqList.length,
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    title: Text(
                      faqList[index].question,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          faqList[index].answer,
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            // Botón de regresar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Color de fondo del botón
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);  // Regresar a la página anterior
                },
                child: Text(
                  "Regresar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}

// Lista de preguntas y respuestas
List<FAQItem> faqList = [
  FAQItem(
    question: '¿Cómo puedo cambiar mi contraseña?',
    answer: 'Para cambiar tu contraseña, ve a la sección de configuración y busca la opción "Cambiar contraseña".',
  ),
  FAQItem(
    question: '¿Cuáles son los métodos de pago aceptados?',
    answer: 'Aceptamos tarjetas de crédito, transferencias bancarias y pagos en efectivo en nuestras sucursales.',
  ),
  FAQItem(
    question: '¿Cómo puedo contactar con soporte?',
    answer: 'Puedes contactar con soporte a través del chat en la aplicación o por correo electrónico.',
  ),
  FAQItem(
    question: '¿Cómo restablecer mi contraseña?',
    answer: 'En la pantalla de inicio de sesión, selecciona la opción "Olvidé mi contraseña" y sigue las instrucciones.',
  ),
  FAQItem(
    question: '¿Dónde puedo ver mi historial de pedidos?',
    answer: 'Puedes ver tu historial de pedidos en la sección "Mis pedidos" dentro de tu cuenta.',
  ),
  FAQItem(
    question: '¿Cómo puedo actualizar mi información personal?',
    answer: 'Ve a la sección "Perfil" en tu cuenta, donde podrás actualizar tu nombre, dirección de correo y otros detalles.',
  ),
  FAQItem(
    question: '¿Puedo cancelar mi pedido después de realizarlo?',
    answer: 'Depende del estado del pedido. Si no ha sido enviado, puedes cancelarlo desde la opción "Mis pedidos". Si ya fue enviado, contacta con soporte.',
  ),
  FAQItem(
    question: '¿Cómo activar la autenticación de dos factores?',
    answer: 'Puedes activar la autenticación de dos factores desde la sección de "Seguridad" en tu configuración de cuenta.',
  ),
  FAQItem(
    question: '¿Puedo modificar la dirección de envío después de realizar un pedido?',
    answer: 'Lamentablemente, no es posible modificar la dirección de envío una vez que el pedido ha sido confirmado. Contacta con soporte para más detalles.',
  ),
  FAQItem(
    question: '¿Qué debo hacer si mi pago fue rechazado?',
    answer: 'Si tu pago fue rechazado, verifica los detalles de tu tarjeta o método de pago. Si el problema persiste, contacta con soporte.',
  ),
];


// Pagina de formulario

class FormPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController dniController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 90, 110, 241),  // Azul más claro
              Color.fromARGB(255, 25, 29, 86),   // Azul más oscuro
            ],
          ),
        ),
        child: Center(
          child: Container(
            width: 350,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nombre", style: TextStyle(fontSize: 16)),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Ingresa tu nombre',
                    border: UnderlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Text("Apellido", style: TextStyle(fontSize: 16)),
                TextField(
                  controller: surnameController,
                  decoration: InputDecoration(
                    hintText: 'Ingresa tu apellido',
                    border: UnderlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Text("DNI", style: TextStyle(fontSize: 16)),
                TextField(
                  controller: dniController,
                  decoration: InputDecoration(
                    hintText: 'Ingresa tu DNI',
                    border: UnderlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/page2');
                    },
                    child: Text(
                      "Guardar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Pagina calculadora
class CalculadoraPage extends StatelessWidget {
  const CalculadoraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double size01 = 30;
    const double size02 = 30;

    Widget crearbotonblancos(String text) {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.all(2.0),
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: size01,
                color: const Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    }

    Widget crearbotonVerdes(String text) {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.all(2.0),
          color: Color.fromARGB(255, 0, 0, 0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: size01, 
                color: Color.fromARGB(255, 6, 146, 11),
                fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    }

    Widget crearbotonIgual(String text) {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.all(2.0),
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Center(
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 6, 146, 11),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: size01,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget crearbotonRojo(String text) {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.all(2.0),
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: size02,
              color: Color.fromARGB(255, 211, 4, 4),
              fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    }

    Widget crearbotonGrises(String text) {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.all(2.0),
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: size02,
              color: Color.fromARGB(255, 165, 164, 164),
              fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: <Widget>[
          // Pantalla de la calculadora
          Expanded(
            flex: 2,
            child: Container(
              color: const Color.fromARGB(255, 0, 0, 0),
              child: const Center(
                child: Text(
                  "0",
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 146, 11),
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Fila de botones
          Expanded(
            child: Row(
              children: <Widget>[
                crearbotonGrises("🕐"),
                crearbotonGrises("📏"),
                crearbotonGrises("√"),
                crearbotonVerdes("⌫"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                crearbotonRojo("C"),
                crearbotonVerdes("()"),
                crearbotonVerdes("%"),
                crearbotonVerdes("÷"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                crearbotonblancos("7"),
                crearbotonblancos("8"),
                crearbotonblancos("9"),
                crearbotonVerdes("X"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                crearbotonblancos("4"),
                crearbotonblancos("5"),
                crearbotonblancos("6"),
                crearbotonVerdes("—"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                crearbotonblancos("1"),
                crearbotonblancos("2"),
                crearbotonblancos("3"),
                crearbotonVerdes("+"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                crearbotonblancos("+/-"),
                crearbotonblancos("0"),
                crearbotonblancos("."),
                crearbotonIgual("="),
              ],
            ),
          ),
          // Botón de regresar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Color de fondo del botón
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/page2');  // Regresar a la página de botones
              },
              child: Text(
                "Regresar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
