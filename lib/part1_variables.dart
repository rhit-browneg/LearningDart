void main(List<String> args) {
  print("variables!!");

  // Explicitly Type
  int myVar1 = 42;

  // Inferred Type
  var myVar2 = 52.5;

  print("Values: $myVar1, $myVar2");
  print("Types: ${myVar1.runtimeType}, ${myVar2.runtimeType}");

  // Variables, Final, or constants
  final int myFinal = 7 + myVar1;
  // myFinal = 5; wont compile

  const int myConst = 13;
  // myConst = 5; wont compile
  // const int myConst = 13 + myVar1; won't compile since it has to execute at runtime

  //Nullable vs non nullable
  //int myNonNullable; //cannot copile bc it cannot be null but is null
  int myNonNullable = 5;
  int? myNullable;
  print("Values: $myNonNullable, $myNullable");
  print("Types: ${myNonNullable.runtimeType}, ${myNullable.runtimeType}");
}
