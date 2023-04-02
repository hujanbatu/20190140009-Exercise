import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name;
  final String selectedPhoto;

  HomePage({
    required this.name,
    required this.selectedPhoto,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
                height:
                    kToolbarHeight), // added to reserve the space for the removed AppBar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Text(
                    "Hallo, ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0,
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 23.0,
                    ),
                  ),
                ]),
                CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.grey[200],
                  child: ClipOval(
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: selectedPhoto != null
                            ? DecorationImage(
                                image: AssetImage(selectedPhoto),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      child: selectedPhoto == null
                          ? Icon(Icons.add_a_photo)
                          : null,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
            ),
            Text(
              "Pokedex",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  SizedBox(width: 16.0),
                  Icon(Icons.search, color: Colors.grey[500]),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Pokemon',
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                children: [
                  _buildInformationCard(
                    imageUrl:
                        'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png',
                    name: 'Charmander',
                    category: 'Fire',
                    description:
                        'It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.',
                    itemNumber: '#0004',
                    categoryColor: Colors.red,
                  ),
                  _buildInformationCard(
                    imageUrl:
                        'https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png',
                    name: 'Charmeleon',
                    category: 'Fire',
                    description:
                        'It has a barbaric nature. In battle, it whips its fiery tail around and slashes away with sharp claws.2',
                    itemNumber: '#0005',
                    categoryColor: Colors.red,
                  ),
                  _buildInformationCard(
                    imageUrl:
                        'https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png',
                    name: 'Squirtle',
                    category: 'Water',
                    description:
                        'When it retracts its long neck into its shell, it squirts out water with vigorous force.',
                    itemNumber: '#0007',
                    categoryColor: Colors.blue,
                  ),
                  _buildInformationCard(
                    imageUrl:
                        'https://assets.pokemon.com/assets/cms2/img/pokedex/full/008.png',
                    name: 'Wartortle',
                    category: 'Water',
                    description:
                        'It is recognized as a symbol of longevity. If its shell has algae on it, that Wartortle is very old.',
                    itemNumber: '#0008',
                    categoryColor: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInformationCard({
    required String imageUrl,
    required String name,
    required String category,
    required String description,
    required String itemNumber,
    required Color categoryColor,
  }) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        itemNumber,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    decoration: BoxDecoration(
                      color: categoryColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ),
                    child: Text(
                      category,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
