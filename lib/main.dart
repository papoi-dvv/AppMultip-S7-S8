import 'package:flutter/material.dart';
import 'styles.dart';

void main() => runApp(MyApp());

class AppData {
  static String userEmail = "";
  static String loginTime = "";
  static List<String> personasRegistradas = [];
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/menu': (context) => MenuScreen(),
        '/registrar': (context) => RegisterScreen(),
        '/lista': (context) => ListScreen(),
        '/perfil': (context) => ProfileScreen(),
      },
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      AppData.userEmail = _emailController.text;
      DateTime now = DateTime.now();
      AppData.loginTime = "${now.day}/${now.month}/${now.year} ${now.hour}:${now.minute.toString().padLeft(2, '0')}";
      Navigator.pushReplacementNamed(context, '/menu');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.vpn_key, size: 80, color: AppStyles.primaryColor),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                decoration: AppStyles.inputDecoration("Correo Electrónico"),
                validator: (v) => (v == null || v.isEmpty) ? "Campo requerido" : null,
              ),
              SizedBox(height: 15),
              TextFormField(
                obscureText: true,
                decoration: AppStyles.inputDecoration("Contraseña"),
                validator: (v) => (v == null || v.isEmpty) ? "Campo requerido" : null,
              ),
              SizedBox(height: 25),
              ElevatedButton(style: AppStyles.buttonStyle, onPressed: _login, child: Text("LOGIN")),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menú"), backgroundColor: AppStyles.primaryColor, foregroundColor: Colors.white),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _btn(context, "Registrar Personas", Icons.add_circle, '/registrar'),
          _btn(context, "Lista de Personas", Icons.list, '/lista'),
          _btn(context, "Ver Perfil", Icons.person, '/perfil'),
          SizedBox(height: 20),
          TextButton(onPressed: () => Navigator.pushReplacementNamed(context, '/'), child: Text("Cerrar Sesión", style: TextStyle(color: Colors.red))),
        ],
      ),
    );
  }

  Widget _btn(BuildContext context, String txt, IconData icon, String route) => Card(
    child: ListTile(
      leading: Icon(icon, color: AppStyles.primaryColor),
      title: Text(txt),
      onTap: () => Navigator.pushNamed(context, route),
    ),
  );
}

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();

  void _save() {
    if (_formKey.currentState!.validate()) {
      AppData.personasRegistradas.add(_nameCtrl.text);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registro")),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            _field(_nameCtrl, "Nombre"),
            _field(TextEditingController(), "Edad"),
            _field(TextEditingController(), "Usuario"),
            _field(TextEditingController(), "DNI"),
            _field(TextEditingController(), "Teléfono"),
            SizedBox(height: 20),
            ElevatedButton(style: AppStyles.buttonStyle, onPressed: _save, child: Text("GUARDAR")),
          ],
        ),
      ),
    );
  }

  Widget _field(TextEditingController c, String l) => Padding(
    padding: EdgeInsets.only(bottom: 15),
    child: TextFormField(controller: c, decoration: AppStyles.inputDecoration(l), validator: (v) => (v == null || v.isEmpty) ? "Requerido" : null),
  );
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista")),
      body: AppData.personasRegistradas.isEmpty
          ? Center(child: Text("Lista vacía"))
          : ListView.builder(
              itemCount: AppData.personasRegistradas.length,
              itemBuilder: (context, i) => ListTile(leading: Icon(Icons.person), title: Text(AppData.personasRegistradas[i])),
            ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Perfil")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle, size: 100, color: AppStyles.primaryColor),
            Text("Usuario: Admin", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Email: ${AppData.userEmail}"),
            Text("Login: ${AppData.loginTime}"),
          ],
        ),
      ),
    );
  }
}