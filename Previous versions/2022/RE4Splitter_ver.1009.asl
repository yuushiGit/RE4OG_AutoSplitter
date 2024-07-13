state("bio4")
{
    byte currentScreen     : 0x8597BB; // Current Screen
    byte loadingScreen     : 0x858F77; // Loading Screen
    byte screenTrans       : 0x858F7B; // Screen Transition
    byte inventory         : 0x87AD04; // Inventory Screen
    byte map               : 0xCED6DC; // Map Screen
    byte subtitle          : 0x817840; // Subtitles on the Screen
    byte item              : 0x858EE4; // Pick up Items
    byte difficultyMode    : 0x862BDC; // Difficulty Mode (Pro / Normal / Easy / Ama)
    byte chapterKills      : 0x862BC4; // Chapter Kills
    byte totalKills        : 0x862BC8; // Total Kills
    int currentArea        : 0x85A788; // Current Area
    int currentPoint       : 0x85F70C; // Current Point
    int isEndOfChapter     : 0x85F6F8; // End of Chapter
    int mgEnd              : 0x8594B8; // Ending Cutscene in Main Game
    int swEnd              : 0x867BDC; // Ending Cutscene in Separate Ways
    int fslPlaga           : 0x85F9EC; // First, Second, and Last Plaga
    int tfPlaga            : 0x85F9F0; // Third and Fourth Plaga
    int operate            : 0x850300; // Operate Command on Button Presses
    int da                 : 0x85F6F4; // Difficulty Adjustment
    int igt                : 0x85F704; // In Game Time
    int money              : 0x85F708; // Money
    int shotsChapter       : 0x862BD4; // Shots Fired Chapter
    int shotsHitChapter    : 0x862BCC; // Shots Hit Chapter
    int shotsTotal         : 0x862BD8; // Shots in Total
    int shotsHitTotal      : 0x862BD0; // Shots Hit in Total
}

state("bio4", "1.0.6")
{
    byte currentScreen     : 0x855F3B;
    byte loadingScreen     : 0x8556F7;
    byte screenTrans       : 0x8556FB;
    byte inventory         : 0x877484;
    byte map               : 0xCE9E5C;
    byte subtitle          : 0x814030;
    byte item              : 0x855664;
    byte difficultyMode    : 0x85F35C;
    byte chapterKills      : 0x85F344;
    byte totalKills        : 0x85F348;
    int currentArea        : 0x856F08;
    int currentPoint       : 0x85BE8C;
    int isEndOfChapter     : 0x85BE78;
    int mgEnd              : 0x855C38;
    int swEnd              : 0x86434C;
    int fslPlaga           : 0x85C16C;
    int tfPlaga            : 0x85C170;
    int operate            : 0x84CA80;
    int da                 : 0x85BE74;
    int igt                : 0x85BE84;
    int money              : 0x85BE88;
    int shotsChapter       : 0x85F354;
    int shotsHitChapter    : 0x85F34C;
    int shotsTotal         : 0x85F358;
    int shotsHitTotal      : 0x85F350;
}

startup
{
    // Creating the Options
    settings.Add("MainGameSplits", true, "Main Game");
    settings.Add("MainGameChapterSplits", true, "Chapters", "MainGameSplits");
    settings.Add("Chapter1MG", true, "Chapter 1-1", "MainGameChapterSplits");
    settings.Add("Chapter2MG", true, "Chapter 1-2", "MainGameChapterSplits");
    settings.Add("Chapter3MG", true, "Chapter 1-3", "MainGameChapterSplits");
    settings.Add("Chapter4MG", true, "Chapter 2-1", "MainGameChapterSplits");
    settings.Add("Chapter5MG", true, "Chapter 2-2", "MainGameChapterSplits");
    settings.Add("Chapter6MG", true, "Chapter 2-3", "MainGameChapterSplits");
    settings.Add("Chapter7MG", true, "Chapter 3-1", "MainGameChapterSplits");
    settings.Add("Chapter8MG", true, "Chapter 3-2", "MainGameChapterSplits");
    settings.Add("Chapter9MG", true, "Chapter 3-3", "MainGameChapterSplits");
    settings.Add("Chapter10MG", true, "Chapter 3-4", "MainGameChapterSplits");
    settings.Add("Chapter11MG", true, "Chapter 4-1", "MainGameChapterSplits");
    settings.Add("Chapter12MG", true, "Chapter 4-2", "MainGameChapterSplits");
    settings.Add("Chapter13MG", true, "Chapter 4-3", "MainGameChapterSplits");
    settings.Add("Chapter14MG", true, "Chapter 4-4", "MainGameChapterSplits");
    settings.Add("Chapter15MG", true, "Chapter 5-1", "MainGameChapterSplits");
    settings.Add("Chapter16MG", true, "Chapter 5-2", "MainGameChapterSplits");
    settings.Add("Chapter17MG", true, "Chapter 5-3", "MainGameChapterSplits");
    settings.Add("Chapter18MG", true, "Chapter 5-4", "MainGameChapterSplits");

    settings.Add("MainGameItemSplits", false, "Key Items", "MainGameSplits");
    settings.Add("Item164MG", true, "Emblem (Right half)", "MainGameItemSplits");
    settings.Add("Item165MG", true, "Emblem (Left half)", "MainGameItemSplits");
    settings.Add("Item59MG", true, "Insignia Key", "MainGameItemSplits");
    settings.Add("Item60MG", true, "Round Insignia", "MainGameItemSplits");
    settings.Add("Item140MG", true, "Camp Key", "MainGameItemSplits");
    settings.Add("Item139MG", true, "Old Key", "MainGameItemSplits");
    settings.Add("Item61MG", true, "False Eye", "MainGameItemSplits");
    settings.Add("Item128MG", true, "Golden Sword", "MainGameItemSplits");
    settings.Add("Item196MG", true, "Platinum Sword", "MainGameItemSplits");
    settings.Add("Item167MG", true, "Castle Gate Key", "MainGameItemSplits");
    settings.Add("Item195MG", true, "Prison Key", "MainGameItemSplits");
    settings.Add("Item163MG", true, "Gallery Key", "MainGameItemSplits");
    settings.Add("Item31MG", true, "Goat Ornament", "MainGameItemSplits");
    settings.Add("Item58MG", true, "Moonstone (Right half)", "MainGameItemSplits");
    settings.Add("Item105MG", true, "Moonstone (Left half)", "MainGameItemSplits");
    settings.Add("Item29MG", true, "Stone Tablet", "MainGameItemSplits");
    settings.Add("Item15MG", true, "Salazar Family Insignia", "MainGameItemSplits");
    settings.Add("Item57MG", true, "Serpent Ornament", "MainGameItemSplits");
    settings.Add("Item30MG", true, "Lion Ornament", "MainGameItemSplits");
    settings.Add("Item111MG", true, "Queen's Grail", "MainGameItemSplits");
    settings.Add("Item110MG", true, "King's Grail", "MainGameItemSplits");
    settings.Add("Item141MG", true, "Dynamite", "MainGameItemSplits");
    settings.Add("Item123MG", true, "Key to the Mine", "MainGameItemSplits");
    settings.Add("Item130MG", true, "Stone of Sacrifice", "MainGameItemSplits");
    settings.Add("Item132MG", true, "Freezer Card Key", "MainGameItemSplits");
    settings.Add("Item146MG", true, "Waste Disposal Card Key", "MainGameItemSplits");
    settings.Add("Item131MG", true, "Storage Room Card Key", "MainGameItemSplits");
    settings.Add("Item135MG", true, "Piece of the Holy Beast, Eagle", "MainGameItemSplits");
    settings.Add("Item134MG", true, "Piece of the Holy Beast, Serpent", "MainGameItemSplits");
    settings.Add("Item116MG", true, "Emergency Lock Card Key", "MainGameItemSplits");
    settings.Add("Item136MG", true, "Jet-ski Key", "MainGameItemSplits");

    settings.Add("SeparateWaysSplits", true, "Separate Ways");
    settings.Add("SeparateWaysChapterSplits", true, "Chapters", "SeparateWaysSplits");
    settings.Add("Chapter1SW", true, "Chapter 1", "SeparateWaysChapterSplits");
    settings.Add("Chapter2SW", true, "Chapter 2", "SeparateWaysChapterSplits");
    settings.Add("Chapter3SW", true, "Chapter 3", "SeparateWaysChapterSplits");
    settings.Add("Chapter4SW", true, "Chapter 4", "SeparateWaysChapterSplits");
    settings.Add("Chapter5SW", true, "Chapter 5", "SeparateWaysChapterSplits");

    settings.Add("SeparateWaysItemSplits", false, "Key Items", "SeparateWaysSplits");
    settings.Add("Item59SW", true, "Insignia Key", "SeparateWaysItemSplits");
    settings.Add("Item118SW", true, "Green Catseye", "SeparateWaysItemSplits");
    settings.Add("Item60SW", true, "Round Insignia", "SeparateWaysItemSplits");
    settings.Add("Item129SW", true, "Iron Key", "SeparateWaysItemSplits");
    settings.Add("Item142SW", true, "Lift Activation Key", "SeparateWaysItemSplits");
    settings.Add("Item27SW", true, "Hourglass w/ gold decor", "SeparateWaysItemSplits");
    settings.Add("Item49SW", true, "Activation Key (blue)", "SeparateWaysItemSplits");
    settings.Add("Item51SW", true, "Activation Key (red)", "SeparateWaysItemSplits");

    settings.Add("AssignmentAdaSplits", true, "Assignment Ada");
    settings.Add("AssignmentAdaSamplesSplits", true, "Plaga Samples", "AssignmentAdaSplits");
    settings.Add("Sample8", true, "Plaga Sample 1", "AssignmentAdaSamplesSplits");
    settings.Add("Sample12", true, "Plaga Sample 2", "AssignmentAdaSamplesSplits");
    settings.Add("Sample1073741824", true, "Plaga Sample 3", "AssignmentAdaSamplesSplits");
    settings.Add("Sample1342177280", true, "Plaga Sample 4", "AssignmentAdaSamplesSplits");
    settings.Add("Sample28", true, "Plaga Sample 5", "AssignmentAdaSamplesSplits");

    settings.Add("DoorSplits", true, "Door Splits");

    settings.Add("Infos", false, "Information");
    settings.Add("ShowDA", true, "DA", "Infos");
    settings.Add("ShowMoney", true, "Money", "Infos");
    settings.Add("ShowKills", true, "Kills", "Infos");
    settings.Add("ShowACC", true, "Accuracy", "Infos");
    settings.Add("ShowIGT", true, "In Game Time", "Infos");

    settings.SetToolTip("MainGameChapterSplits", "Check this Option if you want to split on Chapters.");
    settings.SetToolTip("MainGameItemSplits", "Check this Option if you want to split on Key Items.");
    settings.SetToolTip("SeparateWaysChapterSplits", "Check this Option if you want to split on Chapters.");
    settings.SetToolTip("SeparateWaysItemSplits", "Check this Option if you want to split on Key Items.");
    settings.SetToolTip("AssignmentAdaSamplesSplits", "Check this Option if you want to split on Plaga Samples.");
    settings.SetToolTip("DoorSplits", "Check this Option if you want to use Door Splits.");
    settings.SetToolTip("Infos", "Check this Option if you want to show Game Info on Livesplit.");
}

init
{
    // Check the Version of the Game
    version = modules.First().FileVersionInfo.FileVersion;
    version = version == "1.0.18384.3" || version == "1.0.18384.2" || version == "1.0.18384.1" ? "1.0.6" : "";

    // Timer Control
    vars.TimerModel = new TimerModel { CurrentState = timer };
    vars.StopWatch = new System.Diagnostics.Stopwatch();

    // Component Settings
    vars.FindComponentByLeftText = (Func<string, dynamic>)(
        text => timer.Layout.Components.FirstOrDefault((dynamic x) => x.GetType().Name == "TextComponent" && x.Settings.Text1 == text)
    );

    // Creating the Arrays
    vars.ObtainedKeyItems = new List<byte> { };
    vars.ObtainedPlagaSamples = new List<int> { };
    vars.BlackListedDoors = new Dictionary<int, Tuple<int, int>> { };
    vars.WhiteListedDoors = new Dictionary<int, Tuple<int, int>> { };
    vars.specificAreas = new Dictionary<int, int> { };
    vars.BlackListedDoors.Add(1, Tuple.Create(0, 0));
    vars.BlackListedDoors.Add(2, Tuple.Create(0, 0));

    // Reset Variables
    Action ResetVariables = () =>
    {
        vars.gameMode = "Default";
        vars.chapter = 0;
        vars.towerDoor = false;
        vars.isAreaLoading = false;
        vars.isInvLoading = false;
        vars.isCutSceneLoading = false;
        vars.isOptionsMenu = false;
        vars.BlackListedDoors[1] = Tuple.Create(0, 0);
        vars.BlackListedDoors[2] = Tuple.Create(0, 0);
        vars.StopWatch.Reset();
        vars.invCount = 0;
        vars.loadCount = 0;
    };
    vars.ResetVariables = ResetVariables;
    vars.ResetVariables();

    // Main Game Blacklist
    vars.BlackListedDoors.Add(3, Tuple.Create(262, 260));
    vars.BlackListedDoors.Add(4, Tuple.Create(267, 283));
    vars.BlackListedDoors.Add(5, Tuple.Create(270, 65806));
    vars.BlackListedDoors.Add(6, Tuple.Create(279, 65815));
    vars.BlackListedDoors.Add(7, Tuple.Create(527, 518));
    vars.BlackListedDoors.Add(8, Tuple.Create(525, 518));
    vars.BlackListedDoors.Add(9, Tuple.Create(528, 131600));
    vars.BlackListedDoors.Add(10, Tuple.Create(537, 66073));
    vars.BlackListedDoors.Add(11, Tuple.Create(536, 533));
    vars.BlackListedDoors.Add(12, Tuple.Create(545, 555));
    vars.BlackListedDoors.Add(13, Tuple.Create(555, 544));
    vars.BlackListedDoors.Add(14, Tuple.Create(541, 549));
    vars.BlackListedDoors.Add(15, Tuple.Create(549, 550));
    vars.BlackListedDoors.Add(16, Tuple.Create(554, 768));
    vars.BlackListedDoors.Add(17, Tuple.Create(789, 790));
    vars.BlackListedDoors.Add(18, Tuple.Create(790, 778));
    vars.BlackListedDoors.Add(19, Tuple.Create(778, 790));
    vars.BlackListedDoors.Add(20, Tuple.Create(796, 800));

    // Separate Ways Blacklist
	vars.BlackListedDoors.Add(21, Tuple.Create(1283, 1286));
	vars.BlackListedDoors.Add(22, Tuple.Create(1289, 1294));
	vars.BlackListedDoors.Add(23, Tuple.Create(1292, 1298));
	vars.BlackListedDoors.Add(24, Tuple.Create(1303, 1304));

    // Main Game Whitelist
    vars.WhiteListedDoors.Add(1, Tuple.Create(271, 287));
    vars.WhiteListedDoors.Add(2, Tuple.Create(280, 279));
    vars.WhiteListedDoors.Add(3, Tuple.Create(524, 527));
    vars.WhiteListedDoors.Add(4, Tuple.Create(524, 522));
    vars.WhiteListedDoors.Add(5, Tuple.Create(525, 527));
    vars.WhiteListedDoors.Add(6, Tuple.Create(528, 546));
    vars.WhiteListedDoors.Add(7, Tuple.Create(529, 530));
    vars.WhiteListedDoors.Add(8, Tuple.Create(529, 534));
    vars.WhiteListedDoors.Add(9, Tuple.Create(532, 535));
    vars.WhiteListedDoors.Add(10, Tuple.Create(774, 775));
    vars.WhiteListedDoors.Add(11, Tuple.Create(774, 776));
    vars.WhiteListedDoors.Add(12, Tuple.Create(779, 780));
    vars.WhiteListedDoors.Add(13, Tuple.Create(780, 782));
    vars.WhiteListedDoors.Add(14, Tuple.Create(782, 777));
    // vars.WhiteListedDoors.Add(15, Tuple.Create(160, 141));

	// Separate Ways Whitelist
	vars.WhiteListedDoors.Add(16, Tuple.Create(1286, 1280));
	vars.WhiteListedDoors.Add(17, Tuple.Create(1284, 1285));
	vars.WhiteListedDoors.Add(18, Tuple.Create(1285, 1287));
	vars.WhiteListedDoors.Add(19, Tuple.Create(1288, 1291));

	// Assignment Ada Whitelist
	vars.WhiteListedDoors.Add(20, Tuple.Create(1034, 1035));
	vars.WhiteListedDoors.Add(21, Tuple.Create(1034, 1036));

    vars.specificAreas.Add(257, 100);
    vars.specificAreas.Add(519, 100);
    vars.specificAreas.Add(553, 100);
    vars.specificAreas.Add(283, 180);
    vars.specificAreas.Add(260, 220);
    vars.specificAreas.Add(555, 220);
    vars.specificAreas.Add(817, 220);
    // vars.specificAreas.Add(768, 180);
    // vars.specificAreas.Add(790, 180);
}

update
{
    // Show DA
    var componentDAValue = vars.FindComponentByLeftText("DA");
    if (current.da != old.da && componentDAValue != null && settings["ShowDA"])
    {
        byte difficultyMode = current.difficultyMode;
        switch (difficultyMode)
        {
            case 1:
                componentDAValue.Settings.Text2 = Convert.ToInt32(Math.Floor(current.da / 2.750)).ToString() + " (Amateur)";
                break;
            case 3:
                componentDAValue.Settings.Text2 = Convert.ToInt32(Math.Floor(current.da / 1.83333333)).ToString() + " (Easy)";
                break;
            case 5:
                componentDAValue.Settings.Text2 = current.da.ToString() + " (Normal)";
                break;
            case 6:
                componentDAValue.Settings.Text2 = current.da.ToString() + " (Pro)";
                break;
        }
    }

    // Show Money
    var componentMoneyValue = vars.FindComponentByLeftText("Money");
    if (current.money != old.money && componentMoneyValue != null && settings["ShowMoney"])
        componentMoneyValue.Settings.Text2 = current.money.ToString() + " PTAS";

    // Show Kills
    var componentKills = vars.FindComponentByLeftText("Kills");
    if (current.chapterKills != old.chapterKills && componentKills != null && settings["ShowKills"])
        componentKills.Settings.Text2 = "Total: " + current.totalKills.ToString() + " Chapter: " + current.chapterKills.ToString();

    // Show Accuracy
    var componentAccuracy = vars.FindComponentByLeftText("Accuracy");
    if (current.shotsTotal != old.shotsTotal && componentAccuracy != null && settings["ShowACC"])
    {
        if (current.shotsHitTotal == 0 || current.shotsHitChapter == 0)
            componentAccuracy.Settings.Text2 = "Total: 0 Chapter: 0";
        else
        {
            vars.chapterAccuracy = (Convert.ToDouble(current.shotsHitChapter) / Convert.ToDouble(current.shotsChapter)) * 100;
            vars.totalAccuracy = (Convert.ToDouble(current.shotsHitTotal) / Convert.ToDouble(current.shotsTotal)) * 100;
            componentAccuracy.Settings.Text2 = "Total: " + Math.Round(vars.totalAccuracy).ToString() + " % Chapter: " + Math.Round(vars.chapterAccuracy).ToString() + " %";
        }
    }

    // Show IGT
    var componentIGTValue = vars.FindComponentByLeftText("In Game Time");
    if (current.igt != old.igt && componentIGTValue != null && settings["ShowIGT"])
        componentIGTValue.Settings.Text2 = TimeSpan.FromSeconds(current.igt).ToString();

    vars.isAreaLoading = (current.loadingScreen == 255 || current.screenTrans >= 240) && current.inventory == 0;
    vars.isInvLoading = current.screenTrans == 255 && current.inventory == 1;
    vars.isCutSceneLoading = vars.specificAreas.ContainsKey(current.currentArea) && current.screenTrans >= vars.specificAreas[current.currentArea] && current.currentScreen == 64 && vars.gameMode == "MG";
    vars.isOptionsMenu = current.currentScreen == 208;

    // Show Loading Time and Counter
    var componentLoadingTime = vars.FindComponentByLeftText("Loading Time");
    if (componentLoadingTime != null)
        componentLoadingTime.Settings.Text2 = vars.StopWatch.Elapsed.ToString(@"h\:mm\:ss\.ff");

    if (current.inventory == 1 && old.inventory == 0 && vars.gameMode != "Default")
        vars.invCount++;

    if (current.loadingScreen == 255 && old.loadingScreen == 0 && vars.gameMode != "Default")
        vars.loadCount++;

    var componentCounter = vars.FindComponentByLeftText("Counter");
    if (componentCounter != null)
        componentCounter.Settings.Text2 = vars.loadCount + " Loadings | " + vars.invCount + " Invs";
}

start
{
    // Check to see if Main Game is running
    if (current.screenTrans <= 240 && old.screenTrans >= 240 && current.currentArea == 256 && settings["MainGameSplits"])
    {
        vars.ResetVariables();
        vars.gameMode = "MG";
        vars.ObtainedKeyItems = new List<byte> { };
        return true;
    }

    // Check to see if Separate Ways is running
    else if (current.map == 0 && old.map == 1 && current.currentArea == 1280 && settings["SeparateWaysSplits"])
    {
        vars.ResetVariables();
        vars.gameMode = "SW";
        vars.ObtainedKeyItems = new List<byte> { };
        return true;
    }

    // Check to see if Assignment Ada is running
    else if (current.subtitle == 0 && old.subtitle == 1 && current.currentPoint == 1029 && settings["AssignmentAdaSplits"])
    {
        vars.ResetVariables();
        vars.gameMode = "AA";
        vars.ObtainedPlagaSamples = new List<int> { };
        return true;
    }
}

split
{
    // Door Splits
    if (current.currentArea != old.currentArea && vars.gameMode != "Default" && settings["DoorSplits"])
    {
        if (!vars.BlackListedDoors.ContainsValue(Tuple.Create(Convert.ToInt32(old.currentArea), Convert.ToInt32(current.currentArea))))
        {
            vars.BlackListedDoors[1] = Tuple.Create(Convert.ToInt32(old.currentArea), Convert.ToInt32(current.currentArea));
            vars.BlackListedDoors[2] = Tuple.Create(Convert.ToInt32(current.currentArea), Convert.ToInt32(old.currentArea));
            return true;
        }
        else if (vars.WhiteListedDoors.ContainsValue(Tuple.Create(Convert.ToInt32(old.currentArea), Convert.ToInt32(current.currentArea))) || vars.WhiteListedDoors.ContainsValue(Tuple.Create(Convert.ToInt32(current.currentArea), Convert.ToInt32(old.currentArea))))
        {
            return true;
        }
    }

    // Chapter Splits
    if (current.isEndOfChapter - old.isEndOfChapter == 65536 && (vars.gameMode == "MG" || vars.gameMode == "SW"))
    {
        vars.chapter++;
        return settings["Chapter" + vars.chapter.ToString() + vars.gameMode];
    }

    // Item Splits
    if (current.item != old.item && !vars.ObtainedKeyItems.Contains(current.item) && settings["Item" + current.item.ToString() + vars.gameMode])
    {
        vars.ObtainedKeyItems.Add(current.item);
        return true;
    }

    // Assignment Ada Splits
    if ((current.fslPlaga > old.fslPlaga || current.tfPlaga > old.tfPlaga) && vars.gameMode == "AA")
    {
        if (!vars.ObtainedPlagaSamples.Contains(current.fslPlaga) && settings["Sample" + current.fslPlaga.ToString()])
        {
            vars.ObtainedPlagaSamples.Add(current.fslPlaga);
            return true;
        }
        else if (!vars.ObtainedPlagaSamples.Contains(current.tfPlaga) && settings["Sample" + current.tfPlaga.ToString()])
        {
            vars.ObtainedPlagaSamples.Add(current.tfPlaga);
            return true;
        }
    }

    // Check to see if the Door was used after defeating Krauser
    if (current.subtitle == 0 && current.fslPlaga == 28 && current.operate == 0 && old.operate == 65537 && !vars.towerDoor && vars.gameMode == "AA")
        vars.towerDoor = true;

    // Split at the Bridge Door after reunited with Ashley
    if (current.currentArea == 518 && old.currentArea == 527 && current.isEndOfChapter >= 655360 && vars.gameMode == "MG" && settings["DoorSplits"])
        return true;

    // Final Splits
    return
    current.mgEnd != old.mgEnd && vars.gameMode == "MG" ||
    current.swEnd != old.swEnd && vars.gameMode == "SW" ||
    current.subtitle == 0 && old.subtitle == 1 && current.fslPlaga == 28 && current.operate == 256 && vars.towerDoor && vars.gameMode == "AA";
}

isLoading
{
    // Pause Timer when the Load Screen or Pause Menu
    if (current.inventory == 1)
    {
        if (vars.isInvLoading)
        {
            vars.StopWatch.Start();
            return true;
        }
        else
        {
            vars.StopWatch.Stop();
            return false;
        }

    }
    else
    {
        if (vars.isAreaLoading || vars.isCutSceneLoading)
        {
            vars.StopWatch.Start();
            return true;
        }
        else if (vars.isOptionsMenu)
        {
            vars.StopWatch.Stop();
            return true;
        }
        else
        {
            vars.StopWatch.Stop();
            return false;
        }
    }

    /*
    if (current.inventory == 1)
        return vars.isInvLoading;
    else
        return vars.isAreaLoading || vars.isCutSceneLoading || vars.isOptionsMenu;
    */
}

reset
{
    // Reset Timer when the Main Menu
    if (current.igt == 0 && old.igt != 0)
    {
        vars.ResetVariables();
        return true;
    }
}

exit
{
    // Reset Timer when the Game Exit
    if (timer.CurrentPhase != TimerPhase.Ended)
        vars.TimerModel.Reset();
}