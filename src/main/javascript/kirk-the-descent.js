while (true) {
    var inputs = readline().split(' ');
    var SX = parseInt(inputs[0]);
    var SY = parseInt(inputs[1]);
    var mountains = [];
    for (var i = 0; i < 8; i++) {
        mountains.push(parseInt(readline())); // represents the height of one mountain, from 9 to 0. Mountain heights are provided from left to right.
    }


    function findHighestMountainAndReturnPosition() {
        return mountains.indexOf(mountains.reduce(function (prev, act) { return prev > act ? prev : act;}));
    }

    function shipIsOverHighestMountain() {
        var positionOfHighesMountain = findHighestMountainAndReturnPosition();
        return (SX === positionOfHighesMountain);
    }

    if (shipIsOverHighestMountain()) {
        print('FIRE');
    }
    else {
        print('HOLD');
    }
}
