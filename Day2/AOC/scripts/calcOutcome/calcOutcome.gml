// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calcOutcome(whatYouPlayed, otherPlayer)
{
	Score = 0;
	Score += calcHoeveelPuntenVoorMij(whatYouPlayed, otherPlayer);
	switch(whatYouPlayed)
	{
		case("Y"):
			Score += 2;
		break;
		case("X"):
			Score += 1;
		break;
		case("Z"):
			Score += 3;
		break;
	}	
	return Score;
}

function calcHoeveelPuntenVoorMij(whatYouPlayed, otherPlayer)
{
	Score = 0;
	var str = otherPlayer + whatYouPlayed;
	
	/// A = ROCK
	/// B = PAPER
	/// C = SICC
	
	
	/// X = ROCK
	/// Y = PAPER
	/// Z = SICC
	
	switch(str)
	{
		case("CZ"):
			Score = 3;
		break;
		case("CY"):
			Score = 0;
		break;
		case("CX"):
			Score = 6;
		break;
		case("BZ"):
			Score = 6;
		break;
		case("BY"):
			Score = 3;
		break;
		case("BX"):
			Score = 0;
		break;
		case("AY"):
			Score = 6;
		break;
		case("AX"):
			Score = 0; 
		break;
		case("AZ"):
			Score = 3;
		break;
	}
	
	
	return Score;
}