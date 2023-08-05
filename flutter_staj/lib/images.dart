enum AssetsEnum {
  ayzaLogo("logo"),
  logo("indir");

  String get toPng => 'assets/$name.png';
  /* String get toJpg => 'assets/images/$name.jpg';
  String get toGif => 'assets/gif/$name.gif';
  String get logo => 'assets/images/logo/$name.png';*/

  final String name;
  const AssetsEnum(this.name);
}
