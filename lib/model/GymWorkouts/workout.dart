class workout {
  final int id;
  final int catId;
  final String title;
  final List<String> steps;
  final String imageUrl;
  final int minuteDuration;

  workout({
    required this.id,
    required this.catId,
    required this.title,
    required this.steps,
    this.imageUrl = '',
    this.minuteDuration = 0,
  });
}
