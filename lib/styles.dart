import 'package:flutter/material.dart';

// ─────────────────────────────────────────────
//  PALETA DE COLORES
// ─────────────────────────────────────────────
class AppColors {
  AppColors._();

  // Primarios
  static const Color primary = Color(0xFF1A73E8);
  static const Color primaryDark = Color(0xFF0D47A1);
  static const Color primaryLight = Color(0xFFE8F0FE);

  // Acento / éxito / error / advertencia
  static const Color accent = Color(0xFF00BFA5);
  static const Color success = Color(0xFF2E7D32);
  static const Color successLight = Color(0xFFE8F5E9);
  static const Color error = Color(0xFFC62828);
  static const Color errorLight = Color(0xFFFFEBEE);
  static const Color warning = Color(0xFFF9A825);
  static const Color warningLight = Color(0xFFFFFDE7);

  // Neutros
  static const Color background = Color(0xFFF5F7FA);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF0F4FF);
  static const Color border = Color(0xFFE0E7FF);
  static const Color divider = Color(0xFFEEEEEE);

  // Texto
  static const Color textPrimary = Color(0xFF1A1F36);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textHint = Color(0xFFB0B7C3);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Sombra
  static const Color shadow = Color(0x1A1A73E8);
  static const Color shadowDark = Color(0x261A1F36);
}

// ─────────────────────────────────────────────
//  TIPOGRAFÍA
// ─────────────────────────────────────────────
class AppTextStyles {
  AppTextStyles._();

  // Display / Encabezados
  static const TextStyle displayLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
    letterSpacing: -1.0,
    height: 1.2,
  );

  static const TextStyle displayMedium = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    letterSpacing: -0.5,
    height: 1.25,
  );

  static const TextStyle headlineLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    letterSpacing: -0.3,
    height: 1.3,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    letterSpacing: -0.2,
    height: 1.35,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 1.4,
  );

  // Cuerpo
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
    height: 1.6,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.55,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.5,
  );

  // Labels / Etiquetas
  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    letterSpacing: 0.1,
  );

  static const TextStyle labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.textSecondary,
    letterSpacing: 0.5,
  );

  static const TextStyle labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: AppColors.textHint,
    letterSpacing: 0.4,
  );

  // Caption / Pie
  static const TextStyle caption = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.45,
  );

  // Botones
  static const TextStyle buttonLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.textOnPrimary,
    letterSpacing: 0.2,
  );

  static const TextStyle buttonMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textOnPrimary,
    letterSpacing: 0.1,
  );
}

// ─────────────────────────────────────────────
//  ESPACIADO
// ─────────────────────────────────────────────
class AppSpacing {
  AppSpacing._();

  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;
  static const double xxxl = 32.0;
  static const double huge = 48.0;

  // EdgeInsets helpers
  static const EdgeInsets paddingXS = EdgeInsets.all(xs);
  static const EdgeInsets paddingSM = EdgeInsets.all(sm);
  static const EdgeInsets paddingMD = EdgeInsets.all(md);
  static const EdgeInsets paddingLG = EdgeInsets.all(lg);
  static const EdgeInsets paddingXL = EdgeInsets.all(xl);
  static const EdgeInsets paddingXXL = EdgeInsets.all(xxl);

  static const EdgeInsets paddingHLG = EdgeInsets.symmetric(horizontal: lg);
  static const EdgeInsets paddingHXL = EdgeInsets.symmetric(horizontal: xl);
  static const EdgeInsets paddingHXXL = EdgeInsets.symmetric(horizontal: xxl);

  static const EdgeInsets paddingVLG = EdgeInsets.symmetric(vertical: lg);
  static const EdgeInsets paddingVXL = EdgeInsets.symmetric(vertical: xl);

  static const EdgeInsets paddingPage =
      EdgeInsets.symmetric(horizontal: xxl, vertical: xl);

  static const EdgeInsets paddingCard =
      EdgeInsets.symmetric(horizontal: xl, vertical: lg);

  static const EdgeInsets paddingInput =
      EdgeInsets.symmetric(horizontal: lg, vertical: md);
}

// ─────────────────────────────────────────────
//  BORDES Y RADIOS
// ─────────────────────────────────────────────
class AppRadius {
  AppRadius._();

  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 28.0;
  static const double full = 100.0;

  static const BorderRadius radiusXS = BorderRadius.all(Radius.circular(xs));
  static const BorderRadius radiusSM = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius radiusMD = BorderRadius.all(Radius.circular(md));
  static const BorderRadius radiusLG = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius radiusXL = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius radiusXXL = BorderRadius.all(Radius.circular(xxl));
  static const BorderRadius radiusFull =
      BorderRadius.all(Radius.circular(full));
}

// ─────────────────────────────────────────────
//  SOMBRAS
// ─────────────────────────────────────────────
class AppShadows {
  AppShadows._();

  static const List<BoxShadow> none = [];

  static const List<BoxShadow> xs = [
    BoxShadow(
      color: AppColors.shadowDark,
      blurRadius: 4,
      offset: Offset(0, 1),
    ),
  ];

  static const List<BoxShadow> sm = [
    BoxShadow(
      color: AppColors.shadowDark,
      blurRadius: 8,
      offset: Offset(0, 2),
    ),
  ];

  static const List<BoxShadow> md = [
    BoxShadow(
      color: AppColors.shadow,
      blurRadius: 16,
      offset: Offset(0, 4),
      spreadRadius: 2,
    ),
  ];

  static const List<BoxShadow> lg = [
    BoxShadow(
      color: AppColors.shadow,
      blurRadius: 24,
      offset: Offset(0, 8),
      spreadRadius: 4,
    ),
  ];

  static const List<BoxShadow> card = [
    BoxShadow(
      color: Color(0x0A1A1F36),
      blurRadius: 12,
      offset: Offset(0, 2),
    ),
    BoxShadow(
      color: Color(0x061A73E8),
      blurRadius: 24,
      offset: Offset(0, 8),
      spreadRadius: 2,
    ),
  ];

  static const List<BoxShadow> button = [
    BoxShadow(
      color: Color(0x401A73E8),
      blurRadius: 16,
      offset: Offset(0, 6),
    ),
  ];
}

// ─────────────────────────────────────────────
//  DECORACIONES DE INPUTS
// ─────────────────────────────────────────────
class AppInputStyles {
  AppInputStyles._();

  static InputDecorationTheme get theme => InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceVariant,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: AppRadius.radiusMD,
          borderSide: const BorderSide(color: AppColors.border, width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadius.radiusMD,
          borderSide: const BorderSide(color: AppColors.border, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadius.radiusMD,
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: AppRadius.radiusMD,
          borderSide: const BorderSide(color: AppColors.error, width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: AppRadius.radiusMD,
          borderSide: const BorderSide(color: AppColors.error, width: 2),
        ),
        labelStyle: AppTextStyles.bodyMedium,
        hintStyle: AppTextStyles.bodyMedium.copyWith(color: AppColors.textHint),
        errorStyle: AppTextStyles.caption.copyWith(color: AppColors.error),
        floatingLabelStyle:
            AppTextStyles.labelMedium.copyWith(color: AppColors.primary),
        prefixIconColor: AppColors.textSecondary,
        suffixIconColor: AppColors.textSecondary,
      );

  /// Decoración básica con ícono opcional
  static InputDecoration decoration({
    required String label,
    String? hint,
    IconData? prefixIcon,
    IconData? suffixIcon,
    Widget? suffixWidget,
    String? errorText,
  }) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      errorText: errorText,
      prefixIcon:
          prefixIcon != null ? Icon(prefixIcon, size: 20) : null,
      suffixIcon: suffixWidget ??
          (suffixIcon != null ? Icon(suffixIcon, size: 20) : null),
    );
  }
}

// ─────────────────────────────────────────────
//  ESTILOS DE BOTONES
// ─────────────────────────────────────────────
class AppButtonStyles {
  AppButtonStyles._();

  /// Botón primario con sombra de color
  static ButtonStyle primary({double? width}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textOnPrimary,
        elevation: 0,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        minimumSize: Size(width ?? 0, 52),
        shape: const RoundedRectangleBorder(
          borderRadius: AppRadius.radiusMD,
        ),
        textStyle: AppTextStyles.buttonLarge,
      );

  /// Botón secundario (outline)
  static ButtonStyle secondary({double? width}) => OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary, width: 1.5),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        minimumSize: Size(width ?? 0, 52),
        shape: const RoundedRectangleBorder(
          borderRadius: AppRadius.radiusMD,
        ),
        textStyle:
            AppTextStyles.buttonLarge.copyWith(color: AppColors.primary),
      );

  /// Botón de texto
  static ButtonStyle text() => TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        shape: const RoundedRectangleBorder(
          borderRadius: AppRadius.radiusSM,
        ),
        textStyle:
            AppTextStyles.buttonMedium.copyWith(color: AppColors.primary),
      );

  /// Botón destructivo / error
  static ButtonStyle danger({double? width}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.error,
        foregroundColor: AppColors.textOnPrimary,
        elevation: 0,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        minimumSize: Size(width ?? 0, 52),
        shape: const RoundedRectangleBorder(
          borderRadius: AppRadius.radiusMD,
        ),
        textStyle: AppTextStyles.buttonLarge,
      );

  /// Botón de éxito
  static ButtonStyle success({double? width}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.success,
        foregroundColor: AppColors.textOnPrimary,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        minimumSize: Size(width ?? 0, 52),
        shape: const RoundedRectangleBorder(
          borderRadius: AppRadius.radiusMD,
        ),
        textStyle: AppTextStyles.buttonLarge,
      );
}

// ─────────────────────────────────────────────
//  DECORACIONES DE CAJAS / TARJETAS
// ─────────────────────────────────────────────
class AppDecorations {
  AppDecorations._();

  static const BoxDecoration card = BoxDecoration(
    color: AppColors.surface,
    borderRadius: AppRadius.radiusLG,
    boxShadow: AppShadows.card,
  );

  static const BoxDecoration cardFlat = BoxDecoration(
    color: AppColors.surface,
    borderRadius: AppRadius.radiusLG,
    border: Border.fromBorderSide(
      BorderSide(color: AppColors.border, width: 1),
    ),
  );

  static const BoxDecoration cardPrimary = BoxDecoration(
    color: AppColors.primaryLight,
    borderRadius: AppRadius.radiusLG,
    border: Border.fromBorderSide(
      BorderSide(color: AppColors.primary, width: 1),
    ),
  );

  static BoxDecoration gradient({
    List<Color> colors = const [AppColors.primary, AppColors.primaryDark],
    BorderRadius borderRadius = AppRadius.radiusLG,
  }) =>
      BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: borderRadius,
        boxShadow: AppShadows.md,
      );

  static const BoxDecoration pageHeader = BoxDecoration(
    gradient: LinearGradient(
      colors: [AppColors.primary, Color(0xFF1557CC)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(AppRadius.xxl),
      bottomRight: Radius.circular(AppRadius.xxl),
    ),
    boxShadow: AppShadows.lg,
  );

  static const BoxDecoration chip = BoxDecoration(
    color: AppColors.primaryLight,
    borderRadius: AppRadius.radiusFull,
    border: Border.fromBorderSide(
      BorderSide(color: AppColors.border, width: 1),
    ),
  );

  static BoxDecoration avatar({double radius = 24}) => BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(radius),
        border: const Border.fromBorderSide(
          BorderSide(color: AppColors.primary, width: 2),
        ),
      );
}

// ─────────────────────────────────────────────
//  DURACIONES DE ANIMACIÓN
// ─────────────────────────────────────────────
class AppDurations {
  AppDurations._();

  static const Duration instant = Duration(milliseconds: 100);
  static const Duration fast = Duration(milliseconds: 200);
  static const Duration normal = Duration(milliseconds: 300);
  static const Duration medium = Duration(milliseconds: 450);
  static const Duration slow = Duration(milliseconds: 600);
  static const Duration verySlow = Duration(milliseconds: 900);
  static const Duration pageTransition = Duration(milliseconds: 350);
}

// ─────────────────────────────────────────────
//  CURVAS DE ANIMACIÓN
// ─────────────────────────────────────────────
class AppCurves {
  AppCurves._();

  static const Curve enter = Curves.easeOutCubic;
  static const Curve exit = Curves.easeInCubic;
  static const Curve inOut = Curves.easeInOutCubic;
  static const Curve bounce = Curves.elasticOut;
  static const Curve spring = Curves.easeOutBack;
  static const Curve sharp = Curves.easeOutExpo;
}

// ─────────────────────────────────────────────
//  WIDGETS ANIMADOS REUTILIZABLES
// ─────────────────────────────────────────────

/// Aparece deslizándose desde abajo con fade
class FadeSlideIn extends StatefulWidget {
  final Widget child;
  final Duration delay;
  final Duration duration;
  final double offsetY;

  const FadeSlideIn({
    super.key,
    required this.child,
    this.delay = Duration.zero,
    this.duration = AppDurations.medium,
    this.offsetY = 24.0,
  });

  @override
  State<FadeSlideIn> createState() => _FadeSlideInState();
}

class _FadeSlideInState extends State<FadeSlideIn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<Offset> _slide;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _opacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: AppCurves.enter),
    );

    _slide = Tween<Offset>(
      begin: Offset(0, widget.offsetY / 100),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: AppCurves.spring));

    Future.delayed(widget.delay, () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacity,
      child: SlideTransition(position: _slide, child: widget.child),
    );
  }
}

/// Botón con efecto de escala al presionar
class ScaleButton extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  final double scaleDown;

  const ScaleButton({
    super.key,
    required this.child,
    this.onTap,
    this.scaleDown = 0.96,
  });

  @override
  State<ScaleButton> createState() => _ScaleButtonState();
}

class _ScaleButtonState extends State<ScaleButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: AppDurations.fast,
    );
    _scale = Tween<double>(begin: 1.0, end: widget.scaleDown).animate(
      CurvedAnimation(parent: _controller, curve: AppCurves.inOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) {
        _controller.reverse();
        widget.onTap?.call();
      },
      onTapCancel: () => _controller.reverse(),
      child: ScaleTransition(scale: _scale, child: widget.child),
    );
  }
}

/// Campo de texto animado con label flotante mejorado
class AnimatedFormField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String? hint;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final int? maxLines;
  final int? maxLength;
  final bool readOnly;
  final VoidCallback? onTap;

  const AnimatedFormField({
    super.key,
    required this.controller,
    required this.label,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.validator,
    this.onChanged,
    this.maxLines = 1,
    this.maxLength,
    this.readOnly = false,
    this.onTap,
  });

  @override
  State<AnimatedFormField> createState() => _AnimatedFormFieldState();
}

class _AnimatedFormFieldState extends State<AnimatedFormField>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _borderWidth;
  late FocusNode _focusNode;
  bool _obscure = true;

  @override
  void initState() {
    super.initState();
    _obscure = widget.obscureText;
    _focusNode = FocusNode();
    _controller = AnimationController(
      vsync: this,
      duration: AppDurations.fast,
    );
    _borderWidth = Tween<double>(begin: 1.5, end: 2.5).animate(
      CurvedAnimation(parent: _controller, curve: AppCurves.inOut),
    );
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return TextFormField(
          controller: widget.controller,
          focusNode: _focusNode,
          obscureText: widget.obscureText && _obscure,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          onChanged: widget.onChanged,
          maxLines: widget.obscureText ? 1 : widget.maxLines,
          maxLength: widget.maxLength,
          readOnly: widget.readOnly,
          onTap: widget.onTap,
          style: AppTextStyles.bodyLarge,
          decoration: InputDecoration(
            labelText: widget.label,
            hintText: widget.hint,
            prefixIcon: widget.prefixIcon != null
                ? AnimatedContainer(
                    duration: AppDurations.fast,
                    child: Icon(
                      widget.prefixIcon,
                      size: 20,
                      color: _focusNode.hasFocus
                          ? AppColors.primary
                          : AppColors.textSecondary,
                    ),
                  )
                : null,
            suffixIcon: widget.obscureText
                ? IconButton(
                    icon: Icon(
                      _obscure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      size: 20,
                      color: AppColors.textSecondary,
                    ),
                    onPressed: () => setState(() => _obscure = !_obscure),
                  )
                : (widget.suffixIcon != null
                    ? Icon(widget.suffixIcon, size: 20,
                        color: AppColors.textSecondary)
                    : null),
            filled: true,
            fillColor: _focusNode.hasFocus
                ? AppColors.surface
                : AppColors.surfaceVariant,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: AppRadius.radiusMD,
              borderSide: BorderSide(
                color: AppColors.border,
                width: _borderWidth.value,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: AppRadius.radiusMD,
              borderSide:
                  const BorderSide(color: AppColors.border, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: AppRadius.radiusMD,
              borderSide: BorderSide(
                color: AppColors.primary,
                width: _borderWidth.value,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: AppRadius.radiusMD,
              borderSide:
                  const BorderSide(color: AppColors.error, width: 1.5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: AppRadius.radiusMD,
              borderSide: const BorderSide(color: AppColors.error, width: 2),
            ),
            labelStyle: AppTextStyles.bodyMedium,
            hintStyle:
                AppTextStyles.bodyMedium.copyWith(color: AppColors.textHint),
            errorStyle:
                AppTextStyles.caption.copyWith(color: AppColors.error),
            floatingLabelStyle:
                AppTextStyles.labelMedium.copyWith(color: AppColors.primary),
          ),
        );
      },
    );
  }
}

/// Tarjeta de empleado con animación hover/press
class EmployeeCard extends StatefulWidget {
  final String name;
  final String role;
  final String department;
  final String? avatarUrl;
  final String employeeId;
  final bool isActive;
  final VoidCallback? onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const EmployeeCard({
    super.key,
    required this.name,
    required this.role,
    required this.department,
    required this.employeeId,
    this.avatarUrl,
    this.isActive = true,
    this.onTap,
    this.onEdit,
    this.onDelete,
  });

  @override
  State<EmployeeCard> createState() => _EmployeeCardState();
}

class _EmployeeCardState extends State<EmployeeCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _hoverController;
  late Animation<double> _elevation;
  late Animation<double> _scale;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _hoverController = AnimationController(
      vsync: this,
      duration: AppDurations.fast,
    );
    _elevation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _hoverController, curve: AppCurves.inOut),
    );
    _scale = Tween<double>(begin: 1.0, end: 1.015).animate(
      CurvedAnimation(parent: _hoverController, curve: AppCurves.spring),
    );
  }

  @override
  void dispose() {
    _hoverController.dispose();
    super.dispose();
  }

  String get _initials {
    final parts = widget.name.trim().split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    return parts[0].substring(0, parts[0].length >= 2 ? 2 : 1).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => _isHovered = true);
        _hoverController.forward();
      },
      onExit: (_) {
        setState(() => _isHovered = false);
        _hoverController.reverse();
      },
      child: GestureDetector(
        onTapDown: (_) => _hoverController.forward(),
        onTapUp: (_) {
          _hoverController.reverse();
          widget.onTap?.call();
        },
        onTapCancel: () => _hoverController.reverse(),
        child: ScaleTransition(
          scale: _scale,
          child: AnimatedBuilder(
            animation: _elevation,
            builder: (context, child) => Container(
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: AppRadius.radiusLG,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadow
                        .withValues(alpha: 0.08 + _elevation.value * 0.12),
                    blurRadius: 12 + _elevation.value * 12,
                    offset: Offset(0, 2 + _elevation.value * 6),
                    spreadRadius: _elevation.value * 2,
                  ),
                ],
                border: Border.all(
                  color: _isHovered
                      ? AppColors.primary.withValues(alpha: 0.3)
                      : AppColors.border,
                  width: 1.5,
                ),
              ),
              child: child,
            ),
            child: Padding(
              padding: AppSpacing.paddingCard,
              child: Row(
                children: [
                  // Avatar
                  Container(
                    width: 48,
                    height: 48,
                    decoration: AppDecorations.avatar(radius: 14),
                    child: widget.avatarUrl != null
                        ? ClipRRect(
                            borderRadius: AppRadius.radiusMD,
                            child: Image.network(widget.avatarUrl!,
                                fit: BoxFit.cover),
                          )
                        : Center(
                            child: Text(
                              _initials,
                              style: AppTextStyles.headlineSmall.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  // Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                widget.name,
                                style: AppTextStyles.headlineSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            _StatusBadge(isActive: widget.isActive),
                          ],
                        ),
                        const SizedBox(height: 2),
                        Text(
                          widget.role,
                          style: AppTextStyles.bodyMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(Icons.business_outlined,
                                size: 12, color: AppColors.textHint),
                            const SizedBox(width: 4),
                            Text(widget.department,
                                style: AppTextStyles.labelSmall),
                            const SizedBox(width: 8),
                            const Icon(Icons.badge_outlined,
                                size: 12, color: AppColors.textHint),
                            const SizedBox(width: 4),
                            Text('#${widget.employeeId}',
                                style: AppTextStyles.labelSmall),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Acciones
                  if (widget.onEdit != null || widget.onDelete != null)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget.onEdit != null)
                          _CardActionButton(
                            icon: Icons.edit_outlined,
                            color: AppColors.primary,
                            onTap: widget.onEdit!,
                          ),
                        if (widget.onDelete != null)
                          _CardActionButton(
                            icon: Icons.delete_outline,
                            color: AppColors.error,
                            onTap: widget.onDelete!,
                          ),
                      ],
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

class _StatusBadge extends StatelessWidget {
  final bool isActive;

  const _StatusBadge({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: isActive ? AppColors.successLight : AppColors.errorLight,
        borderRadius: AppRadius.radiusFull,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: isActive ? AppColors.success : AppColors.error,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            isActive ? 'Activo' : 'Inactivo',
            style: AppTextStyles.labelSmall.copyWith(
              color: isActive ? AppColors.success : AppColors.error,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _CardActionButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _CardActionButton({
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleButton(
      onTap: onTap,
      child: Container(
        width: 34,
        height: 34,
        margin: const EdgeInsets.only(left: 6),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.08),
          borderRadius: AppRadius.radiusSM,
        ),
        child: Icon(icon, size: 16, color: color),
      ),
    );
  }
}

// ─────────────────────────────────────────────
//  TEMA MATERIAL COMPLETO
// ─────────────────────────────────────────────
class AppTheme {
  AppTheme._();

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          brightness: Brightness.light,
          primary: AppColors.primary,
          secondary: AppColors.accent,
          surface: AppColors.surface,
          error: AppColors.error,
        ),
        scaffoldBackgroundColor: AppColors.background,

        // AppBar
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textOnPrimary,
          elevation: 0,
          centerTitle: false,
          titleTextStyle: AppTextStyles.headlineMedium.copyWith(
            color: AppColors.textOnPrimary,
          ),
          iconTheme: const IconThemeData(
            color: AppColors.textOnPrimary,
            size: 22,
          ),
        ),

        // Inputs
        inputDecorationTheme: AppInputStyles.theme,

        // Elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppButtonStyles.primary(),
        ),

        // Outlined Button
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: AppButtonStyles.secondary(),
        ),

        // Text Button
        textButtonTheme: TextButtonThemeData(
          style: AppButtonStyles.text(),
        ),

        // Card
        cardTheme: CardThemeData(
          color: AppColors.surface,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadius.radiusLG,
            side: BorderSide(color: AppColors.border, width: 1),
          ),
          margin: const EdgeInsets.symmetric(
              vertical: AppSpacing.sm, horizontal: 0),
        ),

        // Chip
        chipTheme: ChipThemeData(
          backgroundColor: AppColors.surfaceVariant,
          selectedColor: AppColors.primaryLight,
          labelStyle: AppTextStyles.labelMedium,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadius.radiusFull,
          ),
          side: const BorderSide(color: AppColors.border),
        ),

        // Divider
        dividerTheme: const DividerThemeData(
          color: AppColors.divider,
          thickness: 1,
          space: AppSpacing.xl,
        ),

        // FloatingActionButton
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textOnPrimary,
          elevation: 6,
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadius.radiusMD,
          ),
        ),

        // SnackBar
        snackBarTheme: SnackBarThemeData(
          backgroundColor: AppColors.textPrimary,
          contentTextStyle:
              AppTextStyles.bodyMedium.copyWith(color: Colors.white),
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadius.radiusMD,
          ),
          behavior: SnackBarBehavior.floating,
        ),

        // ListTile
        listTileTheme: const ListTileThemeData(
          contentPadding:
              EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: 4),
          iconColor: AppColors.textSecondary,
          titleTextStyle: AppTextStyles.labelLarge,
          subtitleTextStyle: AppTextStyles.bodySmall,
        ),

        // Dialog
        dialogTheme: DialogThemeData(
          backgroundColor: AppColors.surface,
          elevation: 24,
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadius.radiusXL,
          ),
          titleTextStyle: AppTextStyles.headlineMedium,
          contentTextStyle: AppTextStyles.bodyMedium,
        ),

        // Bottom Sheet
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: AppColors.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppRadius.xxl),
              topRight: Radius.circular(AppRadius.xxl),
            ),
          ),
          elevation: 16,
        ),

        // Switch
        switchTheme: SwitchThemeData(
          thumbColor:
              WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.surface;
            }
            return AppColors.textHint;
          }),
          trackColor:
              WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.primary;
            }
            return AppColors.border;
          }),
        ),

        // Checkbox
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.primary;
            }
            return Colors.transparent;
          }),
          checkColor: WidgetStateProperty.all(AppColors.surface),
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadius.radiusXS,
          ),
          side: const BorderSide(color: AppColors.border, width: 1.5),
        ),

        // Radio
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.primary;
            }
            return AppColors.textHint;
          }),
        ),

        // Tab Bar
        tabBarTheme: const TabBarThemeData(
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.textSecondary,
          indicatorColor: AppColors.primary,
          labelStyle: AppTextStyles.labelLarge,
          unselectedLabelStyle: AppTextStyles.labelMedium,
          indicatorSize: TabBarIndicatorSize.label,
        ),

        // Progress Indicator
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.primary,
          circularTrackColor: AppColors.primaryLight,
          linearTrackColor: AppColors.primaryLight,
        ),
      );
}

// ─────────────────────────────────────────────
//  HELPERS / UTILIDADES
// ─────────────────────────────────────────────
class AppHelpers {
  AppHelpers._();

  /// Snackbar de éxito
  static void showSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle_outline,
                color: AppColors.accent, size: 18),
            const SizedBox(width: 8),
            Expanded(child: Text(message)),
          ],
        ),
        backgroundColor: AppColors.textPrimary,
        behavior: SnackBarBehavior.floating,
        shape: const RoundedRectangleBorder(
          borderRadius: AppRadius.radiusMD,
        ),
        duration: AppDurations.verySlow,
      ),
    );
  }

  /// Snackbar de error
  static void showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.error_outline, color: AppColors.error, size: 18),
            const SizedBox(width: 8),
            Expanded(child: Text(message)),
          ],
        ),
        backgroundColor: AppColors.textPrimary,
        behavior: SnackBarBehavior.floating,
        shape: const RoundedRectangleBorder(
          borderRadius: AppRadius.radiusMD,
        ),
        duration: AppDurations.verySlow,
      ),
    );
  }

  /// Transición de página con slide
  static PageRouteBuilder slideRoute(Widget page,
      {AxisDirection direction = AxisDirection.left}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: AppDurations.pageTransition,
      reverseTransitionDuration: AppDurations.pageTransition,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: AppCurves.enter,
        );

        Offset begin;
        switch (direction) {
          case AxisDirection.left:
            begin = const Offset(1.0, 0.0);
            break;
          case AxisDirection.right:
            begin = const Offset(-1.0, 0.0);
            break;
          case AxisDirection.up:
            begin = const Offset(0.0, 1.0);
            break;
          case AxisDirection.down:
            begin = const Offset(0.0, -1.0);
            break;
        }

        return SlideTransition(
          position: Tween<Offset>(begin: begin, end: Offset.zero)
              .animate(curvedAnimation),
          child: FadeTransition(
            opacity: Tween<double>(begin: 0.0, end: 1.0)
                .animate(curvedAnimation),
            child: child,
          ),
        );
      },
    );
  }

  /// Transición de página con fade + scale
  static PageRouteBuilder fadeScaleRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: AppDurations.medium,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curved = CurvedAnimation(
          parent: animation,
          curve: AppCurves.spring,
        );
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: Tween<double>(begin: 0.93, end: 1.0).animate(curved),
            child: child,
          ),
        );
      },
    );
  }
}

// ─────────────────────────────────────────────
//  APP STYLES (LEGACY COMPATIBILITY)
// ─────────────────────────────────────────────
class AppStyles {
  AppStyles._();

  static Color get primaryColor => AppColors.primary;

  static InputDecoration inputDecoration(String label) => AppInputStyles.decoration(label: label);

  static ButtonStyle get buttonStyle => AppButtonStyles.primary();
}