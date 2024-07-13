// Version 1.1.0 (Latest)
state("bio4", "1.1.0")
{
    byte screenTrans       : 0x858F7B; // Screen Transition (0 - 255)
    byte menu              : 0x87AD04; // Menu Screen (Inv: 1, Map: 2, Merchant: 16, Contact: 32, Manual: 64, Key Item Selection: 128)
    byte subtitle          : 0x817840; // Subtitles on the screen (ON: 1)
    byte chapter           : 0x85F6FA; // Increment by 1 at the end of chapter
    byte item              : 0x858EE4; // Item ID
    byte fslSample         : 0x85F9EC; // First, second, and last Plaga Samples (First: 8, Second: 12, Last: 28)
    byte tfSample          : 0x85F9F3; // Third and fourth Plaga Samples (Third: 64, Fourth: 80)
    byte mgEnding          : 0x8594BB; // Ending Cutscene in Main Game (ON: 9)
    byte swEnding          : 0x851173; // Ending Cutscene in Separate Ways (ON: 9)
    byte aaEnding          : 0x863A18; // Ending Cutscene in Assignment Ada (ON: 32)
    byte loading           : 0x858F77; // Loading Screen (ON: 255)
    byte cutscene          : 0x85A7B5; // Cutscene Screen (MG and AA: 12, SW: 28)
    byte pauseMenu         : 0x851D80; // Pause Menu Screen (ON: 7)
    byte frameRate         : 0x82B7A0; // FPS Setting (30 or 60)
    int room               : 0x85F70C; // The room you're in
    int totalFrames        : 0xCECB18; // Total Frames
    int igt                : 0x85F704; // In Game Time

    byte difficultyMode    : 0x862BDC; // Difficulty Mode (Amateur: 1, Easy: 3, Normal: 5, Professional: 6)
    byte character         : 0x85F728; // Character (Leon: 0, Ada: 2, Hunk: 3, Krauser: 4, Wesker: 5)
    short da               : 0x85F6F4; // Difficulty Adjustment
    short mainHealth       : 0x85F714; // Main Character's health
    short ashleyHealth     : 0x85F718; // Ashley's health
    short chapterShots     : 0x862BD4; // Shots fired in chapter
    short totalShots       : 0x862BD8; // Shots fired in total
    short chapterShotsHit  : 0x862BCC; // Shots hit in chapter
    short totalShotsHit    : 0x862BD0; // Shots hit in total
    short chapterKills     : 0x862BC4; // Kills in chapter
    short totalKills       : 0x862BC8; // Kills in total
    short chapterDeaths    : 0x862BC0; // Deaths in chapter
    short totalDeaths      : 0x862BC2; // Deaths in total
    int money              : 0x85F708; // Money
}

// Version 1.0.6 (Latest in Japan)
state("bio4", "1.0.6")
{
    byte screenTrans       : 0x8556FB;
    byte menu              : 0x877484;
    byte subtitle          : 0x814030;
    byte chapter           : 0x85BE7A;
    byte item              : 0x855664;
    byte fslSample         : 0x85C16C;
    byte tfSample          : 0x85C173;
    byte mgEnding          : 0x855C38;
    byte swEnding          : 0x84D8F3;
    byte aaEnding          : 0x860198;
    byte loading           : 0x8556F7;
    byte cutscene          : 0x856F35;
    byte pauseMenu         : 0x84E500;
    byte frameRate         : 0x827F38;
    int room               : 0x85BE8C;
    int totalFrames        : 0xCE9298;
    int igt                : 0x85BE84;

    byte difficultyMode    : 0x85F35C;
    byte character         : 0x85BEA8;
    short da               : 0x85BE74;
    short mainHealth       : 0x85BE94;
    short ashleyHealth     : 0x85BE98;
    short chapterShots     : 0x85F354;
    short totalShots       : 0x85F358;
    short chapterShotsHit  : 0x85F34C;
    short totalShotsHit    : 0x85F350;
    short chapterKills     : 0x85F344;
    short totalKills       : 0x85F348;
    short chapterDeaths    : 0x85F340;
    short totalDeaths      : 0x85F342;
    int money              : 0x85BE88;
}

startup
{
    // Main Game Splits
    settings.Add("MainGameSplits", true, "Main Game");
        settings.Add("MainGameChapterSplits", true, "Chapters", "MainGameSplits");
        settings.SetToolTip("MainGameChapterSplits", "Check this option if you want to split on Chapters.");
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
        settings.SetToolTip("MainGameItemSplits", "Check this option if you want to split on Key Items.");
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

    // Separate Ways Splits
    settings.Add("SeparateWaysSplits", true, "Separate Ways");
        settings.Add("SeparateWaysChapterSplits", true, "Chapters", "SeparateWaysSplits");
        settings.SetToolTip("SeparateWaysChapterSplits", "Check this option if you want to split on Chapters.");
            settings.Add("Chapter21SW", true, "Chapter 1", "SeparateWaysChapterSplits");
            settings.Add("Chapter22SW", true, "Chapter 2", "SeparateWaysChapterSplits");
            settings.Add("Chapter23SW", true, "Chapter 3", "SeparateWaysChapterSplits");
            settings.Add("Chapter24SW", true, "Chapter 4", "SeparateWaysChapterSplits");
            settings.Add("Chapter25SW", true, "Chapter 5", "SeparateWaysChapterSplits");

        settings.Add("SeparateWaysItemSplits", false, "Key Items", "SeparateWaysSplits");
        settings.SetToolTip("SeparateWaysItemSplits", "Check this option if you want to split on Key Items.");
            settings.Add("Item59SW", true, "Insignia Key", "SeparateWaysItemSplits");
            settings.Add("Item118SW", true, "Green Catseye", "SeparateWaysItemSplits");
            settings.Add("Item60SW", true, "Round Insignia", "SeparateWaysItemSplits");
            settings.Add("Item129SW", true, "Iron Key", "SeparateWaysItemSplits");
            settings.Add("Item142SW", true, "Lift Activation Key", "SeparateWaysItemSplits");
            settings.Add("Item27SW", true, "Hourglass w/ gold decor", "SeparateWaysItemSplits");
            settings.Add("Item49SW", true, "Activation Key (blue)", "SeparateWaysItemSplits");
            settings.Add("Item51SW", true, "Activation Key (red)", "SeparateWaysItemSplits");

    // Assignment Ada Splits
    settings.Add("AssignmentAdaSplits", true, "Assignment Ada");
        settings.Add("AssignmentAdaSamplesSplits", true, "Plaga Samples", "AssignmentAdaSplits");
        settings.SetToolTip("AssignmentAdaSamplesSplits", "Check this option if you want to split on Plaga Samples.");
            settings.Add("Sample8", true, "Plaga Sample 1", "AssignmentAdaSamplesSplits");
            settings.Add("Sample12", true, "Plaga Sample 2", "AssignmentAdaSamplesSplits");
            settings.Add("Sample64", true, "Plaga Sample 3", "AssignmentAdaSamplesSplits");
            settings.Add("Sample80", true, "Plaga Sample 4", "AssignmentAdaSamplesSplits");
            settings.Add("Sample28", true, "Plaga Sample 5", "AssignmentAdaSamplesSplits");

    // Door Splits
    settings.Add("DoorSplits", true, "Door Splits");
    settings.SetToolTip("DoorSplits", "Check this option if you want to use Door Splits.");

    // Infomation
    settings.Add("Infos", false, "Information");
    settings.SetToolTip("Infos", "Check this option if you want to show Infomation.");
        settings.Add("ShowDA", true, "DA", "Infos");
        settings.Add("ShowHealth", true, "Health", "Infos");
        settings.Add("ShowMoney", true, "Money", "Infos");
        settings.Add("ShowAccuracy", true, "Accuracy", "Infos");
        settings.Add("ShowKills", true, "Kills", "Infos");
        settings.Add("ShowDeaths", true, "Deaths", "Infos");
        settings.Add("ShowIGT", true, "In Game Time", "Infos");
        settings.Add("ShowInvs", true, "Inventory Counter", "Infos");
}

init
{
    // Check the version of the game
    version = modules.First().FileVersionInfo.FileVersion;
    version = version == "1.0.18384.3" || version == "1.0.18384.2" || version == "1.0.18384.1" ? "1.0.6" : "1.1.0";

    // Crating the TimerModel
    vars.TimerModel = new TimerModel { CurrentState = timer };

    // Creating the Text Component
    vars.CreateTextComponent = (Func<string, dynamic>) ((text) =>
    {
		dynamic textComponentAssembly = Assembly.LoadFrom("Components\\LiveSplit.Text.dll");
		dynamic textComponent = Activator.CreateInstance(textComponentAssembly.GetType("LiveSplit.UI.Components.TextComponent"), timer);
		timer.Layout.LayoutComponents.Add(new LiveSplit.UI.Components.LayoutComponent("LiveSplit.Text.dll", textComponent as LiveSplit.UI.Components.IComponent));
		textComponent.Settings.Text1 = text;
		return textComponent;
	});

    // Updating the Text Component
	vars.UpdateTextComponent = (Func<string, dynamic>) ((text) =>
    {
        dynamic textComponent = timer.Layout.Components.FirstOrDefault((dynamic x) => x.GetType().Name == "TextComponent" && x.Settings.Text1 == text);
        textComponent = textComponent ?? vars.CreateTextComponent(text);
        return textComponent.Settings;
	});

    // Reset Variables when the timer is start or reset
    vars.ResetVariables = (Action<string>) ((gameMode) =>
    {
        vars.gameMode = gameMode; // Game Mode ("Default", "MG", "SW", "AA")
        vars.dropFrames = 0; // Count this when the frame drops
        vars.totalInvs = 0; // Inventories opened in chapter
        vars.chapterInvs = 0; // Inventories opened in total
        vars.CompletedDoors = new List<Tuple<int, int>>(); // Store the room IDs passed
        vars.ObtainedKeyItems = new List<byte>(); // Store the Key Items obtained
        vars.ObtainedPlagaSamples = new List<byte>(); // Store the Plaga Samples obtained
    });
    vars.ResetVariables("Default");

    // Store the room IDs that are not split
    vars.BlackListedDoors = new List<Tuple<int, int>>()
    {
        // Main Game Blacklist
        Tuple.Create(262, 260), // Chapter 1-1 End
        Tuple.Create(267, 283), // Chapter 1-3 End
        Tuple.Create(279, 65815), // Chapter 2-1 End
        Tuple.Create(527, 518), // Chapter 3-3 End
        Tuple.Create(525, 518), // Chapter 3-4 End
        Tuple.Create(545, 555), // Chapter 4-1 End
        Tuple.Create(541, 549), // Chapter 4-2 End
        Tuple.Create(549, 550), // Chapter 4-3 End
        Tuple.Create(554, 768), // Chapter 4-4 End
        Tuple.Create(789, 790), // Chapter 5-2 End
        Tuple.Create(796, 800), // Chapter 5-3 End
        Tuple.Create(270, 65806), // Waterway A → Waterway B
        Tuple.Create(528, 131600), // Ride the Castle Gondola A
        Tuple.Create(537, 66073), // Ride the Castle Gondola B
        Tuple.Create(536, 533), // Gatekeeper Hallway → Lord's Room
        Tuple.Create(555, 544), // Prophet's Room (Cutscene) → Area before the Mine
        Tuple.Create(790, 778), // Machine Room Entry → Communications Tower (Cutscene)

        // Separate Ways Blacklist
        Tuple.Create(1283, 1286), // Chapter 1 End
        Tuple.Create(1289, 1294), // Chapter 2 End
        Tuple.Create(1292, 1298), // Chapter 3 End
        Tuple.Create(1303, 1304) // Chapter 4 End
    };

    // Store the room IDs that are passed through multiple times
    vars.WhiteListedDoors = new List<Tuple<int, int>>()
    {
        // Main Game Whitelist
        Tuple.Create(271, 287), // Lift ↔ Slaughterhouse
        Tuple.Create(280, 279), // Cemetery (Night) ↔ Church
        Tuple.Create(524, 527), // Dining Hall ↔ Gallery
        Tuple.Create(524, 522), // Dining Hall ↔ Western Castle Wall
        Tuple.Create(525, 526), // Study ↔ Storeroom
        Tuple.Create(528, 546), // Castle Gondola A ↔ Dragon Room
        Tuple.Create(529, 530), // Lobby ↔ Weapon Exhibition Room
        Tuple.Create(529, 534), // Lobby ↔ Knight Room
        Tuple.Create(532, 535), // Exterior Clocktower ↔ Clock Tower
        Tuple.Create(774, 775), // Stairs Hallway ↔ Operating Theatre
        Tuple.Create(774, 776), // Stairs Hallway ↔ Freezer Room
        Tuple.Create(779, 780), // Waste Treatment Plant ↔ Confinement Room
        Tuple.Create(780, 782), // Confinement Room ↔ Doctor's Office
        Tuple.Create(782, 777), // Doctor's Office ↔ Culture Room

        // Separate Ways Whitelist
        Tuple.Create(1286, 1284), // Village Chief's House ↔ Village Center
        Tuple.Create(1284, 1285), // Village Center ↔ Farm
        Tuple.Create(1285, 1287), // Farm ↔ Deserted Village
        Tuple.Create(1288, 1291), // Lift ↔ Slaughterhouse

        // Assignment Ada Whitelist
        Tuple.Create(1034, 1035), // Stairs Hallway ↔ Operating Theatre
        Tuple.Create(1034, 1036) // Stairs Hallway ↔ Freezer Room
    };
}

update
{
    // Count the dropping frames
    if (current.totalFrames == old.totalFrames)
        vars.dropFrames++;
    else if (current.totalFrames != old.totalFrames && vars.dropFrames > 2)
        vars.dropFrames = 0;

    // Show DA
    if (current.da != old.da && settings["ShowDA"])
    {
        dynamic componentDA = vars.UpdateTextComponent("DA");
        byte difficultyMode = current.difficultyMode;
        short amateurMaxDA = 3999;
        short easyMaxDA = 5999;
        short normalMaxDA = 10999;

        switch (difficultyMode)
        {
            // Amateur (Max DA: 3999)
            case 1:
                double amateurDA = Math.Floor(current.da / ((double) normalMaxDA / amateurMaxDA));
                componentDA.Text2 = amateurDA.ToString() + " (Amateur)";
                break;

            // Easy (Max DA: 5999)
            case 3:
                double easyDA = Math.Floor(current.da / ((double) normalMaxDA / easyMaxDA));
                componentDA.Text2 = easyDA.ToString() + " (Easy)";
                break;

            // Normal (Max DA: 10999)
            case 5:
                componentDA.Text2 = current.da.ToString() + " (Normal)";
                break;

            // Professional (Max DA: 10999)
            case 6:
                componentDA.Text2 = current.da.ToString() + " (Pro)";
                break;
        }
    }

    // Show Health
    if ((current.mainHealth != old.mainHealth || current.ashleyHealth != old.ashleyHealth) && settings["ShowHealth"])
    {
        dynamic componentHealth = vars.UpdateTextComponent("Health");
        byte character = current.character;

        switch (character)
        {
            // Leon
            case 0:
                componentHealth.Text2 = "Leon: " + current.mainHealth.ToString() + " Ashley: " + current.ashleyHealth.ToString();
                break;

            // Ada
            case 2:
                componentHealth.Text2 = "Ada: " + current.mainHealth.ToString();
                break;

            // Other Character
            default:
                componentHealth.Text2 = "Other: " + current.mainHealth.ToString();
                break;
        }
    }

    // Show Money
    if (current.money != old.money && settings["ShowMoney"])
    {
        dynamic componentMoney = vars.UpdateTextComponent("Money");
        componentMoney.Text2 = current.money.ToString() + " PTAS";
    }

    // Show Accuracy
    if (current.chapterShots != old.chapterShots && settings["ShowAccuracy"])
    {
        dynamic componentAccuracy = vars.UpdateTextComponent("Accuracy");

        // Check to see if the shots hit is 0
        if (current.totalShotsHit == 0 && current.chapterShotsHit == 0)
            componentAccuracy.Text2 = "Total: 0% Chapter: 0%";

        // Check to see if the shots hit in chapter is 0
        else if (current.totalShotsHit > 0 && current.chapterShotsHit == 0)
        {
            double totalAccuracy = Math.Round(((double) current.totalShotsHit / current.totalShots) * 100);
            componentAccuracy.Text2 = "Total: " + totalAccuracy.ToString() + " % Chapter: 0%";
        }

        // Check to see if the shots hit is more than 0
        else
        {
            double chapterAccuracy = Math.Round(((double) current.chapterShotsHit / current.chapterShots) * 100);
            double totalAccuracy = Math.Round(((double) current.totalShotsHit / current.totalShots) * 100);
            componentAccuracy.Text2 = "Total: " + totalAccuracy.ToString() + " % Chapter: " + chapterAccuracy.ToString() + " %";
        }
    }

    // Show Kills
    if (current.chapterKills != old.chapterKills && settings["ShowKills"])
    {
        dynamic componentKills = vars.UpdateTextComponent("Kills");
        componentKills.Text2 = "Total: " + current.totalKills.ToString() + " Chapter: " + current.chapterKills.ToString();
    }

    // Show Deaths
    if (current.chapterDeaths != old.chapterDeaths && settings["ShowDeaths"])
    {
        dynamic componentDeaths = vars.UpdateTextComponent("Deaths");
        componentDeaths.Text2 = "Total: " + current.totalDeaths.ToString() + " Chapter: " + current.chapterDeaths.ToString();
    }

    // Show IGT
    if (current.igt != old.igt && settings["ShowIGT"])
    {
        dynamic componentIGT = vars.UpdateTextComponent("IGT");
        componentIGT.Text2 = TimeSpan.FromSeconds(current.igt).ToString();
    }

    // Show Inventory Counter
    if (settings["ShowInvs"])
    {
        dynamic componentInvs = vars.UpdateTextComponent("Invs");
        int oldChapterInvs = vars.chapterInvs;

        // Check to see if the inventory is opened
        if (current.menu == 1 && old.menu == 0)
        {
            vars.totalInvs++;
            vars.chapterInvs++;
        }

        // Initialize chapter inventories at the end of chapter
        else if (current.chapter > old.chapter)
            vars.chapterInvs = 0;

        if (vars.chapterInvs != oldChapterInvs)
            componentInvs.Text2 = "Total: " + vars.totalInvs.ToString() + " Chapter: " + vars.chapterInvs.ToString();
    }

    // Debug Feature
    dynamic componentTimerPhase = vars.UpdateTextComponent("TimerPhase");
    if ((current.loading == 255 || current.screenTrans >= 240)
       || (current.cutscene == 12 || current.cutscene == 28)
       || (current.pauseMenu == 7 && current.menu == 0)
       || (vars.dropFrames > 2 && current.frameRate == 60 || vars.dropFrames > 3 && current.frameRate == 30))
    {
        componentTimerPhase.Text2 = "Paused";
    }
    else
        componentTimerPhase.Text2 = "Unpaused";

    dynamic componentFrameDrop = vars.UpdateTextComponent("dropFrames");
    componentFrameDrop.Text2 = "" + vars.dropFrames.ToString();

    dynamic componentRoomID = vars.UpdateTextComponent("Room ID");
    componentRoomID.Text2 = "" + current.room.ToString();
}

start
{
    // Check to see if Main Game is running
    if (current.screenTrans <= 240 && old.screenTrans >= 240 && current.room == 256 && settings["MainGameSplits"])
    {
        vars.ResetVariables("MG");
        return true;
    }

    // Check to see if Separate Ways is running
    if (current.menu == 0 && old.menu == 2 && current.room == 1280 && settings["SeparateWaysSplits"])
    {
        vars.ResetVariables("SW");
        return true;
    }

    // Check to see if Assignment Ada is running
    if (current.subtitle == 0 && old.subtitle == 1 && current.room == 1029 && settings["AssignmentAdaSplits"])
    {
        vars.ResetVariables("AA");
        return true;
    }

    return false;
}

split
{
    // Door Splits
    if (current.room != old.room && vars.gameMode != "Default" && settings["DoorSplits"])
    {
        // Don't split if the blacklist or completed doors contains the current and old room IDs
        if (vars.BlackListedDoors.Contains(Tuple.Create(old.room, current.room))
           || vars.BlackListedDoors.Contains(Tuple.Create(current.room, old.room))
           || vars.CompletedDoors.Contains(Tuple.Create(old.room, current.room))
           || vars.CompletedDoors.Contains(Tuple.Create(current.room, old.room)))
        {
            return false;
        }

        // Split if the whitelist contains the current and old room IDs
        else if (vars.WhiteListedDoors.Contains(Tuple.Create(old.room, current.room))
                || vars.WhiteListedDoors.Contains(Tuple.Create(current.room, old.room)))
        {
            return true;
        }

        // Split at all other doors
        vars.CompletedDoors.Add(Tuple.Create(old.room, current.room));
        return true;
    }

    // Chapter Splits
    if (current.chapter > old.chapter && settings["Chapter" + current.chapter.ToString() + vars.gameMode])
        return true;

    // Item Splits
    if (current.item != old.item && !vars.ObtainedKeyItems.Contains(current.item) && settings["Item" + current.item.ToString() + vars.gameMode])
    {
        vars.ObtainedKeyItems.Add(current.item);
        return true;
    }

    // Assignment Ada Splits
    if ((current.fslSample > old.fslSample || current.tfSample > old.tfSample) && vars.gameMode == "AA")
    {
        // Split when the first, second, and last Plaga Samples are picked up
        if (!vars.ObtainedPlagaSamples.Contains(current.fslSample) && settings["Sample" + current.fslSample.ToString()])
        {
            vars.ObtainedPlagaSamples.Add(current.fslSample);
            return true;
        }

        // Split when the third and fourth Plaga Samples are picked up
        else if (!vars.ObtainedPlagaSamples.Contains(current.tfSample) && settings["Sample" + current.tfSample.ToString()])
        {
            vars.ObtainedPlagaSamples.Add(current.tfSample);
            return true;
        }
    }

    // Split at the bridge door after reunited with Ashley
    if (current.room == 518 && old.room == 527 && current.chapter == 10 && vars.gameMode == "MG" && settings["DoorSplits"])
        return true;

    // Final Splits
    if (current.mgEnding != old.mgEnding && current.room == 819 && vars.gameMode == "MG" // Main Game Ending
       || current.swEnding != old.swEnding && current.room == 1310 && vars.gameMode == "SW" // Separate Ways Ending
       || current.aaEnding != old.aaEnding && current.room == 1038 && vars.gameMode == "AA") // Assignment Ada Ending
    {
        return true;
    }

    return false;
}

isLoading
{
    // Main Loading
    if (current.loading == 255 || current.screenTrans >= 240)
        return true;

    // Cutscene Loading
    if (current.cutscene == 12 || current.cutscene == 28)
        return true;

    // Pause Menu Screen
    if (current.pauseMenu == 7 && current.menu == 0)
        return true;

    // Frame Drops
    if (vars.dropFrames > 2 && current.frameRate == 60 || vars.dropFrames > 3 && current.frameRate == 30)
        return true;

    return false;
}

reset
{
    // Reset timer when the IGT equals 0
    if (current.igt == 0 && old.igt != 0)
    {
        vars.ResetVariables("Default");
        return true;
    }

    return false;
}

exit
{
    // Reset timer when exit the game
    if (timer.CurrentPhase != TimerPhase.Ended)
        vars.TimerModel.Reset();
}