//----------------LISTS-----------------------------\\
//creating lists
main0() {
  //accesing an element
  var listOfVegetables = ['potato', 'carrot', 'cucumber'];
  print(listOfVegetables[1]);

  print(listOfVegetables.length); //length of list

  listOfVegetables.add('cabbage'); //adding elemts to a list
  print(listOfVegetables);

  //adding multiple lemnts
  var vegetablesToAdd = ['okra', 'capsicum'];
  listOfVegetables.addAll(vegetablesToAdd);
  //or
  listOfVegetables.addAll(['broccoli', 'zucchini']);
  print(listOfVegetables);

  //remove lements
  listOfVegetables.removeAt(0);
  print(listOfVegetables);

  //find index of a value, and rmeoving it
  var carrotIndex = listOfVegetables.indexOf('carrot');
  listOfVegetables.removeAt(carrotIndex);

  //remove all elements
  // listOfVegetables.clear();
  // print(listOfVegetables);

  // The map method, maps all the items of a list to an expression or statement
  var mappedVegetables =
      listOfVegetables.map((vegetable) => 'I love $vegetable').toList();
  print(mappedVegetables);
}

//-------------------------SETS-----------------------------\\
main2() {
  //creating sets
  var setOfNumbers = <num>{1, 1.5, 2, 2.5};
  var setOfFruits = <String>{};
  Set<String> anotherSetOfFruit = {};

  print(setOfNumbers);
  print(setOfFruits);
  print(anotherSetOfFruit);

  //adding elemnts
  setOfFruits.add('apples');
  setOfFruits.add('bananas');
  setOfFruits.add('oranges');
  print(setOfFruits);

  //adding multiple elements
  var twoMoreFruits = {'watermelon', 'grapes'};
  setOfFruits.addAll(twoMoreFruits);
  print(setOfFruits);

  print(setOfFruits.length); //length of a set

  //remove elemnt
  setOfFruits.remove('bananas');
  print(setOfFruits);

  //check if a set contains x
  //Check whether a single item is in the set
  print(setOfFruits.contains('grapes'));

  //Check whether multiple items are in the set
  print(setOfFruits.containsAll(['watermelon', 'bananas'])); //First Method
  //or
  var fruitsToCheck = {'watermelon', 'bananas'};
  print(setOfFruits.containsAll(fruitsToCheck)); // Second Method

  //intersection of sets, a set which contains the elements contained in both set1 and set2.
  var setOfCars = {'ferrari', 'aston martin', 'tesla', 'seat'};
  var setOfMoreCars = {'audi', 'lambo', 'ferrari'};

  var intersectionSet = setOfCars.intersection(setOfMoreCars);
  print(intersectionSet);

  //Union of sets, a set which contains the elements contained in at least one of the two sets. If an item appears on both sets, it still only appears once in the union.
  var unionSet = setOfCars.union(setOfMoreCars);
  print(unionSet);
}

//----------------------------MAPS-----------------------------\\
main3() {
  //CREATING A MAP
  var capitals = {
    //Dart infers that capitals has a type Map<String,String>
    'United States': 'Washington D.C.',
    'England': 'London',
    'China': 'Beijing',
    'Germany': 'Berlin',
    'Nigeria': 'Abuja',
    'Egypt': 'Cairo',
    'New Zealand': 'Wellington'
  };
  print(capitals);

  var emptyMap = Map(); //method 2
  print(emptyMap);

  var numbers = Map<int, String>(); //method 3
  print(numbers);

  //Adding key value pairs to the map
  // mapName[key] = value
  numbers[1] = 'one';
  numbers[2] = 'two';
  numbers[3] = 'three';

  print(numbers.length); //num of pairs in a map

  //accessing values
  //mapNAme[key]
  print(capitals['Germany']);
  print(capitals['India']); //if non existent null is returned

  //Checking contents
  // mapName.containsKey(key to check)
  print(capitals.containsKey('Egypt'));

  //retrive all keys/values of a map
  // Retrieving all the keys
  var allKeys = capitals.keys;
  print("Keys: $allKeys");

  // Retrieving all the values
  var allValues = capitals.values;
  print("Values: $allValues");

  //Remove a kay-value pair
  //mapNAme.remove(key to be removed)
  capitals.remove('China');
  print(capitals);

  //empty a map
  capitals.clear();
}
