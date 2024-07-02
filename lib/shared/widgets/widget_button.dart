import 'package:flutter/cupertino.dart';
import 'package:myapp/constants/app_color.dart';

class AppBtn extends StatelessWidget {
  final Function() callback;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final String? text;
  final Color? color;
  final Color? disableBgColor;
  final Color? borderColor;
  final Color? textColor;
  final double? width;
  final EdgeInsets? paddingBtn;
  final bool enable;
  final Color _disableColor = const Color(0xff9f9f9f);

  const AppBtn(
      {super.key,
      required this.text,
      required this.callback,
      this.leftIcon,
      this.rightIcon,
      this.color = AppColors.primaryColor,
      this.disableBgColor = const Color(0xffD2D8CF),
      this.borderColor,
      this.textColor,
      this.width,
      this.paddingBtn,
      this.enable = true});

  @override
  Widget build(BuildContext context) {
    return _CupertinoButton(
      color: color!,
      enable: enable,
      disabledColor: disableBgColor!,
      padding: paddingBtn,
      borderColor: borderColor,
      borderDisableColor: disableBgColor!,
      onPressed: callback,
      child: SizedBox(
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (leftIcon != null) _icon(leftIcon!),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                text!,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: textColor),
              ),
            ),
            if (rightIcon != null) _icon(rightIcon!),
          ],
        ),
      ),
    );
  }

  // ignore: unnecessary_null_comparison
  Widget _icon(IconData data) => data != null
      ? Icon(
          leftIcon,
          // ignore: unnecessary_null_comparison
          color: callback != null ? textColor : _disableColor,
        )
      : const SizedBox.shrink();
}

class _CupertinoButton extends StatefulWidget {
  const _CupertinoButton({
    Key? key,
    required this.child,
    this.enable = true,
    this.padding,
    this.color,
    this.borderColor = CupertinoColors.quaternarySystemFill,
    this.borderDisableColor,
    this.disabledColor = CupertinoColors.quaternarySystemFill,
    // ignore: unused_element
    this.minSize = 53,
    this.pressedOpacity = 0.4,
    // ignore: unused_element
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    required this.onPressed,
  })  : assert(pressedOpacity == null ||
            (pressedOpacity >= 0.0 && pressedOpacity <= 1.0)),
        assert(disabledColor != null),
        _filled = false,
        super(key: key);

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? disabledColor;
  final Color? borderColor;
  final Color? borderDisableColor;
  final VoidCallback onPressed;
  final double? minSize;
  final bool enable;

  final double? pressedOpacity;

  final BorderRadius? borderRadius;

  final bool? _filled;

  @override
  _CupertinoButtonState createState() => _CupertinoButtonState();
}

class _CupertinoButtonState extends State<_CupertinoButton>
    with SingleTickerProviderStateMixin {
  static const Duration kFadeOutDuration = Duration(milliseconds: 10);
  static const Duration kFadeInDuration = Duration(milliseconds: 100);
  final Tween<double> _opacityTween = Tween<double>(begin: 1.0);

  AnimationController? _animationController;
  Animation<double>? _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      value: 0.0,
      vsync: this,
    );
    _opacityAnimation = _animationController
        ?.drive(CurveTween(curve: Curves.decelerate))
        .drive(_opacityTween);
    _setTween();
  }

  @override
  void didUpdateWidget(_CupertinoButton old) {
    super.didUpdateWidget(old);
    _setTween();
  }

  void _setTween() {
    _opacityTween.end = widget.pressedOpacity ?? 1.0;
  }

  @override
  void dispose() {
    _animationController?.dispose();
    _animationController = null;
    super.dispose();
  }

  bool _buttonHeldDown = false;

  void _handleTapDown(TapDownDetails event) {
    if (!_buttonHeldDown) {
      _buttonHeldDown = true;
      _animate();
    }
  }

  void _handleTapUp(TapUpDetails event) {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _animate();
    }
  }

  void _handleTapCancel() {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _animate();
    }
  }

  void _animate() {
    if (_animationController?.isAnimating ?? false) return;
    final bool wasHeldDown = _buttonHeldDown;
    final TickerFuture? ticker = _buttonHeldDown
        ? _animationController?.animateTo(1.0, duration: kFadeOutDuration)
        : _animationController?.animateTo(0.0, duration: kFadeInDuration);
    ticker?.then<void>((void value) {
      if (mounted && wasHeldDown != _buttonHeldDown) _animate();
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool enabled = widget.enable;
    final CupertinoThemeData themeData = CupertinoTheme.of(context);
    final Color primaryColor = themeData.primaryColor;
    final Color? backgroundColor = (widget.color == null)
        ? ((widget._filled ?? false) ? primaryColor : null)
        : CupertinoDynamicColor.resolve(widget.color!, context);

    final Color foregroundColor = backgroundColor != null
        ? themeData.primaryContrastingColor
        : (enabled)
            ? primaryColor
            : CupertinoDynamicColor.resolve(
                CupertinoColors.placeholderText, context);

    final TextStyle textStyle =
        themeData.textTheme.textStyle.copyWith(color: foregroundColor);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: enabled ? _handleTapDown : null,
      onTapUp: enabled ? _handleTapUp : null,
      onTapCancel: enabled ? _handleTapCancel : null,
      onTap: widget.onPressed,
      child: Semantics(
        button: true,
        child: ConstrainedBox(
          constraints: widget.minSize == null
              ? const BoxConstraints()
              : BoxConstraints(
                  minWidth: widget.minSize ?? 0,
                  minHeight: widget.minSize ?? 0,
                ),
          child: FadeTransition(
            opacity: _opacityAnimation!,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: enabled && widget.borderColor != null
                    ? _border(widget.borderColor!)
                    : !enabled && widget.borderDisableColor != null
                        ? _border(widget.borderDisableColor!)
                        : null,
                borderRadius: widget.borderRadius,
                color: backgroundColor != null && !enabled
                    ? CupertinoDynamicColor.resolve(
                        widget.disabledColor!, context)
                    : backgroundColor,
              ),
              child: Padding(
                padding: widget.padding ??
                    (backgroundColor != null
                        ? _kBackgroundButtonPadding
                        : _kButtonPadding),
                child: Center(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: DefaultTextStyle(
                    style: textStyle,
                    child: IconTheme(
                      data: IconThemeData(color: foregroundColor),
                      child: widget.child,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _border(Color color) => Border.all(width: 1, color: color);
}

const EdgeInsets _kButtonPadding = EdgeInsets.all(16.0);
const EdgeInsets _kBackgroundButtonPadding = EdgeInsets.symmetric(
  vertical: 14.0,
  horizontal: 64.0,
);
