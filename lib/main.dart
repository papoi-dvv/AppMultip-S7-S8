import 'package:flutter/cupertino.dart';

import 'styles.dart';

void main() => runApp(const MyApp());

class AppData {
  static String userEmail = "";
  static String loginTime = "";
  static List<String> personasRegistradas = [];
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

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _ageCtrl = TextEditingController();
  final _userCtrl = TextEditingController();
  final _dniCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();

  void _save() {
    if (_formKey.currentState!.validate()) {
      AppData.personasRegistradas.add(_nameCtrl.text);
      Navigator.pop(context);
    }
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
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Registro'),
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
                      child: const Text('GUARDAR'),
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
    ValueChanged<String>? onFieldSubmitted,
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
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

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
                    (index) => CupertinoListTile(
                      leading: const Icon(
                        AppIcons.people,
                        color: AppColors.oldRose,
                      ),
                      title: Text(
                        AppData.personasRegistradas[index],
                        style: AppStyles.bodyText,
                      ),
                      trailing: const Icon(
                        CupertinoIcons.chevron_forward,
                        color: AppColors.inkSoft,
                        size: 16,
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppStyles.backgroundColor,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Perfil'),
        backgroundColor: AppColors.snowPetal,
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
                    Text('Usuario: Admin', style: AppTextStyles.titleMedium),
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
