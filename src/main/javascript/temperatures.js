readline();
var line = readline() || "";
var temps = line.split(' ');
var temp = temps.reduce(function (prev, act) { return Math.abs(prev) < Math.abs(act) ? prev : act; }) || 0;

print(temp);
