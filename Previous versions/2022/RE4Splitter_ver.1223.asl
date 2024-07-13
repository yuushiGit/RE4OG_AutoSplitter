// Version 1.1.0 (Latest)
state("bio4", "1.1.0")
{
    byte screenTrans      : 0x858F7B; // Screen transition (0 - 255)
    byte menu             : 0x87AD04; // Menu (Inv: 1, Map: 2, Merchant: 16, Contact: 32, Manual: 64, Key Item Selection: 128)
    bool subtitle         : 0x817840; // Subtitles on the screen (True | False)
    short room            : 0x85A788; // Room ID
    byte chapter          : 0x85F6FA; // Increment by 1 at the end of chapter
    byte item             : 0x858EE4; // Item ID
    long sample           : 0x85F9EC; // Plaga samples (1st: 8, 2nd: 12, 3rd: 4611686018427387916, 4th: 5764607523034234892, 5th: 5764607523034234908)
    bool mgEnding         : 0x8594BB; // Ending cutscene in Main Game (True | False)
    bool swEnding         : 0x851173; // Ending cutscene in Separate Ways (True | False)
    bool aaEnding         : 0x863A18; // Ending cutscene in Assignment Ada (True | False)
    bool loading          : 0x858F77; // Loading Screen (True | False)
    byte screenState      : 0x85A780; // Screen State (Loading: 1 & 2, Gameplay: 3, Fadeout: 4, Pause Menu: 6)
    byte cutscene         : 0x85A7B5; // Cutscene Screen (MG & AA: 12, SW: 28)
    byte frameRate        : 0x82B7A0; // FPS Setting (30 | 60)
    long totalFrames      : 0xCECB18; // Total Frames
    int igt               : 0x85F704; // In Game Time

    short da              : 0x85F6F4; // Difficulty Adjustment
    byte difficulty       : 0x862BDC; // Difficulty (Amateur: 1, Easy: 3, Normal: 5, Professional: 6)
    short health          : 0x85F714; // Main character's health
    byte character        : 0x85F728; // Character (Leon: 0, Ashley: 1, Ada: 2, Hunk: 3, Krauser: 4, Wesker: 5)
    int money             : 0x85F708; // Money
    short chapterShots    : 0x862BD4; // Shots fired in chapter
    short totalShots      : 0x862BD8; // Shots fired in total
    short chapterShotsHit : 0x862BCC; // Shots hit in chapter
    short totalShotsHit   : 0x862BD0; // Shots hit in total
    short chapterKills    : 0x862BC4; // Kills in chapter
    short totalKills      : 0x862BC8; // Kills in total
    short chapterDeaths   : 0x862BC0; // Deaths in chapter
    short totalDeaths     : 0x862BC2; // Deaths in total
}

// Version 1.0.6 (Latest in Japan)
state("bio4", "1.0.6")
{
    byte screenTrans      : 0x8556FB;
    byte menu             : 0x877484;
    bool subtitle         : 0x814030;
    short room            : 0x856F08;
    byte chapter          : 0x85BE7A;
    byte item             : 0x855664;
    long sample           : 0x85C16C;
    bool mgEnding         : 0x855C38;
    bool swEnding         : 0x84D8F3;
    bool aaEnding         : 0x860198;
    bool loading          : 0x8556F7;
    byte screenState      : 0x856F00;
    byte cutscene         : 0x856F35;
    byte frameRate        : 0x827F38;
    long totalFrames      : 0xCE9298;
    int igt               : 0x85BE84;

    short da              : 0x85BE74;
    byte difficulty       : 0x85F35C;
    short health          : 0x85BE94;
    byte character        : 0x85BEA8;
    int money             : 0x85BE88;
    short chapterShots    : 0x85F354;
    short totalShots      : 0x85F358;
    short chapterShotsHit : 0x85F34C;
    short totalShotsHit   : 0x85F350;
    short chapterKills    : 0x85F344;
    short totalKills      : 0x85F348;
    short chapterDeaths   : 0x85F340;
    short totalDeaths     : 0x85F342;
}

startup
{
    // Main Game Splits
    settings.Add("MainGameSplits", true, "Main Game");
        settings.Add("MainGameChapterSplits", true, "Chapters", "MainGameSplits");
        settings.SetToolTip("MainGameChapterSplits", "Check this option if you want to split on Chapters.");
            settings.Add("Chapter1", true, "Chapter 1-1", "MainGameChapterSplits");
            settings.Add("Chapter2", true, "Chapter 1-2", "MainGameChapterSplits");
            settings.Add("Chapter3", true, "Chapter 1-3", "MainGameChapterSplits");
            settings.Add("Chapter4", true, "Chapter 2-1", "MainGameChapterSplits");
            settings.Add("Chapter5", true, "Chapter 2-2", "MainGameChapterSplits");
            settings.Add("Chapter6", true, "Chapter 2-3", "MainGameChapterSplits");
            settings.Add("Chapter7", true, "Chapter 3-1", "MainGameChapterSplits");
            settings.Add("Chapter8", true, "Chapter 3-2", "MainGameChapterSplits");
            settings.Add("Chapter9", true, "Chapter 3-3", "MainGameChapterSplits");
            settings.Add("Chapter10", true, "Chapter 3-4", "MainGameChapterSplits");
            settings.Add("Chapter11", true, "Chapter 4-1", "MainGameChapterSplits");
            settings.Add("Chapter12", true, "Chapter 4-2", "MainGameChapterSplits");
            settings.Add("Chapter13", true, "Chapter 4-3", "MainGameChapterSplits");
            settings.Add("Chapter14", true, "Chapter 4-4", "MainGameChapterSplits");
            settings.Add("Chapter15", true, "Chapter 5-1", "MainGameChapterSplits");
            settings.Add("Chapter16", true, "Chapter 5-2", "MainGameChapterSplits");
            settings.Add("Chapter17", true, "Chapter 5-3", "MainGameChapterSplits");
            settings.Add("Chapter18", true, "Chapter 5-4", "MainGameChapterSplits");

        settings.Add("MainGameItemSplits", false, "Key Items", "MainGameSplits");
        settings.SetToolTip("MainGameItemSplits", "Check this option if you want to split on Key Items.");
            settings.Add("Item164 (Main Game)", true, "Emblem (Right half)", "MainGameItemSplits");
            settings.Add("Item165 (Main Game)", true, "Emblem (Left half)", "MainGameItemSplits");
            settings.Add("Item59 (Main Game)", true, "Insignia Key", "MainGameItemSplits");
            settings.Add("Item60 (Main Game)", true, "Round Insignia", "MainGameItemSplits");
            settings.Add("Item140 (Main Game)", true, "Camp Key", "MainGameItemSplits");
            settings.Add("Item139 (Main Game)", true, "Old Key", "MainGameItemSplits");
            settings.Add("Item61 (Main Game)", true, "False Eye", "MainGameItemSplits");
            settings.Add("Item128 (Main Game)", true, "Golden Sword", "MainGameItemSplits");
            settings.Add("Item196 (Main Game)", true, "Platinum Sword", "MainGameItemSplits");
            settings.Add("Item167 (Main Game)", true, "Castle Gate Key", "MainGameItemSplits");
            settings.Add("Item195 (Main Game)", true, "Prison Key", "MainGameItemSplits");
            settings.Add("Item163 (Main Game)", true, "Gallery Key", "MainGameItemSplits");
            settings.Add("Item31 (Main Game)", true, "Goat Ornament", "MainGameItemSplits");
            settings.Add("Item58 (Main Game)", true, "Moonstone (Right half)", "MainGameItemSplits");
            settings.Add("Item105 (Main Game)", true, "Moonstone (Left half)", "MainGameItemSplits");
            settings.Add("Item29 (Main Game)", true, "Stone Tablet", "MainGameItemSplits");
            settings.Add("Item15 (Main Game)", true, "Salazar Family Insignia", "MainGameItemSplits");
            settings.Add("Item57 (Main Game)", true, "Serpent Ornament", "MainGameItemSplits");
            settings.Add("Item30 (Main Game)", true, "Lion Ornament", "MainGameItemSplits");
            settings.Add("Item111 (Main Game)", true, "Queen's Grail", "MainGameItemSplits");
            settings.Add("Item110 (Main Game)", true, "King's Grail", "MainGameItemSplits");
            settings.Add("Item141 (Main Game)", true, "Dynamite", "MainGameItemSplits");
            settings.Add("Item123 (Main Game)", true, "Key to the Mine", "MainGameItemSplits");
            settings.Add("Item130 (Main Game)", true, "Stone of Sacrifice", "MainGameItemSplits");
            settings.Add("Item132 (Main Game)", true, "Freezer Card Key", "MainGameItemSplits");
            settings.Add("Item146 (Main Game)", true, "Waste Disposal Card Key", "MainGameItemSplits");
            settings.Add("Item131 (Main Game)", true, "Storage Room Card Key", "MainGameItemSplits");
            settings.Add("Item135 (Main Game)", true, "Piece of the Holy Beast, Eagle", "MainGameItemSplits");
            settings.Add("Item134 (Main Game)", true, "Piece of the Holy Beast, Serpent", "MainGameItemSplits");
            settings.Add("Item116 (Main Game)", true, "Emergency Lock Card Key", "MainGameItemSplits");
            settings.Add("Item136 (Main Game)", true, "Jet-ski Key", "MainGameItemSplits");

    // Separate Ways Splits
    settings.Add("SeparateWaysSplits", true, "Separate Ways");
        settings.Add("SeparateWaysChapterSplits", true, "Chapters", "SeparateWaysSplits");
        settings.SetToolTip("SeparateWaysChapterSplits", "Check this option if you want to split on chapters.");
            settings.Add("Chapter21", true, "Chapter 1", "SeparateWaysChapterSplits");
            settings.Add("Chapter22", true, "Chapter 2", "SeparateWaysChapterSplits");
            settings.Add("Chapter23", true, "Chapter 3", "SeparateWaysChapterSplits");
            settings.Add("Chapter24", true, "Chapter 4", "SeparateWaysChapterSplits");
            settings.Add("Chapter25", true, "Chapter 5", "SeparateWaysChapterSplits");

        settings.Add("SeparateWaysItemSplits", false, "Key Items", "SeparateWaysSplits");
        settings.SetToolTip("SeparateWaysItemSplits", "Check this option if you want to split on key items.");
            settings.Add("Item59 (Separate Ways)", true, "Insignia Key", "SeparateWaysItemSplits");
            settings.Add("Item118 (Separate Ways)", true, "Green Catseye", "SeparateWaysItemSplits");
            settings.Add("Item60 (Separate Ways)", true, "Round Insignia", "SeparateWaysItemSplits");
            settings.Add("Item129 (Separate Ways)", true, "Iron Key", "SeparateWaysItemSplits");
            settings.Add("Item142 (Separate Ways)", true, "Lift Activation Key", "SeparateWaysItemSplits");
            settings.Add("Item27 (Separate Ways)", true, "Hourglass w/ gold decor", "SeparateWaysItemSplits");
            settings.Add("Item49 (Separate Ways)", true, "Activation Key (blue)", "SeparateWaysItemSplits");
            settings.Add("Item51 (Separate Ways)", true, "Activation Key (red)", "SeparateWaysItemSplits");

    // Assignment Ada Splits
    settings.Add("AssignmentAdaSplits", true, "Assignment Ada");
        settings.Add("AssignmentAdaSamplesSplits", true, "Plaga Samples", "AssignmentAdaSplits");
        settings.SetToolTip("AssignmentAdaSamplesSplits", "Check this option if you want to split on plaga samples.");
            settings.Add("Sample1", true, "Plaga Sample 1", "AssignmentAdaSamplesSplits");
            settings.Add("Sample2", true, "Plaga Sample 2", "AssignmentAdaSamplesSplits");
            settings.Add("Sample3", true, "Plaga Sample 3", "AssignmentAdaSamplesSplits");
            settings.Add("Sample4", true, "Plaga Sample 4", "AssignmentAdaSamplesSplits");
            settings.Add("Sample5", true, "Plaga Sample 5", "AssignmentAdaSamplesSplits");

    // Door Splits
    settings.Add("DoorSplits", true, "Door Splits");
    settings.SetToolTip("DoorSplits", "Check this option if you want to use door splits.");

    // Infomation
    settings.Add("Infos", false, "Information");
    settings.SetToolTip("Infos", "Check this option if you want to show infomation.");
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

    // Create the text component
    vars.createTextComponent = (Func<string, dynamic>) ((text) =>
    {
        dynamic textComponentAssembly = Assembly.LoadFrom("Components\\LiveSplit.Text.dll");
        dynamic textComponent = Activator.CreateInstance(textComponentAssembly.GetType("LiveSplit.UI.Components.TextComponent"), timer);
        timer.Layout.LayoutComponents.Add(new LiveSplit.UI.Components.LayoutComponent("LiveSplit.Text.dll", textComponent as LiveSplit.UI.Components.IComponent));
        textComponent.Settings.Text1 = text;
        return textComponent;
    });

    // Update the text component
    vars.updateTextComponent = (Func<string, dynamic>) ((text) =>
    {
        dynamic textComponent = timer.Layout.Components.FirstOrDefault((dynamic x) => x.GetType().Name == "TextComponent" && x.Settings.Text1 == text);
        textComponent = textComponent ?? vars.createTextComponent(text);
        return textComponent.Settings;
    });

    // Store the room IDs that are passed through multiple times
    vars.whiteListedDoors = new List<Tuple<short, short>>()
    {
        // Main Game
        Tuple.Create((short) 271, (short) 287), // Lift ↔ Slaughterhouse
        Tuple.Create((short) 280, (short) 279), // Cemetery (Night) ↔ Church
        Tuple.Create((short) 516, (short) 517), // Temple ↔ Underground Waterway
        Tuple.Create((short) 524, (short) 527), // Dining Hall ↔ Gallery
        Tuple.Create((short) 524, (short) 522), // Dining Hall ↔ Western Castle Wall
        Tuple.Create((short) 525, (short) 526), // Study ↔ Storeroom
        Tuple.Create((short) 528, (short) 546), // Castle Gondola A ↔ Dragon Room
        Tuple.Create((short) 529, (short) 530), // Lobby ↔ Weapon Exhibition Room
        Tuple.Create((short) 529, (short) 534), // Lobby ↔ Knight Room
        Tuple.Create((short) 532, (short) 535), // Exterior Clocktower ↔ Clock Tower
        Tuple.Create((short) 774, (short) 775), // Stairs Hallway ↔ Operating Theatre
        Tuple.Create((short) 774, (short) 776), // Stairs Hallway ↔ Freezer Room
        Tuple.Create((short) 779, (short) 780), // Waste Treatment Plant ↔ Confinement Room
        Tuple.Create((short) 780, (short) 782), // Confinement Room ↔ Doctor's Office
        Tuple.Create((short) 782, (short) 777), // Doctor's Office ↔ Culture Room

        // Separate Ways
        Tuple.Create((short) 1286, (short) 1284), // Village Chief's House ↔ Village Center
        Tuple.Create((short) 1284, (short) 1285), // Village Center ↔ Farm
        Tuple.Create((short) 1285, (short) 1287), // Farm ↔ Deserted Village
        Tuple.Create((short) 1288, (short) 1291)  // Lift ↔ Slaughterhouse
    };

    // Store the room IDs that are not split
    vars.blackListedDoors = new List<Tuple<short, short>>()
    {
        // Main Game
        Tuple.Create((short) 262, (short) 260), // Chapter 1-1 End
        Tuple.Create((short) 267, (short) 283), // Chapter 1-3 End
        Tuple.Create((short) 527, (short) 518), // Chapter 3-3 End
        Tuple.Create((short) 545, (short) 555), // Chapter 4-1 End
        Tuple.Create((short) 541, (short) 549), // Chapter 4-2 End
        Tuple.Create((short) 549, (short) 550), // Chapter 4-3 End
        Tuple.Create((short) 554, (short) 768), // Chapter 4-4 End
        Tuple.Create((short) 789, (short) 790), // Chapter 5-2 End
        Tuple.Create((short) 796, (short) 800), // Chapter 5-3 End
        Tuple.Create((short) 536, (short) 533), // Gatekeeper Hallway ↔ Lord's Room
        Tuple.Create((short) 555, (short) 544), // Prophet's Room (Cutscene) ↔ Area before the Mine
        Tuple.Create((short) 790, (short) 778), // Machine Room Entry ↔ Communications Tower (Cutscene)

        // Separate Ways
        Tuple.Create((short) 1283, (short) 1286), // Chapter 1 End
        Tuple.Create((short) 1289, (short) 1294), // Chapter 2 End
        Tuple.Create((short) 1292, (short) 1298), // Chapter 3 End
        Tuple.Create((short) 1303, (short) 1304)  // Chapter 4 End
    };

    // Constant variables
    vars.constVariables = (Action) (() =>
    {
        // Create the TimerModel
        vars.timerModel = new TimerModel { CurrentState = timer };

        // Game mode ("Idle", "Main Game", "Separate Ways", "Assignment Ada", "Unknown")
        vars.gameModeDic = new Dictionary<string, string>()
        {
            { "Idle", "Idle"},
            { "MG", "Main Game"},
            { "SW", "Separate Ways"},
            { "AA", "Assignment Ada"},
            { "N/A", "Unknown"}
        };
    });
    vars.constVariables();

    // Reset variables when the timer is start or reset
    vars.resetVariables = (Action<string>) ((gameMode) =>
    {
        vars.gameMode = gameMode;                              // Game mode
        vars.isMainLoading = false;                            // Set this to true during main loading
        vars.dropFrames = 0;                                   // Count this when the frame drop occurs
        vars.totalInvs = 0;                                    // Inventories opened in chapter
        vars.chapterInvs = 0;                                  // Inventories opened in total
        vars.completedDoors = new List<Tuple<short, short>>(); // Store the room IDs passed
        vars.obtainedKeyItems = new List<byte>();              // Store the key items obtained
        vars.obtainedPlagaSamples = new List<long>();          // Store the plaga samples obtained
    });
    vars.resetVariables(vars.gameModeDic["Idle"]);
}

update
{
    // Main loading
    if ((current.screenState == 4 || current.loading) && !vars.isMainLoading)
        vars.isMainLoading = true;
    else if (current.screenTrans <= 240 && old.screenTrans >= 240 && vars.isMainLoading)
        vars.isMainLoading = false;

    // Count the dropping frames
    if (current.totalFrames == old.totalFrames)
        vars.dropFrames++;
    else if (current.totalFrames != old.totalFrames && vars.dropFrames > 0)
        vars.dropFrames = 0;

    // Show DA
    if (current.da != old.da && settings["ShowDA"])
    {
        // Max the DA
        short amateurMaxDA = 3999;
        short easyMaxDA = 5999;
        short gameMaxDA = 10999;

        // Difficulty dictionary
        Dictionary<byte, Tuple<short, string>> difDic = new Dictionary<byte, Tuple<short, string>>()
        {
            { 1, Tuple.Create(amateurMaxDA, "Amateur") }, // Amateur (Max DA: 3999)
            { 3, Tuple.Create(easyMaxDA, "Easy") },       // Easy (Max DA: 5999)
            { 5, Tuple.Create(gameMaxDA, "Normal") },     // Normal (Max DA: 10999)
            { 6, Tuple.Create(gameMaxDA, "Pro") }         // Professional (Max DA: 10999)
        };

        // Calculate the DA for low difficulty
        double calcDA = Math.Floor(current.da / ((double) gameMaxDA / difDic[current.difficulty].Item1));

        // Update the text
        dynamic componentDA = vars.updateTextComponent("DA");
        componentDA.Text2 = string.Format("{0} ({1})", calcDA, difDic[current.difficulty].Item2);
    }

    // Show Health
    if ((current.health != old.health || current.character != old.character) && settings["ShowHealth"])
    {
        // Character dictionary
        Dictionary<byte, string> charDic = new Dictionary<byte, string>()
        {
            { 0, "Leon" },
            { 1, "Ashley" },
            { 2, "Ada" },
            { 3, "Hunk" },
            { 4, "Krauser" },
            { 5, "Wesker" }
        };

        // Update the text
        dynamic componentHealth = vars.updateTextComponent("Health");
        componentHealth.Text2 = string.Format("{0} ({1})", current.health, charDic[current.character]);
    }

    // Show Money
    if (current.money != old.money && settings["ShowMoney"])
    {
        // Update the text
        dynamic componentMoney = vars.updateTextComponent("Money");
        componentMoney.Text2 = string.Format("{0} PTAS", current.money);
    }

    // Show Accuracy
    if (current.chapterShots != old.chapterShots && settings["ShowAccuracy"])
    {
        // Calculate the accuracy
        Func<short, short, double> calcAccuracy = (shotsHit, shots) =>
        {
            return Math.Round(((double) shotsHit / shots) * 100);
        };

        // Update the text
        Func<double, double, string> updateAccuracyText = (totalAccuracy, chapterAccuracy) =>
        {
            return string.Format("Total: {0}% Chapter: {1}%", totalAccuracy, chapterAccuracy);
        };

        dynamic componentAccuracy = vars.updateTextComponent("Accuracy");

        // Check to see if the shots hit is 0
        if (current.totalShotsHit == 0 && current.chapterShotsHit == 0)
            componentAccuracy.Text2 = updateAccuracyText(0, 0);

        // Check to see if the shots hit in chapter is 0
        else if (current.totalShotsHit > 0 && current.chapterShotsHit == 0)
        {
            double totalAccuracy = calcAccuracy(current.totalShotsHit, current.totalShots);
            componentAccuracy.Text2 = updateAccuracyText(totalAccuracy, 0);
        }

        // Check to see if the shots hit is more than 0
        else
        {
            double chapterAccuracy = calcAccuracy(current.chapterShotsHit, current.chapterShots);
            double totalAccuracy = calcAccuracy(current.totalShotsHit, current.totalShots);
            componentAccuracy.Text2 = updateAccuracyText(totalAccuracy, chapterAccuracy);
        }
    }

    // Show Kills
    if (current.chapterKills != old.chapterKills && settings["ShowKills"])
    {
        // Update the text
        dynamic componentKills = vars.updateTextComponent("Kills");
        componentKills.Text2 = string.Format("Total: {0} Chapter: {1}", current.totalKills, current.chapterKills);
    }

    // Show Deaths
    if (current.chapterDeaths != old.chapterDeaths && settings["ShowDeaths"])
    {
        // Update the text
        dynamic componentDeaths = vars.updateTextComponent("Deaths");
        componentDeaths.Text2 = string.Format("Total: {0} Chapter: {1}", current.totalDeaths, current.chapterDeaths);
    }

    // Show IGT
    if (current.igt != old.igt && settings["ShowIGT"])
    {
        // Update the text
        dynamic componentIGT = vars.updateTextComponent("IGT");
        componentIGT.Text2 = string.Format("{0}", TimeSpan.FromSeconds(current.igt));
    }

    // Show Inventory Counter
    if (settings["ShowInvs"])
    {
        // Update the text
        dynamic componentInvs = vars.updateTextComponent("Invs");
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
            componentInvs.Text2 = string.Format("Total: {0} Chapter: {1}", vars.totalInvs, vars.chapterInvs);
    }
}

start
{
    // Check to see if Main Game is running
    if (current.screenTrans <= 240 && old.screenTrans >= 240 && current.room == 256 && settings["MainGameSplits"])
    {
        vars.resetVariables(vars.gameModeDic["MG"]);
        return true;
    }

    // Check to see if Separate Ways is running
    if (current.menu == 0 && old.menu == 2 && current.room == 1280 && settings["SeparateWaysSplits"])
    {
        vars.resetVariables(vars.gameModeDic["SW"]);
        return true;
    }

    // Check to see if Assignment Ada is running
    if (!current.subtitle && old.subtitle && current.room == 288 && current.character == 2 && settings["AssignmentAdaSplits"])
    {
        vars.resetVariables(vars.gameModeDic["AA"]);
        return true;
    }

    return false;
}

split
{
    // Door Splits
    if (current.room != old.room && vars.gameMode != vars.gameModeDic["Idle"] && settings["DoorSplits"])
    {
        // Whether the list contains room ID or not
        Func<List<Tuple<short, short>>, short, short, bool> containsRoomIDs = (list, curRoom, oldRoom) =>
        {
            return list.Contains(Tuple.Create(curRoom, oldRoom)) || list.Contains(Tuple.Create(oldRoom, curRoom));
        };

        // Split if the whitelist doors contains the current and old room IDs
        if (containsRoomIDs(vars.whiteListedDoors, current.room, old.room))
            return true;

        // Split if the blacklist doors or completed doors doesn't contains the current and old room IDs
        if (!containsRoomIDs(vars.blackListedDoors, current.room, old.room) && !containsRoomIDs(vars.completedDoors, current.room, old.room))
        {
            vars.completedDoors.Add(Tuple.Create(current.room, old.room));
            return true;
        }
    }

    // Chapter Splits
    if (current.chapter > old.chapter && (vars.gameMode == vars.gameModeDic["MG"] || vars.gameMode == vars.gameModeDic["SW"]) && settings[string.Format("Chapter{0}", current.chapter)])
        return true;

    // Key Item Splits
    if (current.item != old.item && !vars.obtainedKeyItems.Contains(current.item) && (vars.gameMode == vars.gameModeDic["MG"] || vars.gameMode == vars.gameModeDic["SW"]) && settings[string.Format("Item{0} ({1})", current.item, vars.gameMode)])
    {
        vars.obtainedKeyItems.Add(current.item);
        return true;
    }

    // Plaga Sample Splits
    if (current.sample > old.sample && !vars.obtainedPlagaSamples.Contains(current.sample) && vars.gameMode == vars.gameModeDic["AA"])
    {
        vars.obtainedPlagaSamples.Add(current.sample);
        return settings[string.Format("Sample{0}", vars.obtainedPlagaSamples.Count)];
    }

    // Split at the bridge door after reunited with Ashley
    if (current.room == 518 && old.room == 527 && current.chapter == 10 && vars.gameMode == vars.gameModeDic["MG"] && settings["DoorSplits"])
        return true;

    // Final Splits
    if (current.mgEnding && !old.mgEnding && current.room == 819 && vars.gameMode == vars.gameModeDic["MG"]      // Main Game Ending
        || current.swEnding && !old.swEnding && current.room == 1310 && vars.gameMode == vars.gameModeDic["SW"]  // Separate Ways Ending
        || current.aaEnding && !old.aaEnding && current.room == 1038 && vars.gameMode == vars.gameModeDic["AA"]) // Assignment Ada Ending
    {
        vars.timerModel.Pause();
        return true;
    }

    return false;
}

isLoading
{
    // Main loading
    if (vars.isMainLoading)
        return true;

    // Cutscene loading
    if ((current.cutscene == 12 || current.cutscene == 28) && current.screenTrans != 0)
    {
        print("Cutscene!!");
        return true;
    }

    // Pause menu
    if (current.screenState == 6)
        return true;

    // Frame drop
    if ((vars.dropFrames > 1 && current.frameRate == 60 || vars.dropFrames > 2 && current.frameRate == 30) && current.screenTrans == 0)
    {
        print("Frame Drop!!");
        return true;
    }

    return false;
}

reset
{
    // Reset the timer when the IGT equals 0
    if (current.igt == 0 && old.igt != 0)
    {
        vars.resetVariables(vars.gameModeDic["Idle"]);
        return true;
    }

    return false;
}

exit
{
    // Reset the timer when exit the game
    if (timer.CurrentPhase != TimerPhase.Ended)
    {
        vars.resetVariables(vars.gameModeDic["Idle"]);
        vars.timerModel.Reset();
    }
}