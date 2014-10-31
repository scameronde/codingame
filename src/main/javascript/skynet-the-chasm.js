
var R = parseInt(readline()); // the length of the road before the gap.
var G = parseInt(readline()); // the length of the gap.
var L = parseInt(readline()); // the length of the landing platform.
var neccessarySpeed = G+1;

// game loop
while (true) {
    var S = parseInt(readline()); // the motorbike's speed.
    var X = parseInt(readline()); // the position on the road of the motorbike.

    function shouldSlowDown() {
        function isOnPlatform() {
            return (X >= (R+G));
        }
        function isTooFast() {
            return (S > neccessarySpeed);
        }

        return isOnPlatform() || isTooFast();
    }

    function shouldJump() {
        function willReachPlatform() {
            return ((X+S) >= (R+G));
        }
        return willReachPlatform();
    }

    function shouldSpeedUp() {
        return (S < neccessarySpeed);
    }


    if (shouldSlowDown()) {
        print('SLOW');
    }
    else if (shouldJump()) {
        print('JUMP');
    }
    else if(shouldSpeedUp()) {
        print('SPEED');
    }
    else {
        print('WAIT');
    }
}
