class Bicycle {
  int cadence;
  int speed;
  int gear;

  Bicycle(this.cadence, this.speed, this.gear);
  //Equiavlent to
  /*   
    Bicycle(int cadence, int speed, int gear) {
      this.cadence = cadence;
      this.speed = speed;
      this.gear = gear;
    } 
  */

  @override
  String toString() => 'Bicycle: $speed mph'; //$speed takes the value of speed
  //Equiavlent to
  /*   
    String toString() {
      return " bicycle: $speed mph";
    } 
  */
}

void main() {
  var bike = Bicycle(2, 0, 1);
  print(bike);
}
