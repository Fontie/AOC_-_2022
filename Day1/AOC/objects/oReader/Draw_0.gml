draw_self();

for (var i = 0; i < lines; ++i;)
{
	draw_text(x,y+(15 * i), scr[i]);
}

for (var i = 0; i < array_length_1d(hungryElves); ++i;)
{
	draw_text(x+200,y+(30 * i), hungryElves[i]);
}

draw_text(x+80, y, lines);

draw_text(x+265, y, array_length_1d(hungryElves));

draw_text(x+400, y, "AND THE WINNER IS!!!");
draw_text(x+400, y+40, mostStackedElf);
draw_text(x+400, y+60, secondMostStacked);
draw_text(x+400, y+80, thirdMostStacked);

draw_text(x+400, y+120, "THE 1% OF ELVES HAS:");
var dde = mostStackedElf + secondMostStacked + thirdMostStacked;
draw_text(x+400, y+140, dde);
