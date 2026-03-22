state("CI5")
{
	int waveNumber : 0x160090, 0x0, 0x14, 0x78, 0x720;
	int InCutscene : 0x1D3594, 0x88;
}

start
{
	if(old.InCutscene == 1565696)
	{
		vars.split = 0;
		vars.oldMax = 0;
   		vars.currentMax = 0;
		return true;
	}
}

init{
    vars.split = 0;
    vars.oldMax = 0;
    vars.currentMax = 0;
}

split{

	if (current.waveNumber > vars.currentMax) {
		vars.currentMax = current.waveNumber;
	}

	if (old.waveNumber > vars.oldMax) {
		vars.oldMax = old.waveNumber;
	}	

    if((vars.currentMax > vars.oldMax && vars.split == 0) || (vars.currentMax > vars.oldMax && vars.split > 0 && vars.oldMax != 0))
    {
    	
	    vars.split++;
	    return true;
        
    }
}
    


reset{
	if(old.InCutscene != 1565696 && current.InCutscene == 1565696)
	{
		return true;
	}
}
