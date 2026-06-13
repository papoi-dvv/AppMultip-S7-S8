import 'package:flutter/cupertino.dart';

import 'styles.dart';

void main() => runApp(const MyApp());

class Person {
  Person({
    required this.name,
    required this.age,
    required this.username,
    required this.dni,
    required this.phone,
    required this.birthDate,
  });

  String name;
  String age;
  String username;
  String dni;
  String phone;
  DateTime birthDate;
}

class AppData {
  static String userName = "Admin";
  static String userEmail = "";
  static String loginTime = "";
  static List<Person> personasRegistradas = [];
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: AppStyles.cupertinoTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/menu': (context) => const MenuScreen(),
        '/registrar': (context) => const RegisterScreen(),
        '/lista': (context) => const ListScreen(),
        '/perfil': (context) => const ProfileScreen(),
      },
    );
  }
}

String? _requiredValidator(String? value, {String message = 'Requerido'}) {
  return (value == null || value.trim().isEmpty) ? message : null;
}

String _formatDate(DateTime date) {
  final day = date.day.toString().padLeft(2, '0');
  final month = date.month.toString().padLeft(2, '0');
  return '$day/$month/${date.year}';
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      AppData.userEmail = _emailController.text;
      DateTime now = DateTime.now();
      AppData.loginTime =
          "${now.day}/${now.month}/${now.year} ${now.hour}:${now.minute.toString().padLeft(2, '0')}";
      Navigator.pushReplacementNamed(context, '/menu');
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppStyles.backgroundColor,
      child: DecoratedBox(
        decoration: AppStyles.pageBackground,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      AppIcons.loginSecurity,
                      size: 82,
                      color: AppColors.oldRose,
                    ),
                    const SizedBox(height: AppSpacing.lg),
                    Text(
                      'Flutter People Manager',
                      textAlign: TextAlign.center,
                      style: AppStyles.titleLarge,
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      'Acceso seguro - Semana 9',
                      textAlign: TextAlign.center,
                      style: AppStyles.captionText,
                    ),
                    const SizedBox(height: AppSpacing.xxl),
                    CupertinoFormSection.insetGrouped(
                      backgroundColor: CupertinoColors.transparent,
                      decoration: AppStyles.cardDecoration,
                      children: [
                        CupertinoTextFormFieldRow(
                          controller: _emailController,
                          prefix: const Icon(
                            CupertinoIcons.mail,
                            color: AppColors.oldRose,
                          ),
                          placeholder: 'Correo Electrónico',
                          placeholderStyle: AppTextStyles.placeholder,
                          style: AppStyles.bodyText,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          validator: (value) => _requiredValidator(
                            value,
                            message: 'Campo requerido',
                          ),
                        ),
                        CupertinoTextFormFieldRow(
                          controller: _passwordController,
                          prefix: const Icon(
                            CupertinoIcons.lock,
                            color: AppColors.oldRose,
                          ),
                          placeholder: 'Contraseña',
                          placeholderStyle: AppTextStyles.placeholder,
                          style: AppStyles.bodyText,
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                          validator: (value) => _requiredValidator(
                            value,
                            message: 'Campo requerido',
                          ),
                          onFieldSubmitted: (_) => _login(),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.xl),
                    SizedBox(
                      width: double.infinity,
                      child: CupertinoButton.filled(
                        borderRadius: AppRadius.medium,
                        padding: AppButtonStyles.primaryPadding,
                        onPressed: _login,
                        child: const Text('LOGIN'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppStyles.backgroundColor,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Menú'),
        backgroundColor: AppColors.snowPetal,
      ),
      child: DecoratedBox(
        decoration: AppStyles.pageBackground,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: AppSpacing.page,
            child: Column(
              children: [
                _MenuButton(
                  title: 'Registrar Personas',
                  icon: AppIcons.addPerson,
                  route: '/registrar',
                ),
                const SizedBox(height: AppSpacing.md),
                _MenuButton(
                  title: 'Lista de Personas',
                  icon: AppIcons.list,
                  route: '/lista',
                ),
                const SizedBox(height: AppSpacing.md),
                _MenuButton(
                  title: 'Ver Perfil',
                  icon: AppIcons.profile,
                  route: '/perfil',
                ),
                const SizedBox(height: AppSpacing.xl),
                CupertinoButton(
                  padding: AppButtonStyles.secondaryPadding,
                  onPressed: () => Navigator.pushReplacementNamed(context, '/'),
                  child: Text(
                    'Cerrar Sesión',
                    style: AppTextStyles.buttonSecondary.copyWith(
                      color: AppColors.deepMagenta,
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

class _MenuButton extends StatelessWidget {
  const _MenuButton({
    required this.title,
    required this.icon,
    required this.route,
  });

  final String title;
  final IconData icon;
  final String route;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () => Navigator.pushNamed(context, route),
      child: Container(
        width: double.infinity,
        padding: AppSpacing.card,
        decoration: AppStyles.gridCardDecoration,
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: AppDecorations.sakuraPetal,
              child: Icon(icon, color: AppColors.oldRose),
            ),
            const SizedBox(width: AppSpacing.lg),
            Expanded(
              child: Text(
                title,
                style: AppStyles.bodyText.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            const Icon(
              CupertinoIcons.chevron_forward,
              color: AppColors.inkSoft,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PersonFormScreen();
  }
}

class PersonFormScreen extends StatefulWidget {
  const PersonFormScreen({super.key, this.person, this.index});

  final Person? person;
  final int? index;

  bool get isEditing => person != null && index != null;

  @override
  State<PersonFormScreen> createState() => _PersonFormScreenState();
}

class _PersonFormScreenState extends State<PersonFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameCtrl;
  late final TextEditingController _ageCtrl;
  late final TextEditingController _userCtrl;
  late final TextEditingController _dniCtrl;
  late final TextEditingController _phoneCtrl;
  late DateTime _birthDate;

  @override
  void initState() {
    super.initState();
    final person = widget.person;
    _nameCtrl = TextEditingController(text: person?.name ?? '');
    _ageCtrl = TextEditingController(text: person?.age ?? '');
    _userCtrl = TextEditingController(text: person?.username ?? '');
    _dniCtrl = TextEditingController(text: person?.dni ?? '');
    _phoneCtrl = TextEditingController(text: person?.phone ?? '');
    _birthDate = person?.birthDate ?? DateTime(2000);
  }

  void _save() {
    if (_formKey.currentState!.validate()) {
      final person = Person(
        name: _nameCtrl.text,
        age: _ageCtrl.text,
        username: _userCtrl.text,
        dni: _dniCtrl.text,
        phone: _phoneCtrl.text,
        birthDate: _birthDate,
      );

      if (widget.isEditing) {
        AppData.personasRegistradas[widget.index!] = person;
      } else {
        AppData.personasRegistradas.add(person);
      }

      Navigator.pop(context, true);
    }
  }

  Future<void> _selectBirthDate() async {
    DateTime selectedDate = _birthDate;

    await showCupertinoModalPopup<void>(
      context: context,
      builder: (context) => Container(
        height: 320,
        color: AppColors.snowPetal,
        child: SafeArea(
          top: false,
          child: Column(
            children: [
              SizedBox(
                height: 52,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancelar'),
                    ),
                    CupertinoButton(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      onPressed: () {
                        setState(() => _birthDate = selectedDate);
                        Navigator.pop(context);
                      },
                      child: const Text('Listo'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: _birthDate,
                  maximumDate: DateTime.now(),
                  minimumYear: 1900,
                  maximumYear: DateTime.now().year,
                  onDateTimeChanged: (value) => selectedDate = value,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _ageCtrl.dispose();
    _userCtrl.dispose();
    _dniCtrl.dispose();
    _phoneCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppStyles.backgroundColor,
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.isEditing ? 'Editar Persona' : 'Registro'),
        backgroundColor: AppColors.snowPetal,
      ),
      child: DecoratedBox(
        decoration: AppStyles.pageBackground,
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              padding: AppSpacing.page,
              child: Column(
                children: [
                  CupertinoFormSection.insetGrouped(
                    backgroundColor: CupertinoColors.transparent,
                    decoration: AppStyles.cardDecoration,
                    header: Text(
                      'Datos de la persona',
                      style: AppStyles.captionText,
                    ),
                    children: [
                      _field(
                        controller: _nameCtrl,
                        label: 'Nombre',
                        icon: CupertinoIcons.person,
                        textInputAction: TextInputAction.next,
                      ),
                      _field(
                        controller: _ageCtrl,
                        label: 'Edad',
                        icon: CupertinoIcons.number,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                      ),
                      _field(
                        controller: _userCtrl,
                        label: 'Usuario',
                        icon: CupertinoIcons.person_crop_circle,
                        textInputAction: TextInputAction.next,
                      ),
                      _field(
                        controller: _dniCtrl,
                        label: 'DNI',
                        icon: CupertinoIcons.doc_text,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                      ),
                      _field(
                        controller: _phoneCtrl,
                        label: 'Teléfono',
                        icon: CupertinoIcons.phone,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.done,
                      ),
                      CupertinoListTile(
                        leading: const Icon(
                          CupertinoIcons.calendar,
                          color: AppColors.oldRose,
                        ),
                        title: Text(
                          'Fecha de nacimiento',
                          style: AppStyles.bodyText,
                        ),
                        subtitle: Text(
                          _formatDate(_birthDate),
                          style: AppStyles.captionText,
                        ),
                        trailing: const Icon(
                          CupertinoIcons.chevron_forward,
                          color: AppColors.inkSoft,
                          size: 16,
                        ),
                        onTap: _selectBirthDate,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  SizedBox(
                    width: double.infinity,
                    child: CupertinoButton.filled(
                      borderRadius: AppRadius.medium,
                      padding: AppButtonStyles.primaryPadding,
                      onPressed: _save,
                      child: Text(widget.isEditing ? 'ACTUALIZAR' : 'GUARDAR'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _field({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
  }) {
    return CupertinoTextFormFieldRow(
      controller: controller,
      prefix: Icon(icon, color: AppColors.oldRose),
      placeholder: label,
      placeholderStyle: AppTextStyles.placeholder,
      style: AppStyles.bodyText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      validator: _requiredValidator,
    );
  }
}

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  Future<void> _openDetail(int index) async {
    await Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => PersonDetailScreen(index: index),
      ),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppStyles.backgroundColor,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Lista'),
        backgroundColor: AppColors.snowPetal,
      ),
      child: DecoratedBox(
        decoration: AppStyles.pageBackground,
        child: SafeArea(
          child: AppData.personasRegistradas.isEmpty
              ? Center(child: Text('Lista vacía', style: AppStyles.bodyText))
              : CupertinoListSection.insetGrouped(
                  backgroundColor: CupertinoColors.transparent,
                  header: Text(
                    'Personas registradas',
                    style: AppStyles.captionText,
                  ),
                  children: List<Widget>.generate(
                    AppData.personasRegistradas.length,
                    (index) {
                      final person = AppData.personasRegistradas[index];
                      return CupertinoListTile(
                        leading: const Icon(
                          AppIcons.people,
                          color: AppColors.oldRose,
                        ),
                        title: Text(person.name, style: AppStyles.bodyText),
                        subtitle: Text(
                          '${person.username} · ${_formatDate(person.birthDate)}',
                          style: AppStyles.captionText,
                        ),
                        trailing: const Icon(
                          CupertinoIcons.chevron_forward,
                          color: AppColors.inkSoft,
                          size: 16,
                        ),
                        onTap: () => _openDetail(index),
                      );
                    },
                  ),
                ),
        ),
      ),
    );
  }
}

class PersonDetailScreen extends StatefulWidget {
  const PersonDetailScreen({super.key, required this.index});

  final int index;

  @override
  State<PersonDetailScreen> createState() => _PersonDetailScreenState();
}

class _PersonDetailScreenState extends State<PersonDetailScreen> {
  Future<void> _editPerson() async {
    final person = AppData.personasRegistradas[widget.index];
    final updated = await Navigator.push<bool>(
      context,
      CupertinoPageRoute(
        builder: (context) =>
            PersonFormScreen(person: person, index: widget.index),
      ),
    );

    if (updated == true) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final person = AppData.personasRegistradas[widget.index];

    return CupertinoPageScaffold(
      backgroundColor: AppStyles.backgroundColor,
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Detalle'),
        backgroundColor: AppColors.snowPetal,
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: _editPerson,
          child: const Text('Editar'),
        ),
      ),
      child: DecoratedBox(
        decoration: AppStyles.pageBackground,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: AppSpacing.page,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(AppSpacing.xxl),
                  decoration: AppStyles.cardDecoration,
                  child: Column(
                    children: [
                      const Icon(
                        AppIcons.people,
                        size: 84,
                        color: AppColors.oldRose,
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      Text(person.name, style: AppTextStyles.titleMedium),
                      const SizedBox(height: AppSpacing.xs),
                      Text('@${person.username}', style: AppStyles.captionText),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.xl),
                CupertinoListSection.insetGrouped(
                  backgroundColor: CupertinoColors.transparent,
                  decoration: AppStyles.cardDecoration,
                  children: [
                    _detailTile('Edad', person.age, CupertinoIcons.number),
                    _detailTile('DNI', person.dni, CupertinoIcons.doc_text),
                    _detailTile('Teléfono', person.phone, CupertinoIcons.phone),
                    _detailTile(
                      'Nacimiento',
                      _formatDate(person.birthDate),
                      CupertinoIcons.calendar,
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xl),
                SizedBox(
                  width: double.infinity,
                  child: CupertinoButton.filled(
                    borderRadius: AppRadius.medium,
                    padding: AppButtonStyles.primaryPadding,
                    onPressed: _editPerson,
                    child: const Text('EDITAR USUARIO'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _detailTile(String title, String value, IconData icon) {
    return CupertinoListTile(
      leading: Icon(icon, color: AppColors.oldRose),
      title: Text(title, style: AppStyles.bodyText),
      subtitle: Text(value, style: AppStyles.captionText),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future<void> _editProfile() async {
    final updated = await Navigator.push<bool>(
      context,
      CupertinoPageRoute(builder: (context) => const EditProfileScreen()),
    );

    if (updated == true) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppStyles.backgroundColor,
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Perfil'),
        backgroundColor: AppColors.snowPetal,
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: _editProfile,
          child: const Text('Editar'),
        ),
      ),
      child: DecoratedBox(
        decoration: AppStyles.pageBackground,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: AppSpacing.page,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppSpacing.xxl),
                decoration: AppStyles.cardDecoration,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      AppIcons.profile,
                      size: 96,
                      color: AppColors.oldRose,
                    ),
                    const SizedBox(height: AppSpacing.lg),
                    Text(
                      'Usuario: ${AppData.userName}',
                      style: AppTextStyles.titleMedium,
                    ),
                    const SizedBox(height: AppSpacing.md),
                    Text(
                      'Email: ${AppData.userEmail}',
                      textAlign: TextAlign.center,
                      style: AppStyles.bodyText,
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      'Login: ${AppData.loginTime}',
                      textAlign: TextAlign.center,
                      style: AppStyles.captionText,
                    ),
                    const SizedBox(height: AppSpacing.xl),
                    SizedBox(
                      width: double.infinity,
                      child: CupertinoButton.filled(
                        borderRadius: AppRadius.medium,
                        padding: AppButtonStyles.primaryPadding,
                        onPressed: _editProfile,
                        child: const Text('EDITAR PERFIL'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameCtrl;
  late final TextEditingController _emailCtrl;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: AppData.userName);
    _emailCtrl = TextEditingController(text: AppData.userEmail);
  }

  void _save() {
    if (_formKey.currentState!.validate()) {
      AppData.userName = _nameCtrl.text;
      AppData.userEmail = _emailCtrl.text;
      Navigator.pop(context, true);
    }
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppStyles.backgroundColor,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Editar Perfil'),
        backgroundColor: AppColors.snowPetal,
      ),
      child: DecoratedBox(
        decoration: AppStyles.pageBackground,
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              padding: AppSpacing.page,
              child: Column(
                children: [
                  CupertinoFormSection.insetGrouped(
                    backgroundColor: CupertinoColors.transparent,
                    decoration: AppStyles.cardDecoration,
                    header: Text('Mi usuario', style: AppStyles.captionText),
                    children: [
                      CupertinoTextFormFieldRow(
                        controller: _nameCtrl,
                        prefix: const Icon(
                          CupertinoIcons.person,
                          color: AppColors.oldRose,
                        ),
                        placeholder: 'Usuario',
                        placeholderStyle: AppTextStyles.placeholder,
                        style: AppStyles.bodyText,
                        textInputAction: TextInputAction.next,
                        validator: _requiredValidator,
                      ),
                      CupertinoTextFormFieldRow(
                        controller: _emailCtrl,
                        prefix: const Icon(
                          CupertinoIcons.mail,
                          color: AppColors.oldRose,
                        ),
                        placeholder: 'Correo Electrónico',
                        placeholderStyle: AppTextStyles.placeholder,
                        style: AppStyles.bodyText,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        validator: (value) => _requiredValidator(
                          value,
                          message: 'Campo requerido',
                        ),
                        onFieldSubmitted: (_) => _save(),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  SizedBox(
                    width: double.infinity,
                    child: CupertinoButton.filled(
                      borderRadius: AppRadius.medium,
                      padding: AppButtonStyles.primaryPadding,
                      onPressed: _save,
                      child: const Text('GUARDAR CAMBIOS'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
