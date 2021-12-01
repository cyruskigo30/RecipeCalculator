import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  // TODO Add _sliderval here
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.asset(widget.recipe.imageUrl),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
            //  adding expanded
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  // ignore: non_constant_identifier_names
                  final Ingredient = widget.recipe.ingredients[index];

                  // ADDing ingredient quantity
                  return Text(
                      '${(Ingredient.quantity * _sliderVal).round()} ${Ingredient.measure} ${Ingredient.name}');
                },
              ),
            ),
            //  Addinga  slider here
            Slider(
              // min and max determine how  the slider moves in this case between 1 and 10
              min: 1,
              max: 10,
              // didisions indicate the number of stops int he slider in this case 10 stops
              divisions: 10,
              // label updates the _sliderval chnages and displays the number of servings
              label: '${_sliderVal * widget.recipe.servings} servings',
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  // slider uses double values but re rounded off here to int and saved in _sliderVal
                  _sliderVal = newValue.round();
                });
              },
              // these set the slider colors
              activeColor: Colors.deepOrange,
              inactiveColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
