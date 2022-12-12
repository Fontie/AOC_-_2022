/// @description read file

randomize();

scr = [];
scr_name = [];
score_array = [];

lines = 0;

newHungryElf = 0;
hungryElves = [];

mostStackedElf = 0;
secondMostStacked = 0;
thirdMostStacked = 0;

var file = file_text_open_read(working_directory + "HungryElves.txt");

while (!file_text_eof(file))
{
	scr[lines] = file_text_read_string(file);	
	
	if scr[lines] == ""
	{
		array_push(hungryElves,newHungryElf);
		newHungryElf = 0;
	}
	else
	{
		var num = real(scr[lines]);
		
		newHungryElf += num;
	}
	
	file_text_readln(file);
    lines++;
}

file_text_close(file);


for (var i = 0; i < array_length_1d(hungryElves); ++i;)
{
	if hungryElves[i] > mostStackedElf
	{
		mostStackedElf = hungryElves[i];	
	}	
}

for (var i = 0; i < array_length_1d(hungryElves); ++i;)
{
	if ((hungryElves[i] > secondMostStacked) && (hungryElves[i] < mostStackedElf))
	{
		secondMostStacked = hungryElves[i];	
	}	
}


for (var i = 0; i < array_length_1d(hungryElves); ++i;)
{
	if ((hungryElves[i] > thirdMostStacked) && (hungryElves[i] < secondMostStacked))
	{
		thirdMostStacked = hungryElves[i];	
	}	
}



