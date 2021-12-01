// ?Adding a data model
class Recipe {
  String label;
  String imageUrl;
  //Add servings and ingredients here - Add properties to specify that serving is how many people the specified quantity feeds and ingredients is a simple list
  int servings;
  List<Ingredient> ingredients;
  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );

  // ?Adding a list in some langguages called an array
  static List<Recipe> samples = [
    Recipe(
      'Single Large Burger',
      'assets/images/burger.jpeg',
      4,
      [
        Ingredient(1, 'piece(s)', 'bread'),
        Ingredient(3, 'pieces', 'lettuce'),
        Ingredient(5, 'spoons', 'Minced Meat'),
        Ingredient(1, 'piece(s)', 'Onion'),
        Ingredient(1, 'piece(s)', 'Tomato'),
      ],
    ),
    Recipe(
      'Burger Fries',
      'assets/images/burger.png',
      2,
      [
        Ingredient(1, 'piece(s)', 'bread'),
        Ingredient(3, 'piece', 'lettuce'),
        Ingredient(5, 'spoons', 'Minced Meat'),
        Ingredient(1, 'piece(s)', 'Onion'),
        Ingredient(1, 'piece(s)', 'Tomato'),
      ],
    ),
  ];
}

// Simple data container for ingredients with a name, unit of measure and quantity
class Ingredient {
  double quantity;
  String measure;
  String name;
  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
//TODO: Add Ingredient() here
