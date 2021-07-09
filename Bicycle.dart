class Bicycle {
  int cadence;
  int _speed = 0;
  //getter
  int get speed => _speed;
  int gear;

  //constructor
  Bicycle(this.cadence, this.gear);
  //Equiavlent to
  /*   
    Bicycle(int cadence, int speed, int gear) {
      this.cadence = cadence;
      this.speed = speed;
      this.gear = gear;
    } 
  */

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph'; //$speed takes the value of speed
  //Equiavlent to
  /*   
    String toString() {
      return " bicycle: $speed mph";
    } 
  */
}

void main() {
  var bike = Bicycle(2, 1);
  print(bike);
}
