draw_self();

for (var i = 0; i < lines; ++i;)
{
	draw_text(x,y+(15 * i), scr[i]);
}

for (var i = 0; i < array_length_1d(scores); ++i)
{
	draw_text(x+40, y+(15*i), scores[i]);	
}

draw_text(x+80,y,totalPoints);