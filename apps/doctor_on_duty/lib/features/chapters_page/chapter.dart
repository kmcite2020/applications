
enum Chapter {
  emergency('Emergency Medicine'),
  poisoning('Poisoning'),
  gyneObs('Gynecology & Obstetrics'),
  peds('Pediatrics'),
  eye('EYE'),
  ent('ENT'),
  surgery('Surgery'),
  neurosurgery('Neurosurgery'),
  ortho('Orthopedics'),
  dentistry('Dentistry');

  const Chapter([this.description = '']);
  final String description;
}
