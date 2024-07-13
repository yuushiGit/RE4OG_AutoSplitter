// Version 1.1.0 (Latest)
state("bio4", "1.1.0")
{
    byte gameState         : 0xE3F920; // Increases constantly while the game is running (0-255)
    byte screenTrans       : 0x858F7B; // Screen Transition (0-255)
    byte loading           : 0x858F77; // Loading Screen (ON: 255)
    byte menu              : 0x87AD04; // Menu Screen (Inv: 1, Map: 2, Merchant: 16, Contact: 32, Manual: 64, Key Item Selection: 128)
    byte menuExit          : 0x858F97; // Exit the Menu (ON: 64)
    byte cutscene          : 0x85A7B5; // Cutscene Screen (MG and AA: 12, SW: 28)
    byte pauseMenu         : 0x8597BB; // Pause Menu Screen (ON: 208)
    byte subtitle          : 0x817840; // Subtitles on the Screen (ON: 1)
    byte fslSample         : 0x85F9EC; // First, Second, and Last Sample (First: 8, Second: 12, Last: 28)
    byte tfSample          : 0x85F9F3; // Third and Fourth Sample (Third: 64, Fourth: 80)
    byte mgEnding          : 0x8594BB; // Ending Cutscene in Main Game  (ON: 9)
    byte swEnding          : 0x851173; // Ending Cutscene in Separate Ways (ON: 9)
    byte aaEnding          : 0x863A18; // Ending Cutscene in Assignment Ada (ON: 32)
    byte itemId            : 0x858EE4; // Item ID
    byte stageId           : 0x85F70D; // Stage ID (Village: 1, Castle: 2, Island: 3, AA and Mercs: 4, SW: 5)
    int roomId             : 0x85A788; // Room ID
    int isEndOfChapter     : 0x85F6F8; // 65536 increase at the End of Chapter
    int igt                : 0x85F704; // In Game Time (Seconds)

    byte difficultyMode    : 0x862BDC; // Difficulty Mode (Pro: 6, Normal: 5, Easy: 3, Amateur: 1)
    int da                 : 0x85F6F4; // Difficulty Adjustment
    int money              : 0x85F708; // Money
    int chapterKills       : 0x862BC4; // Chapter Kills
    int totalKills         : 0x862BC8; // Total Kills
    int shotsChapter       : 0x862BD4; // Shots Fired in Chapter
    int shotsHitChapter    : 0x862BCC; // Shots Hit in Chapter
    int shotsTotal         : 0x862BD8; // Shots Fired in Total
    int shotsHitTotal      : 0x862BD0; // Shots Hit in Total
}

// Version 1.0.6 (Latest in Japan)
state("bio4", "1.0.6")
{
    byte gameState         : 0xE3C0A0;
    byte screenTrans       : 0x8556FB;
    byte loading           : 0x8556F7;
    byte menu              : 0x877484;
    byte menuExit          : 0x855717;
    byte cutscene          : 0x856F35;
    byte pauseMenu         : 0x855F3B;
    byte subtitle          : 0x814030;
    byte fslSample         : 0x85C16C;
    byte tfSample          : 0x85C173;
    byte mgEnding          : 0x855C38;
    byte swEnding          : 0x84D8F3;
    byte aaEnding          : 0x860198;
    byte itemId            : 0x855664;
    byte stageId           : 0x85BE8D;
    int roomId             : 0x856F08;
    int isEndOfChapter     : 0x85BE78;
    int igt                : 0x85BE84;

    byte difficultyMode    : 0x85F35C;
    int da                 : 0x85BE74;
    int money              : 0x85BE88;
    int chapterKills       : 0x85F344;
    int totalKills         : 0x85F348;
    int shotsChapter       : 0x85F354;
    int shotsHitChapter    : 0x85F34C;
    int shotsTotal         : 0x85F358;
    int shotsHitTotal      : 0x85F350;
}

startup
{
    // Main Game Splits
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
        settings.SetToolTip("MainGameChapterSplits", "Check this option if you want to split on Chapters.");

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
        settings.SetToolTip("MainGameItemSplits", "Check this option if you want to split on Key Items.");

    // Separate Ways Splits
    settings.Add("SeparateWaysSplits", true, "Separate Ways");
        settings.Add("SeparateWaysChapterSplits", true, "Chapters", "SeparateWaysSplits");
            settings.Add("Chapter1SW", true, "Chapter 1", "SeparateWaysChapterSplits");
            settings.Add("Chapter2SW", true, "Chapter 2", "SeparateWaysChapterSplits");
            settings.Add("Chapter3SW", true, "Chapter 3", "SeparateWaysChapterSplits");
            settings.Add("Chapter4SW", true, "Chapter 4", "SeparateWaysChapterSplits");
            settings.Add("Chapter5SW", true, "Chapter 5", "SeparateWaysChapterSplits");
        settings.SetToolTip("SeparateWaysChapterSplits", "Check this option if you want to split on Chapters.");

        settings.Add("SeparateWaysItemSplits", false, "Key Items", "SeparateWaysSplits");
            settings.Add("Item59SW", true, "Insignia Key", "SeparateWaysItemSplits");
            settings.Add("Item118SW", true, "Green Catseye", "SeparateWaysItemSplits");
            settings.Add("Item60SW", true, "Round Insignia", "SeparateWaysItemSplits");
            settings.Add("Item129SW", true, "Iron Key", "SeparateWaysItemSplits");
            settings.Add("Item142SW", true, "Lift Activation Key", "SeparateWaysItemSplits");
            settings.Add("Item27SW", true, "Hourglass w/ gold decor", "SeparateWaysItemSplits");
            settings.Add("Item49SW", true, "Activation Key (blue)", "SeparateWaysItemSplits");
            settings.Add("Item51SW", true, "Activation Key (red)", "SeparateWaysItemSplits");
        settings.SetToolTip("SeparateWaysItemSplits", "Check this option if you want to split on Key Items.");

    // Assignment Ada Splits
    settings.Add("AssignmentAdaSplits", true, "Assignment Ada");
        settings.Add("AssignmentAdaSamplesSplits", true, "Plaga Samples", "AssignmentAdaSplits");
            settings.Add("Sample8", true, "Plaga Sample 1", "AssignmentAdaSamplesSplits");
            settings.Add("Sample12", true, "Plaga Sample 2", "AssignmentAdaSamplesSplits");
            settings.Add("Sample64", true, "Plaga Sample 3", "AssignmentAdaSamplesSplits");
            settings.Add("Sample80", true, "Plaga Sample 4", "AssignmentAdaSamplesSplits");
            settings.Add("Sample28", true, "Plaga Sample 5", "AssignmentAdaSamplesSplits");
        settings.SetToolTip("AssignmentAdaSamplesSplits", "Check this option if you want to split on Plaga Samples.");

    // Door Splits
    settings.Add("DoorSplits", true, "Door Splits");
    settings.SetToolTip("DoorSplits", "Check this option if you want to use Door Splits.");

    // Show Game Infomation
    settings.Add("Infos", false, "Information");
        settings.Add("ShowDA", true, "DA", "Infos");
        settings.Add("ShowMoney", true, "Money", "Infos");
        settings.Add("ShowKills", true, "Kills", "Infos");
        settings.Add("ShowAccuracy", true, "Accuracy", "Infos");
        settings.Add("ShowIGT", true, "In Game Time", "Infos");
    settings.SetToolTip("Infos", "Check this option if you want to show Game Infomation on LiveSplit.");
}

init
{
    // Check the version of the game
    version = modules.First().FileVersionInfo.FileVersion;
    version = version == "1.0.18384.3" || version == "1.0.18384.2" || version == "1.0.18384.1" ? "1.0.6" : "1.1.0";

    // Crating the TimerModel
    vars.TimerModel = new TimerModel { CurrentState = timer };

    // Creating the Text Component
    vars.CreateTextComponent = (Func<string, dynamic>) ((name) =>
    {
		var textComponentAssembly = Assembly.LoadFrom("Components\\LiveSplit.Text.dll");
		dynamic textComponent = Activator.CreateInstance(textComponentAssembly.GetType("LiveSplit.UI.Components.TextComponent"), timer);
		timer.Layout.LayoutComponents.Add(new LiveSplit.UI.Components.LayoutComponent("LiveSplit.Text.dll", textComponent as LiveSplit.UI.Components.IComponent));
		textComponent.Settings.Text1 = name;
		return textComponent.Settings;
	});

    // Updating the Text Component
	vars.UpdateTextComponent = (Func<string, dynamic>) ((name) =>
    {
        dynamic textComponent = null;
		foreach (dynamic component in timer.Layout.Components)
        {
			if (component.GetType().Name != "TextComponent")
                continue;

			if (component.Settings.Text1 == name)
            {
				textComponent = component.Settings;
				break;
			}
		}

		if (textComponent == null)
			textComponent = vars.CreateTextComponent(name);

        return textComponent;
	});

    // Creating the lists
    vars.ObtainedKeyItems = new List<byte>(); // Store the Key Items obtained
    vars.ObtainedPlagaSamples = new List<byte>(); // Store the Plaga Samples obtained
    vars.BlackListedDoors = new List<Tuple<int, int>>(); // Store the room values not to be split
    vars.WhiteListedDoors = new List<Tuple<int, int>>(); // Store the room values that is passed through multiple times

    // Store previously passed doors in the Blacklist
    vars.BlackListedDoors.Add(Tuple.Create(0, 0));
    vars.BlackListedDoors.Add(Tuple.Create(0, 0));

    // Main Game Blacklist
    vars.BlackListedDoors.Add(Tuple.Create(262, 260)); // Deserted Village → Valley
    vars.BlackListedDoors.Add(Tuple.Create(267, 283)); // Chapter 1-3 End
    vars.BlackListedDoors.Add(Tuple.Create(270, 65806)); // Waterway A → Waterway B
    vars.BlackListedDoors.Add(Tuple.Create(279, 65815)); // Chapter 2-1 End
    vars.BlackListedDoors.Add(Tuple.Create(527, 518)); // Chapter 3-3 End
    vars.BlackListedDoors.Add(Tuple.Create(525, 518)); // Chapter 3-4 End
    vars.BlackListedDoors.Add(Tuple.Create(528, 131600)); // Ride the Castle Gondola A
    vars.BlackListedDoors.Add(Tuple.Create(537, 66073)); // Ride the Castle Gondola B
    vars.BlackListedDoors.Add(Tuple.Create(536, 533)); // Gatekeeper Hallway → Lord's Room
    vars.BlackListedDoors.Add(Tuple.Create(545, 555)); // Chapter 4-1 End
    vars.BlackListedDoors.Add(Tuple.Create(555, 544)); // Prophet's Room (Cutscene) → Area before the Mine
    vars.BlackListedDoors.Add(Tuple.Create(541, 549)); // Chapter 4-2 End
    vars.BlackListedDoors.Add(Tuple.Create(549, 550)); // Chapter 4-3 End
    vars.BlackListedDoors.Add(Tuple.Create(554, 768)); // Chapter 4-4 End
    vars.BlackListedDoors.Add(Tuple.Create(789, 790)); // Chapter 5-2 End
    vars.BlackListedDoors.Add(Tuple.Create(790, 778)); // Machine Room Entry → Communications Tower (Cutscene)
    vars.BlackListedDoors.Add(Tuple.Create(778, 790)); // Communications Tower (Cutscene) → Machine Room Entry
    vars.BlackListedDoors.Add(Tuple.Create(796, 800)); // Chapter 5-3 End

    // Separate Ways Blacklist
    vars.BlackListedDoors.Add(Tuple.Create(1283, 1286)); // Chapter 1 End
    vars.BlackListedDoors.Add(Tuple.Create(1289, 1294)); // Chapter 2 End
    vars.BlackListedDoors.Add(Tuple.Create(1292, 1298)); // Chapter 3 End
    vars.BlackListedDoors.Add(Tuple.Create(1303, 1304)); // Chapter 4 End

    // Main Game Whitelist
    vars.WhiteListedDoors.Add(Tuple.Create(271, 287)); // Lift ↔ Slaughterhouse
    vars.WhiteListedDoors.Add(Tuple.Create(280, 279)); // Cemetery (Night) ↔ Church
    vars.WhiteListedDoors.Add(Tuple.Create(524, 527)); // Dining Hall ↔ Gallery
    vars.WhiteListedDoors.Add(Tuple.Create(524, 522)); // Dining Hall ↔ Western Castle Wall
    vars.WhiteListedDoors.Add(Tuple.Create(525, 526)); // Study ↔ Storeroom
    vars.WhiteListedDoors.Add(Tuple.Create(528, 546)); // Castle Gondola A ↔ Dragon Room
    vars.WhiteListedDoors.Add(Tuple.Create(529, 530)); // Lobby ↔ Weapon Exhibition Room
    vars.WhiteListedDoors.Add(Tuple.Create(529, 534)); // Lobby ↔ Knight Room
    vars.WhiteListedDoors.Add(Tuple.Create(532, 535)); // Exterior Clocktower ↔ Clock Tower
    vars.WhiteListedDoors.Add(Tuple.Create(774, 775)); // Stairs Hallway ↔ Operating Theatre
    vars.WhiteListedDoors.Add(Tuple.Create(774, 776)); // Stairs Hallway ↔ Freezer Room
    vars.WhiteListedDoors.Add(Tuple.Create(779, 780)); // Waste Treatment Plant ↔ Confinement Room
    vars.WhiteListedDoors.Add(Tuple.Create(780, 782)); // Confinement Room ↔ Doctor's Office
    vars.WhiteListedDoors.Add(Tuple.Create(782, 777)); // Doctor's Office ↔ Culture Room

    // Separate Ways Whitelist
    vars.WhiteListedDoors.Add(Tuple.Create(1286, 1280)); // Village Chief's House ↔ Village Center
    vars.WhiteListedDoors.Add(Tuple.Create(1284, 1285)); // Village Center 2 ↔ Farm
    vars.WhiteListedDoors.Add(Tuple.Create(1285, 1287)); // Farm ↔ Deserted Village
    vars.WhiteListedDoors.Add(Tuple.Create(1288, 1291)); // Lift ↔ Slaughterhouse

    // Assignment Ada Whitelist
    vars.WhiteListedDoors.Add(Tuple.Create(1034, 1035)); // Stairs Hallway ↔ Operating Theatre
    vars.WhiteListedDoors.Add(Tuple.Create(1034, 1036)); // Stairs Hallway ↔ Freezer Room

    // Reset Variables when the timer is start or reset
    vars.ResetVariables = (Action) (() =>
    {
        vars.gameMode = "Default"; // Current Game Mode ("Default", "MG", "SW", "AA")
        vars.chapter = 0; // Count Chapters passed
        vars.dropFrames = 0; // Count this when the dropping frames
        vars.isMenuScreen = false; // This will be true if the menu screen is opening
        vars.BlackListedDoors[0] = Tuple.Create(0, 0); // Initialize Blacklist[0]
        vars.BlackListedDoors[1] = Tuple.Create(0, 0); // Initialize Blacklist[1]
    });
    vars.ResetVariables();
}

update
{
    // Check to see if the menu screen is opening
    if (current.menu != 0 && old.menu == 0 && !vars.isMenuScreen)
        vars.isMenuScreen = true;
    else if (current.screenTrans < 240 && old.screenTrans > 240 && current.menu == 0 && vars.isMenuScreen)
        vars.isMenuScreen = false;

    // Count the dropping frames
    if (current.gameState == old.gameState)
        vars.dropFrames++;
    else if (current.gameState != old.gameState && vars.dropFrames > 0)
        vars.dropFrames = 0;

    // Show DA
    if (current.da != old.da && settings["ShowDA"])
    {
        dynamic componentDAValue = vars.UpdateTextComponent("DA");
        byte difficultyMode = current.difficultyMode;
        int amateurMaxDA = 3999; // Max DA on Amateur
        int easyMaxDA = 5999; // Max DA on Easy
        int normalMaxDA = 10999; // Max DA on Normal

        switch (difficultyMode)
        {
            case 1:
                double amateurDA = Math.Floor(current.da / ((double) normalMaxDA / amateurMaxDA));
                componentDAValue.Text2 = amateurDA.ToString() + " (Amateur)";
                break;
            case 3:
                double easyDA = Math.Floor(current.da / ((double) normalMaxDA / easyMaxDA));
                componentDAValue.Text2 = easyDA.ToString() + " (Easy)";
                break;
            case 5:
                componentDAValue.Text2 = current.da.ToString() + " (Normal)";
                break;
            case 6:
                componentDAValue.Text2 = current.da.ToString() + " (Pro)";
                break;
        }
    }

    // Show Money
    if (current.money != old.money && settings["ShowMoney"])
    {
        dynamic componentMoneyValue = vars.UpdateTextComponent("Money");
        componentMoneyValue.Text2 = current.money.ToString() + " PTAS";
    }

    // Show Kills
    if (current.chapterKills != old.chapterKills && settings["ShowKills"])
    {
        dynamic componentKills = vars.UpdateTextComponent("Kills");
        componentKills.Text2 = "Total: " + current.totalKills.ToString() + " Chapter: " + current.chapterKills.ToString();
    }

    // Show Accuracy
    if (current.shotsTotal != old.shotsTotal && settings["ShowAccuracy"])
    {
        dynamic componentAccuracy = vars.UpdateTextComponent("Accuracy");
        if (current.shotsHitTotal == 0 || current.shotsHitChapter == 0)
            componentAccuracy.Text2 = "Total: 0 Chapter: 0";
        else
        {
            double chapterAccuracy = Math.Round(((double) current.shotsHitChapter / current.shotsChapter) * 100);
            double totalAccuracy = Math.Round(((double) current.shotsHitTotal / current.shotsTotal) * 100);
            componentAccuracy.Text2 = "Total: " + totalAccuracy.ToString() + " % Chapter: " + chapterAccuracy.ToString() + " %";
        }
    }

    // Show IGT
    if (current.igt != old.igt && settings["ShowIGT"])
    {
        dynamic componentIGTValue = vars.UpdateTextComponent("IGT");
        componentIGTValue.Text2 = TimeSpan.FromSeconds(current.igt).ToString();
    }
}

start
{
    // Check to see if Main Game is running
    if (current.screenTrans < 240 && old.screenTrans > 240 && current.roomId == 256 && settings["MainGameSplits"])
    {
        vars.ResetVariables();
        vars.gameMode = "MG";
        vars.ObtainedKeyItems = new List<byte>();
        return true;
    }

    // Check to see if Separate Ways is running
    else if (current.menu == 0 && old.menu == 2 && current.roomId == 1280 && settings["SeparateWaysSplits"])
    {
        vars.ResetVariables();
        vars.gameMode = "SW";
        vars.ObtainedKeyItems = new List<byte>();
        return true;
    }

    // Check to see if Assignment Ada is running
    else if (current.subtitle == 0 && old.subtitle == 1 && current.roomId == 288 && current.stageId == 4 && settings["AssignmentAdaSplits"])
    {
        vars.ResetVariables();
        vars.gameMode = "AA";
        vars.ObtainedPlagaSamples = new List<byte>();
        return true;
    }
}

split
{
    // Door Splits
    if (current.roomId != old.roomId && vars.gameMode != "Default" && settings["DoorSplits"])
    {
        if (!vars.BlackListedDoors.Contains(Tuple.Create(old.roomId, current.roomId)))
        {
            vars.BlackListedDoors[0] = Tuple.Create(old.roomId, current.roomId);
            vars.BlackListedDoors[1] = Tuple.Create(current.roomId, old.roomId);
            return true;
        }
        else if (vars.WhiteListedDoors.Contains(Tuple.Create(old.roomId, current.roomId))
                || vars.WhiteListedDoors.Contains(Tuple.Create(current.roomId, old.roomId)))
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
    if (current.itemId != old.itemId && !vars.ObtainedKeyItems.Contains(current.itemId) && settings["Item" + current.itemId.ToString() + vars.gameMode])
    {
        vars.ObtainedKeyItems.Add(current.itemId);
        return true;
    }

    // Assignment Ada Splits
    if ((current.fslSample > old.fslSample || current.tfSample > old.tfSample) && vars.gameMode == "AA")
    {
        if (!vars.ObtainedPlagaSamples.Contains(current.fslSample) && settings["Sample" + current.fslSample.ToString()])
        {
            vars.ObtainedPlagaSamples.Add(current.fslSample);
            return true;
        }
        else if (!vars.ObtainedPlagaSamples.Contains(current.tfSample) && settings["Sample" + current.tfSample.ToString()])
        {
            vars.ObtainedPlagaSamples.Add(current.tfSample);
            return true;
        }
    }

    // Split at the bridge door after reunited with Ashley
    if (current.roomId == 518 && old.roomId == 527 && current.isEndOfChapter >= 655360 && vars.gameMode == "MG" && settings["DoorSplits"])
        return true;

    // Final Splits
    return
    current.mgEnding != old.mgEnding && current.roomId == 819 && vars.gameMode == "MG" // Main Game Ending
    || current.swEnding != old.swEnding && current.roomId == 1310 && vars.gameMode == "SW" // Separate Ways Ending
    || current.aaEnding != old.aaEnding && current.roomId == 1038 && vars.gameMode == "AA"; // Assignment Ada Ending
}

isLoading
{
    // Gameplay Loading
    if ((current.loading == 255 || current.screenTrans > 240) && !vars.isMenuScreen)
        return true;

    // Menu Loading
    else if ((current.screenTrans == 255 || current.menuExit == 64) && vars.isMenuScreen)
        return true;

    // Cutscene Loading
    else if (current.cutscene == 12 || current.cutscene == 28)
        return true;

    // Pause Menu Screen
    else if (current.pauseMenu == 208)
        return true;

    // Dropping Frames
    else if (current.gameState == old.gameState && vars.dropFrames > 1)
        return true;

    else
        return false;
}

reset
{
    // Reset timer when the IGT equals 0
    if (current.igt == 0 && old.igt != 0)
    {
        vars.ResetVariables();
        return true;
    }
}

exit
{
    // Reset timer when exit the game
    if (timer.CurrentPhase != TimerPhase.Ended)
        vars.TimerModel.Reset();
}