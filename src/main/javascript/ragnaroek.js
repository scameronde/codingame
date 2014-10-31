
var inputs = readline().split(' ');
var LX = parseInt(inputs[0]); // the X position of the light of power
var LY = parseInt(inputs[1]); // the Y position of the light of power
var TX = parseInt(inputs[2]); // Thor's starting X position
var TY = parseInt(inputs[3]); // Thor's starting Y position

// game loop
while (true) {
    var E = parseInt(readline()); // The level of Thor's remaining energy, representing the number of moves he can still make.

    function calculateDirectionToMoveAndUpdatePosition() {
      var NS, EW;

      if (TY < LY) {
          NS = 'S';
          TY += 1;
      }
      else if (TY > LY) {
          NS = 'N';
          TY -= 1;
      }
      else {
          NS = '';
      }

      if (TX < LX) {
          EW = 'E';
          TX += 1;
      }
      else if (TX > LX) {
          EW = 'W';
          TX -= 1;
      }
      else {
          EW = '';
      }

      return NS+EW;
    }

    var directionToMove = calculateDirectionToMoveAndUpdatePosition();
    printErr(directionToMove);
    print(directionToMove);
}
