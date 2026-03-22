state("CI4")
{
    int waveNumber : 0x070504, 0x4, 0x0, 0x14, 0x5D8;
    int InCutscene : 0x065B2C, 0x2B0;
}

start
{
    if(old.InCutscene == 16)
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
    vars.doTheSplit = 0;
}

split{

    if (current.waveNumber == vars.currentMax + 1) {
        vars.currentMax++;
    }

    if (old.waveNumber == vars.oldMax + 1) {
        vars.oldMax++;
    }

    if (vars.doTheSplit == 1) {
        vars.doTheSplit = 0;
        return true;
    }

    if((vars.currentMax > vars.oldMax && vars.split == 0) || (vars.currentMax > vars.oldMax && vars.split > 0 && vars.oldMax != 0))
    {
         vars.split++;
         return true;
    }

}

update {

    if (current.waveNumber == vars.currentMax + 1) {
        vars.currentMax++;
        vars.doTheSplit = 1;
    }
}
reset{
    if(old.InCutscene != 16 && current.InCutscene == 16)
        {
            return true;
        }
}