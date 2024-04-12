class ExampleCandidateModel {
  final String name;
  final String age;
  final String city;
  final String distance;

  ExampleCandidateModel({
    required this.name,
    required this.age,
    required this.city,
    required this.distance,
  });
}

final List<ExampleCandidateModel> candidates = [
  ExampleCandidateModel(
    name: 'Carlotta',
    age: '31',
    city: 'Areado',
    distance: '25,5',
  ),
  ExampleCandidateModel(
    name: 'Francesca',
    age: '31',
    city: 'New York',
    distance: '24,5',
  ),
  ExampleCandidateModel(
    name: 'Paola',
    age: '24',
    city: 'London',
    distance: '20,8',
  ),
  ExampleCandidateModel(
    name: 'Giulia',
    age: '28',
    city: 'Tokyo',
    distance: '38,6',
  ),
  ExampleCandidateModel(
    name: 'Laura',
    age: '25',
    city: 'Areado',
    distance: '35,8',
  ),
  ExampleCandidateModel(
    name: 'Ilaria',
    age: '30',
    city: 'New York',
    distance: '20,8',
  ),
  ExampleCandidateModel(
    name: 'Alessia',
    age: '29',
    city: 'London',
    distance: '24,5',
  ),
  ExampleCandidateModel(
    name: 'Federica',
    age: '27',
    city: 'Tokyo',
    distance: '24,5',
  ),
];
