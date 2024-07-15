    
// On state 1.1.0 section
short chapterShots    : 0x862BD4; // Shots fired in chapter
short totalShots      : 0x862BD8; // Shots fired in total
short chapterShotsHit : 0x862BCC; // Shots hit in chapter
short totalShotsHit   : 0x862BD0; // Shots hit in total
short chapterDeaths   : 0x862BC0; // Deaths in chapter
short totalDeaths     : 0x862BC2; // Deaths in total

// On state 1.0.6 section
short chapterShots    : 0x85F354;
short totalShots      : 0x85F358;
short chapterShotsHit : 0x85F34C;
short totalShotsHit   : 0x85F350;
short chapterDeaths   : 0x85F340;
short totalDeaths     : 0x85F342;

// On state 1.0.6 JP section
short chapterShots    : 0x85F354;
short totalShots      : 0x85F358;
short chapterShotsHit : 0x85F34C;
short totalShotsHit   : 0x85F350;
short chapterDeaths   : 0x85F340;
short totalDeaths     : 0x85F342;

// On startup section, below settings.SetToolTip("Infos", "Check this option if you want to show Infomation.");
settings.Add("ShowHitRatio", true, "Hit Ratio", "Infos");
settings.Add("ShowDeaths", true, "Deaths", "Infos");

// On update section
// Hit ratio
if (current.chapterShots != old.chapterShots && settings["ShowHitRatio"])
{
    Func<short, short, double> calcHitRatio = (shotsHit, shots) =>
    {
        return shotsHit > 0 ? Math.Round(((double)shotsHit / shots) * 100) : 0;
    };

    double chapterHitRatio = calcHitRatio(current.chapterShotsHit, current.chapterShots);
    double totalHitRatio = calcHitRatio(current.totalShotsHit, current.totalShots);

    var componentHitRatio = vars.updateTextComponent("Hit Ratio");
    componentHitRatio.Text2 = string.Format("Total: {0}% Chapter: {1}%", totalHitRatio, chapterHitRatio);
}

// On update section
// Deaths
if (current.chapterDeaths != old.chapterDeaths && settings["ShowDeaths"])
{
    var componentDeaths = vars.updateTextComponent("Deaths");
    componentDeaths.Text2 = string.Format("Total: {0} Chapter: {1}", current.totalDeaths, current.chapterDeaths);
}