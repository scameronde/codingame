while (true) {
    var count = parseInt(readline()); // The number of current enemy ships within range
    var enemies = [];
    for (var i = 0; i < count; i++) {
        var inputs = readline().split(' ');
        enemies.push({name: inputs[0], dist: parseInt(inputs[1])});
    }

    enemies.sort(function(a, b) {return a.dist - b.dist;});
    print(enemies[0].name);
}
