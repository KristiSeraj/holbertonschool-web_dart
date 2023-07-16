void main(List<String> args) {
  /*
  Write Your code below 
   */
  var n = 80;
  assert(n <= int.parse(args[0]), 'Uncaught Error: Assertion failed: "The score must be bigger or equal to 80"');
  print('You Passed');
}