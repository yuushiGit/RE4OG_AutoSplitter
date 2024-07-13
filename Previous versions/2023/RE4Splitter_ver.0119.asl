// Version 1.1.0 (Latest)
state("bio4", "1.1.0")
{
    byte gameMode         : 0x85F725; // Game mode (MG: 0, SW: 2, AA: 3)
    short room            : 0x85A788; // Room ID
    byte menu             : 0x87AD04; // Menu screen (Inv: 1, Map: 2, Merchant: 16, Contact: 32, Manual: 64, Key Item Selection: 128)
    bool subtitle         : 0x817840; // Subtitles on the screen (true | false)
    byte chapter          : 0x85F6FA; // Increment by 1 at the end of chapter
    byte item             : 0x858EE4; // Item ID
    long sample           : 0x85F9EC; // Plaga samples
    bool mgEnding         : 0x8594BB; // Ending cutscene in Main Game (true | false)
    bool swEnding         : 0x851173; // Ending cutscene in Separate Ways (true | false)
    int choice            : 0x81792F; // "Yes" or "No" choices (Yes: 66048, No: 16908800)
    byte command          : 0x8675BB; // Commands displayed at bottom of screen (OPERATE: 16)
    bool loading          : 0x858F77; // Loading screen (true | false)
    byte screenState      : 0x85A780; // Screen state (Loading: 1 & 2, Gameplay: 3, Fadeout: 4, Pause Menu: 6)
    long totalFrames      : 0xCECB18; // Total frames
    byte frameRate        : 0x82B7A0; // FPS setting (30 | 60)
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
    byte gameMode         : 0x85BEA5;
    short room            : 0x856F08;
    byte menu             : 0x877484;
    bool subtitle         : 0x814030;
    byte chapter          : 0x85BE7A;
    byte item             : 0x855664;
    long sample           : 0x85C16C;
    bool mgEnding         : 0x855C38;
    bool swEnding         : 0x84D8F3;
    int choice            : 0x81412F;
    byte command          : 0x863D2B;
    bool loading          : 0x8556F7;
    byte screenState      : 0x856F00;
    long totalFrames      : 0xCE9298;
    byte frameRate        : 0x827F48;
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
            settings.Add("Chapter1 (Main Game)", true, "Chapter 1-1", "MainGameChapterSplits");
            settings.Add("Chapter2 (Main Game)", true, "Chapter 1-2", "MainGameChapterSplits");
            settings.Add("Chapter3 (Main Game)", true, "Chapter 1-3", "MainGameChapterSplits");
            settings.Add("Chapter4 (Main Game)", true, "Chapter 2-1", "MainGameChapterSplits");
            settings.Add("Chapter5 (Main Game)", true, "Chapter 2-2", "MainGameChapterSplits");
            settings.Add("Chapter6 (Main Game)", true, "Chapter 2-3", "MainGameChapterSplits");
            settings.Add("Chapter7 (Main Game)", true, "Chapter 3-1", "MainGameChapterSplits");
            settings.Add("Chapter8 (Main Game)", true, "Chapter 3-2", "MainGameChapterSplits");
            settings.Add("Chapter9 (Main Game)", true, "Chapter 3-3", "MainGameChapterSplits");
            settings.Add("Chapter10 (Main Game)", true, "Chapter 3-4", "MainGameChapterSplits");
            settings.Add("Chapter11 (Main Game)", true, "Chapter 4-1", "MainGameChapterSplits");
            settings.Add("Chapter12 (Main Game)", true, "Chapter 4-2", "MainGameChapterSplits");
            settings.Add("Chapter13 (Main Game)", true, "Chapter 4-3", "MainGameChapterSplits");
            settings.Add("Chapter14 (Main Game)", true, "Chapter 4-4", "MainGameChapterSplits");
            settings.Add("Chapter15 (Main Game)", true, "Chapter 5-1", "MainGameChapterSplits");
            settings.Add("Chapter16 (Main Game)", true, "Chapter 5-2", "MainGameChapterSplits");
            settings.Add("Chapter17 (Main Game)", true, "Chapter 5-3", "MainGameChapterSplits");
            settings.Add("Chapter18 (Main Game)", true, "Chapter 5-4", "MainGameChapterSplits");

        settings.Add("MainGameKeyItemSplits", false, "Key Items", "MainGameSplits");
        settings.SetToolTip("MainGameKeyItemSplits", "Check this option if you want to split on Key Items.");
            settings.Add("Item164 (Main Game)", true, "Emblem (Right half)", "MainGameKeyItemSplits");
            settings.Add("Item165 (Main Game)", true, "Emblem (Left half)", "MainGameKeyItemSplits");
            settings.Add("Item59 (Main Game)", true, "Insignia Key", "MainGameKeyItemSplits");
            settings.Add("Item60 (Main Game)", true, "Round Insignia", "MainGameKeyItemSplits");
            settings.Add("Item140 (Main Game)", true, "Camp Key", "MainGameKeyItemSplits");
            settings.Add("Item139 (Main Game)", true, "Old Key", "MainGameKeyItemSplits");
            settings.Add("Item61 (Main Game)", true, "False Eye", "MainGameKeyItemSplits");
            settings.Add("Item128 (Main Game)", true, "Golden Sword", "MainGameKeyItemSplits");
            settings.Add("Item196 (Main Game)", true, "Platinum Sword", "MainGameKeyItemSplits");
            settings.Add("Item167 (Main Game)", true, "Castle Gate Key", "MainGameKeyItemSplits");
            settings.Add("Item195 (Main Game)", true, "Prison Key", "MainGameKeyItemSplits");
            settings.Add("Item163 (Main Game)", true, "Gallery Key", "MainGameKeyItemSplits");
            settings.Add("Item31 (Main Game)", true, "Goat Ornament", "MainGameKeyItemSplits");
            settings.Add("Item58 (Main Game)", true, "Moonstone (Right half)", "MainGameKeyItemSplits");
            settings.Add("Item105 (Main Game)", true, "Moonstone (Left half)", "MainGameKeyItemSplits");
            settings.Add("Item29 (Main Game)", true, "Stone Tablet", "MainGameKeyItemSplits");
            settings.Add("Item15 (Main Game)", true, "Salazar Family Insignia", "MainGameKeyItemSplits");
            settings.Add("Item57 (Main Game)", true, "Serpent Ornament", "MainGameKeyItemSplits");
            settings.Add("Item30 (Main Game)", true, "Lion Ornament", "MainGameKeyItemSplits");
            settings.Add("Item111 (Main Game)", true, "Queen's Grail", "MainGameKeyItemSplits");
            settings.Add("Item110 (Main Game)", true, "King's Grail", "MainGameKeyItemSplits");
            settings.Add("Item141 (Main Game)", true, "Dynamite", "MainGameKeyItemSplits");
            settings.Add("Item123 (Main Game)", true, "Key to the Mine", "MainGameKeyItemSplits");
            settings.Add("Item130 (Main Game)", true, "Stone of Sacrifice", "MainGameKeyItemSplits");
            settings.Add("Item132 (Main Game)", true, "Freezer Card Key", "MainGameKeyItemSplits");
            settings.Add("Item146 (Main Game)", true, "Waste Disposal Card Key", "MainGameKeyItemSplits");
            settings.Add("Item131 (Main Game)", true, "Storage Room Card Key", "MainGameKeyItemSplits");
            settings.Add("Item135 (Main Game)", true, "Piece of the Holy Beast, Eagle", "MainGameKeyItemSplits");
            settings.Add("Item134 (Main Game)", true, "Piece of the Holy Beast, Serpent", "MainGameKeyItemSplits");
            settings.Add("Item116 (Main Game)", true, "Emergency Lock Card Key", "MainGameKeyItemSplits");
            settings.Add("Item136 (Main Game)", true, "Jet-ski Key", "MainGameKeyItemSplits");

    // Separate Ways Splits
    settings.Add("SeparateWaysSplits", true, "Separate Ways");
        settings.Add("SeparateWaysChapterSplits", true, "Chapters", "SeparateWaysSplits");
        settings.SetToolTip("SeparateWaysChapterSplits", "Check this option if you want to split on chapters.");
            settings.Add("Chapter21 (Separate Ways)", true, "Chapter 1", "SeparateWaysChapterSplits");
            settings.Add("Chapter22 (Separate Ways)", true, "Chapter 2", "SeparateWaysChapterSplits");
            settings.Add("Chapter23 (Separate Ways)", true, "Chapter 3", "SeparateWaysChapterSplits");
            settings.Add("Chapter24 (Separate Ways)", true, "Chapter 4", "SeparateWaysChapterSplits");
            settings.Add("Chapter25 (Separate Ways)", true, "Chapter 5", "SeparateWaysChapterSplits");

        settings.Add("SeparateWaysKeyItemSplits", false, "Key Items", "SeparateWaysSplits");
        settings.SetToolTip("SeparateWaysKeyItemSplits", "Check this option if you want to split on key items.");
            settings.Add("Item59 (Separate Ways)", true, "Insignia Key", "SeparateWaysKeyItemSplits");
            settings.Add("Item118 (Separate Ways)", true, "Green Catseye", "SeparateWaysKeyItemSplits");
            settings.Add("Item60 (Separate Ways)", true, "Round Insignia", "SeparateWaysKeyItemSplits");
            settings.Add("Item129 (Separate Ways)", true, "Iron Key", "SeparateWaysKeyItemSplits");
            settings.Add("Item142 (Separate Ways)", true, "Lift Activation Key", "SeparateWaysKeyItemSplits");
            settings.Add("Item27 (Separate Ways)", true, "Hourglass w/ gold decor", "SeparateWaysKeyItemSplits");
            settings.Add("Item49 (Separate Ways)", true, "Activation Key (blue)", "SeparateWaysKeyItemSplits");
            settings.Add("Item51 (Separate Ways)", true, "Activation Key (red)", "SeparateWaysKeyItemSplits");

    // Assignment Ada Splits
    settings.Add("AssignmentAdaSplits", true, "Assignment Ada");
        settings.Add("PlagaSampleSplits", true, "Plaga Samples", "AssignmentAdaSplits");
        settings.SetToolTip("PlagaSampleSplits", "Check this option if you want to split on plaga samples.");
            settings.Add("Sample1 (Assignment Ada)", true, "Plaga Sample 1", "PlagaSampleSplits");
            settings.Add("Sample2 (Assignment Ada)", true, "Plaga Sample 2", "PlagaSampleSplits");
            settings.Add("Sample3 (Assignment Ada)", true, "Plaga Sample 3", "PlagaSampleSplits");
            settings.Add("Sample4 (Assignment Ada)", true, "Plaga Sample 4", "PlagaSampleSplits");
            settings.Add("Sample5 (Assignment Ada)", true, "Plaga Sample 5", "PlagaSampleSplits");

    // Door Splits
    settings.Add("DoorSplits", true, "Door Splits");
    settings.SetToolTip("DoorSplits", "Check this option if you want to use door splits.");

    // Infomation
    settings.Add("Infos", false, "Information");
    settings.SetToolTip("Infos", "Check this option if you want to show game infomation.");
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
    version = version ==  "1.0.0.0" || version == "1.0.0RELEASE_DEV.0" ? "1.1.0" : "1.0.6";

    // Create the TimerModel
    vars.timerModel = new TimerModel { CurrentState = timer };

    // Update the text component
    vars.updateTextComponent = (Func<string, dynamic>) ((text) =>
    {
        // Create the text component
        Func<string, dynamic> createTextComponent = (text1) =>
        {
            dynamic textComponentAssembly = Assembly.LoadFrom("Components\\LiveSplit.Text.dll");
            dynamic newTextComponent = Activator.CreateInstance(textComponentAssembly.GetType("LiveSplit.UI.Components.TextComponent"), timer);
            timer.Layout.LayoutComponents.Add(new LiveSplit.UI.Components.LayoutComponent("LiveSplit.Text.dll", newTextComponent as LiveSplit.UI.Components.IComponent));
            newTextComponent.Settings.Text1 = text1;
            return newTextComponent;
        };

        dynamic textComponent = timer.Layout.Components.FirstOrDefault((dynamic tc) => tc.GetType().Name == "TextComponent" && tc.Settings.Text1 == text);
        textComponent = textComponent ?? createTextComponent(text);
        return textComponent.Settings;
    });

    // Game modes ("Idle", "Main Game", "Separate Ways", "Assignment Ada")
    vars.gameModes = new Dictionary<string, string>()
    {
        { "Idle", "Idle" },
        { "MG", "Main Game" },
        { "SW", "Separate Ways" },
        { "AA", "Assignment Ada" }
    };

    // Convert room IDs to short and create a tuple
    Func<int, int, Tuple<short, short>> createRoomIDsTuple = (room1, room2) =>
    {
        return Tuple.Create((short) room1, (short) room2);
    };

    // Store the room IDs that are passed through multiple times
    vars.whiteListedDoors = new List<Tuple<short, short>>()
    {
        // Main Game
        createRoomIDsTuple(271, 287), // Lift ↔ Slaughterhouse
        createRoomIDsTuple(280, 279), // Cemetery (Night), ↔ Church
        createRoomIDsTuple(516, 517), // Temple ↔ Underground Waterway
        createRoomIDsTuple(524, 527), // Dining Hall ↔ Gallery
        createRoomIDsTuple(524, 522), // Dining Hall ↔ Western Castle Wall
        createRoomIDsTuple(525, 526), // Study ↔ Storeroom
        createRoomIDsTuple(528, 546), // Castle Gondola A ↔ Dragon Room
        createRoomIDsTuple(529, 530), // Lobby ↔ Weapon Exhibition Room
        createRoomIDsTuple(529, 534), // Lobby ↔ Knight Room
        createRoomIDsTuple(532, 535), // Exterior Clocktower ↔ Clock Tower
        createRoomIDsTuple(774, 775), // Stairs Hallway ↔ Operating Theatre
        createRoomIDsTuple(774, 776), // Stairs Hallway ↔ Freezer Room
        createRoomIDsTuple(779, 780), // Waste Treatment Plant ↔ Confinement Room
        createRoomIDsTuple(780, 782), // Confinement Room ↔ Doctor's Office
        createRoomIDsTuple(782, 777), // Doctor's Office ↔ Culture Room

        // Separate Ways
        createRoomIDsTuple(1286, 1284), // Village Chief's House ↔ Village Center
        createRoomIDsTuple(1284, 1285), // Village Center ↔ Farm
        createRoomIDsTuple(1285, 1287), // Farm ↔ Deserted Village
        createRoomIDsTuple(1288, 1291), // Lift ↔ Slaughterhouse

        // Assignment Ada
        createRoomIDsTuple(1034, 1035), // Stairs Hallway ↔ Operating Theatre
        createRoomIDsTuple(1034, 1036)  // Stairs Hallway ↔ Freezer Room
    };

    // Store the room IDs that are not split
    vars.blackListedDoors = new List<Tuple<short, short>>()
    {
        // Main Game
        createRoomIDsTuple(262, 260), // Chapter 1-1 End
        createRoomIDsTuple(267, 283), // Chapter 1-3 End
        createRoomIDsTuple(527, 518), // Chapter 3-3 End
        createRoomIDsTuple(545, 555), // Chapter 4-1 End
        createRoomIDsTuple(541, 549), // Chapter 4-2 End
        createRoomIDsTuple(549, 550), // Chapter 4-3 End
        createRoomIDsTuple(554, 768), // Chapter 4-4 End
        createRoomIDsTuple(789, 790), // Chapter 5-2 End
        createRoomIDsTuple(796, 800), // Chapter 5-3 End
        createRoomIDsTuple(536, 533), // Gatekeeper Hallway ↔ Lord's Room
        createRoomIDsTuple(555, 544), // Prophet's Room (Cutscene) ↔ Area before the Mine
        createRoomIDsTuple(790, 778), // Machine Room Entry ↔ Communications Tower (Cutscene)

        // Separate Ways
        createRoomIDsTuple(1283, 1286), // Chapter 1 End
        createRoomIDsTuple(1289, 1294), // Chapter 2 End
        createRoomIDsTuple(1292, 1298), // Chapter 3 End
        createRoomIDsTuple(1303, 1304)  // Chapter 4 End
    };

    // Reset variables when the timer is start or reset
    vars.resetVariables = (Action<string>) ((gameMode) =>
    {
        vars.gameMode = gameMode;                              // Game mode
        vars.elapsedFrames = 0;                                // Frames elapsed during gameplay
        vars.totalInvs = 0;                                    // Inventories opened in chapter
        vars.chapterInvs = 0;                                  // Inventories opened in total
        vars.completedDoors = new List<Tuple<short, short>>(); // Store the room IDs passed
        vars.obtainedKeyItems = new List<byte>();              // Store the key items obtained
        vars.obtainedPlagaSamples = new List<long>();          // Store the plaga samples obtained
    });
    vars.resetVariables(vars.gameModes["Idle"]);
}

update
{
    // Calculation of elapsed frames
    if ((!current.loading || current.subtitle) && current.screenState == 3)
        vars.elapsedFrames += current.totalFrames - old.totalFrames;

    // For testing
    var componentFrames = vars.updateTextComponent("Frames");
    var componentLoading = vars.updateTextComponent("Loading");
    componentFrames.Text2 = string.Format("{0}", vars.elapsedFrames);
    componentLoading.Text2 = string.Format("Load: {0} Screen: {1}", current.loading, current.screenState);

    // Show DA
    if (current.da != old.da && settings["ShowDA"])
    {
        // Max DA
        const short amateurMaxDA = 3999;
        const short easyMaxDA = 5999;
        const short gameMaxDA = 10999;

        // Difficulty dictionary
        Dictionary<byte, Tuple<short, string>> difficulties = new Dictionary<byte, Tuple<short, string>>()
        {
            { 1, Tuple.Create(amateurMaxDA, "Amateur") }, // Amateur (Max DA: 3999)
            { 3, Tuple.Create(easyMaxDA, "Easy") },       // Easy (Max DA: 5999)
            { 5, Tuple.Create(gameMaxDA, "Normal") },     // Normal (Max DA: 10999)
            { 6, Tuple.Create(gameMaxDA, "Pro") }         // Professional (Max DA: 10999)
        };

        // Whether the specified key exists or not
        Tuple<short, string> value;
        if (difficulties.TryGetValue(current.difficulty, out value))
        {
            // Calculate DA for low difficulty
            double calcDA = Math.Floor(current.da / ((double) gameMaxDA / value.Item1));

            // Update the text
            var componentDA = vars.updateTextComponent("DA");
            componentDA.Text2 = string.Format("{0} ({1})", calcDA, value.Item2);
        }
    }

    // Show Health
    if ((current.health != old.health || current.character != old.character) && settings["ShowHealth"])
    {
        // Character array
        string[] characters = { "Leon", "Ashley", "Ada", "Hunk", "Krauser", "Wesker" };

        // Update the text
        if (current.character < characters.Length)
        {
            var componentHealth = vars.updateTextComponent("Health");
            componentHealth.Text2 = string.Format("{0} ({1})", current.health, characters[current.character]);
        }
    }

    // Show Money
    if (current.money != old.money && settings["ShowMoney"])
    {
        // Update the text
        var componentMoney = vars.updateTextComponent("Money");
        componentMoney.Text2 = string.Format("{0} PTAS", current.money);
    }

    // Show Accuracy
    if (current.chapterShots != old.chapterShots && settings["ShowAccuracy"])
    {
        // Calculate the accuracy
        Func<short, short, double> calcAccuracy = (shotsHit, shots) =>
        {
            return shotsHit > 0 ? Math.Round(((double) shotsHit / shots) * 100) : 0;
        };

        double chapterAccuracy = calcAccuracy(current.chapterShotsHit, current.chapterShots);
        double totalAccuracy = calcAccuracy(current.totalShotsHit, current.totalShots);

        // Update the text
        var componentAccuracy = vars.updateTextComponent("Accuracy");
        componentAccuracy.Text2 = string.Format("Total: {0}% Chapter: {1}%", totalAccuracy, chapterAccuracy);
    }

    // Show Kills
    if (current.chapterKills != old.chapterKills && settings["ShowKills"])
    {
        // Update the text
        var componentKills = vars.updateTextComponent("Kills");
        componentKills.Text2 = string.Format("Total: {0} Chapter: {1}", current.totalKills, current.chapterKills);
    }

    // Show Deaths
    if (current.chapterDeaths != old.chapterDeaths && settings["ShowDeaths"])
    {
        // Update the text
        var componentDeaths = vars.updateTextComponent("Deaths");
        componentDeaths.Text2 = string.Format("Total: {0} Chapter: {1}", current.totalDeaths, current.chapterDeaths);
    }

    // Show IGT
    if (current.igt != old.igt && settings["ShowIGT"])
    {
        // Update the text
        var componentIGT = vars.updateTextComponent("IGT");
        componentIGT.Text2 = string.Format("{0}", TimeSpan.FromSeconds(current.igt));
    }

    // Show Inventory Counter
    if (settings["ShowInvs"])
    {
        // Store the old chapter inventories
        int oldChapterInvs = vars.chapterInvs;

        // Check to see if the inventory is opened
        if (current.menu == 1 && old.menu == 0)
        {
            vars.totalInvs++;
            vars.chapterInvs++;
        }

        // Initialize chapter inventories at the end of chapter
        if (current.chapter > old.chapter)
        {
            vars.chapterInvs = 0;
        }

        // Update the text
        if (vars.chapterInvs != oldChapterInvs)
        {
            var componentInvs = vars.updateTextComponent("Invs");
            componentInvs.Text2 = string.Format("Total: {0} Chapter: {1}", vars.totalInvs, vars.chapterInvs);
        }
    }
}

start
{
    // Check to see if Main Game is running
    if (current.room == 256 && old.room == 288 && current.gameMode == 0 && settings["MainGameSplits"])
    {
        vars.resetVariables(vars.gameModes["MG"]);
        return true;
    }

    // Check to see if Separate Ways is running
    if (current.menu == 0 && old.menu == 2 && current.gameMode == 2 && current.room == 1280 && settings["SeparateWaysSplits"])
    {
        vars.resetVariables(vars.gameModes["SW"]);
        return true;
    }

    // Check to see if Assignment Ada is running
    if (!current.subtitle && old.subtitle && current.gameMode == 3 && current.room == 288 && settings["AssignmentAdaSplits"])
    {
        vars.resetVariables(vars.gameModes["AA"]);
        return true;
    }

    return false;
}

split
{
    // Door Splits
    if (current.room != old.room && vars.gameMode != vars.gameModes["Idle"] && settings["DoorSplits"])
    {
        // Whether the list contains room ID or not
        Func<List<Tuple<short, short>>, short, short, bool> containsRoomIDs = (list, curRoom, oldRoom) =>
        {
            return list.Contains(Tuple.Create(curRoom, oldRoom)) || list.Contains(Tuple.Create(oldRoom, curRoom));
        };

        // Split if the whitelist doors contains the current and old room IDs
        if (containsRoomIDs(vars.whiteListedDoors, current.room, old.room))
        {
            return true;
        }

        // Split if the blacklist doors or completed doors doesn't contains the current and old room IDs
        if (!containsRoomIDs(vars.blackListedDoors, current.room, old.room) && !containsRoomIDs(vars.completedDoors, current.room, old.room))
        {
            vars.completedDoors.Add(Tuple.Create(current.room, old.room));
            return true;
        }
    }

    // Chapter Splits
    if (current.chapter > old.chapter && settings[string.Format("Chapter{0} ({1})", current.chapter, vars.gameMode)])
    {
        return true;
    }

    // Key Item Splits
    if (current.item != old.item && !vars.obtainedKeyItems.Contains(current.item) && settings[string.Format("Item{0} ({1})", current.item, vars.gameMode)])
    {
        vars.obtainedKeyItems.Add(current.item);
        return true;
    }

    // Plaga Sample Splits
    if (current.sample > old.sample && !vars.obtainedPlagaSamples.Contains(current.sample) && settings[string.Format("Sample{0} ({1})", vars.obtainedPlagaSamples.Count + 1, vars.gameMode)])
    {
        vars.obtainedPlagaSamples.Add(current.sample);
        return true;
    }

    // Split at the bridge door after reunited with Ashley
    if (current.room == 518 && old.room == 527 && current.chapter == 10 && vars.gameMode == vars.gameModes["MG"] && settings["DoorSplits"])
    {
        return true;
    }

    // Final Splits
    if (current.mgEnding && !old.mgEnding && current.room == 819 && vars.gameMode == vars.gameModes["MG"]                                                                                                  // Main Game Ending
        || current.swEnding && !old.swEnding && current.room == 1310 && vars.gameMode == vars.gameModes["SW"]                                                                                              // Separate Ways Ending
        || !current.subtitle && old.subtitle && current.choice == 66048 && current.command == 16 && vars.obtainedPlagaSamples.Count == 5 && current.room == 1038 && vars.gameMode == vars.gameModes["AA"]) // Assignment Ada Ending
    {
        return true;
    }

    return false;
}

gameTime
{
    // Synchronize the timer with LRT
    if (vars.gameMode != vars.gameModes["Idle"])
    {
        return TimeSpan.FromMilliseconds(vars.elapsedFrames * (1000.0 / current.frameRate));
    }
}

isLoading
{
    return true;
}

reset
{
    // Reset the timer when IGT equals 0
    return current.igt == 0 && old.igt > 0;
}

exit
{
    // Reset the timer when exit the game
    if (timer.CurrentPhase != TimerPhase.Ended)
    {
        vars.timerModel.Reset();
    }
}

onReset
{
    // Initialize variables on reset
    vars.resetVariables(vars.gameModes["Idle"]);
}