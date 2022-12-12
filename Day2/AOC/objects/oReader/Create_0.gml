/// @description read file

randomize();

scr = [];
scores = [];
lines = 0;

totalPoints = 0;

var file = file_text_open_read(working_directory + "RockPaperScissors.txt");

while (!file_text_eof(file))
{
	scr[lines] = file_text_read_string(file);
	
	var otherPlayer = string_char_at(scr[lines], 0);
	var myTurn = string_char_at(scr[lines], 3);	
	
	array_push(scores,calcOutcome(myTurn,otherPlayer));
	
	file_text_readln(file);
    lines++;
}

file_text_close(file);



for (var i = 0; i < lines; ++i)
{
	totalPoints += scores[i];	
}


