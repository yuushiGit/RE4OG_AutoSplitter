// Version 1.1.0 (Latest)
state("bio4", "1.1.0")
{
    // Framecounter components
    byte frameRate        : 0x82B7A0;
    long totalFrames      : 0xCECB18;

    // Misc
    byte menuType         : 0x87AD04;
    byte character        : 0x85F728;
    byte chapter          : 0x85F6FA;
    byte item             : 0x858EE4;
    byte gameRound        : 0x85F6FE;
    short room            : 0x85A788;
    uint igt              : 0x85F704;

    // Cutscenes
    string7 movie         : 0x86CE8C;
    string7 cutscene      : 0x803C6E;

    // Loadings
    byte screenState      : 0x85A780;
    byte screenTransition : 0x858F88;

    // Assignment Ada
    long sample           : 0x85F9EC;
    bool isMissionText    : 0x817840;

    // SRT variables
    byte difficulty       : 0x862BDC;
    short da              : 0x85F6F4;
    short health          : 0x85F714;
    short chapterShots    : 0x862BD4;
    short totalShots      : 0x862BD8;
    short chapterShotsHit : 0x862BCC;
    short totalShotsHit   : 0x862BD0;
    short chapterKills    : 0x862BC4;
    short totalKills      : 0x862BC8;
    short chapterDeaths   : 0x862BC0;
    short totalDeaths     : 0x862BC2;
    uint money            : 0x85F708;
}

// Version 1.0.6 (Old)
state("bio4", "1.0.6")
{
    // Framecounter components
    byte frameRate        : 0x827F38;
    long totalFrames      : 0xCE9298;

    // Misc
    byte menuType         : 0x877484;
    byte character        : 0x85BEA8;
    byte chapter          : 0x85BE7A;
    byte item             : 0x855664;
    byte gameRound        : 0x85BE7E;
    short room            : 0x856F08;
    uint igt              : 0x85BE84;

    // Cutscenes
    string7 movie         : 0x8695FC;
    string7 cutscene      : 0x802C6E;

    // Loadings
    byte screenState      : 0x856F00;
    byte screenTransition : 0x855708;

    // Assignment Ada
    long sample           : 0x85C16C;
    bool isMissionText    : 0x814030;

    // SRT variables
    byte difficulty       : 0x85F35C;
    short da              : 0x85BE74;
    short health          : 0x85BE94;
    short chapterShots    : 0x85F354;
    short totalShots      : 0x85F358;
    short chapterShotsHit : 0x85F34C;
    short totalShotsHit   : 0x85F350;
    short chapterKills    : 0x85F344;
    short totalKills      : 0x85F348;
    short chapterDeaths   : 0x85F340;
    short totalDeaths     : 0x85F342;
    uint money            : 0x85BE88;
}

// Version 1.0.6 (Latest in Japan)
state("bio4", "1.0.6 (Japan)")
{
    // Framecounter components
    byte frameRate        : 0x827F48;
    long totalFrames      : 0xCE9298;

    // Misc
    byte menuType         : 0x877484;
    byte character        : 0x85BEA8;
    byte chapter          : 0x85BE7A;
    byte item             : 0x855664;
    byte gameRound        : 0x85BE7E;
    short room            : 0x856F08;
    uint igt              : 0x85BE84;

    // Cutscenes
    string7 movie         : 0x8695FC;
    string7 cutscene      : 0x802C6E;

    // Loadings
    byte screenState      : 0x856F00;
    byte screenTransition : 0x855708;

    // Assignment Ada
    long sample           : 0x85C16C;
    bool isMissionText    : 0x814040;

    // SRT variables
    byte difficulty       : 0x85F35C;
    short da              : 0x85BE74;
    short health          : 0x85BE94;
    short chapterShots    : 0x85F354;
    short totalShots      : 0x85F358;
    short chapterShotsHit : 0x85F34C;
    short totalShotsHit   : 0x85F350;
    short chapterKills    : 0x85F344;
    short totalKills      : 0x85F348;
    short chapterDeaths   : 0x85F340;
    short totalDeaths     : 0x85F342;
    uint money            : 0x85BE88;
}

startup
{
    // Load the settings
    Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Basic");
    vars.Helper.Settings.CreateFromXml("Components/RE4Splitter.Settings.xml");

    // Check the timing method
    if (timer.CurrentTimingMethod == TimingMethod.RealTime)
    {
        DialogResult timingMessage = MessageBox.Show
        (
            "This game uses Load Removal Time (LRT) as the main timing method.\n"
            + "LiveSplit is currently set to show Real Time (RTA).\n"
            + "Would you like to set the timing method to Game Time?",
            "LiveSplit | Resident Evil 4",
            MessageBoxButtons.YesNo, MessageBoxIcon.Question
        );

        if (timingMessage == DialogResult.Yes)
        {
            timer.CurrentTimingMethod = TimingMethod.GameTime;
        }
    }
}

init
{
    // Check the version of the game
    switch (modules.First().FileVersionInfo.FileVersion)
    {
        case "1.0.0.0":
        case "1.0.0RELEASE_DEV.0":
            version = "1.1.0";
            break;

        case "1.0.18384.1":
        case "1.0.18384.2":
            version = "1.0.6";
            break;

        case "1.0.18384.3":
            version = "1.0.6 (Japan)";
            break;

        default:
            version = "Unknown";
            break;
    }

    // ------------------------------------ Functions ------------------------------------

    // Convert room IDs to short and create a tuple
    Func<int, int, Tuple<short, short>> createRoomIDsTuple = (room1, room2) =>
    {
        return Tuple.Create((short)room1, (short)room2);
    };

    // Calculation of Hit Ratio
    vars.calcHitRatio = (Func<short, short, double>)((shotsHit, shots) =>
    {
        return shotsHit > 0 ? Math.Round(((double)shotsHit / shots) * 100) : 0;
    });

    // Update the text component
    vars.updateTextComponent = (Func<string, dynamic>)((text) =>
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

        // Find the text component
        dynamic textComponent = timer.Layout.Components.FirstOrDefault((dynamic tc) => tc.GetType().Name == "TextComponent" && tc.Settings.Text1 == text);
        textComponent = textComponent ?? createTextComponent(text);
        return textComponent.Settings;
    });

    // Retime Game Time
    vars.retimeGameTime = (Action<TimeSpan>)((timesave) =>
    {
        var componentRetime = vars.updateTextComponent("Retimed LRT");
        var time = vars.gameTime - timesave;
        componentRetime.Text2 = time.ToString("hh\\:mm\\:ss\\.ff");
    });

    // Initialize the variables when the timer is start or reset
    vars.resetVariables = (Action)(() =>
    {
        vars.gameTime = new TimeSpan();                           // Game Time
        vars.timesave = new TimeSpan();                           // Timesave
        vars.completedDoors = new HashSet<Tuple<short, short>>(); // Store the rooms passed
        vars.playedCutscenes = new HashSet<string>();             // Store the cutscenes played
        vars.obtainedKeyItems = new HashSet<string>();            // Store the key items obtained
        vars.obtainedPlagaSamples = new HashSet<long>();          // Store the plaga samples obtained
        vars.elapsedFrames = 0;                                   // Frames elapsed with load removed
        vars.roomPauseCount = 0;                                  // Pauses done in room
        vars.totalPauseCount = 0;                                 // Pauses done in total
        vars.chapterInvCount = 0;                                 // Inventories opened in chapter
        vars.totalInvCount = 0;                                   // Inventories opened in total
        vars.inventoryTime = new Stopwatch();                     // Inventory Time

        // Debug
        vars.doorLoadsTime = new Stopwatch();
        vars.optionsTime = new Stopwatch();
    });

    // ------------------------------------ Functions ------------------------------------

    // ------------------------------------ Global variables ------------------------------------

    // Create the TimerModel
    vars.timerModel = new TimerModel { CurrentState = timer };

    // Game Modes
    vars.gameModes = new Dictionary<string, string>()
    {
        { "Idle", "Idle" },
        { "MG", "Main Game" },
        { "SW", "Separate Ways" },
        { "AA", "Assignment Ada" }
    };

    // Categories
    vars.categories = new Dictionary<string, string>()
    {
        { "Idle", "Idle" },
        { "NG", "New Game" },
        { "NG+", "New Game+" },
        { "NM", "No Merchant" }
    };

    // Timesaves
    vars.timesavesNeeded = new Dictionary<string, TimeSpan>()
    {
        { "New Game", (TimeSpan.FromMinutes(4) + TimeSpan.FromSeconds(30)) },
        { "New Game+", TimeSpan.FromMinutes(5) },
        { "No Merchant", TimeSpan.FromMinutes(3) },
        { "Separate Ways", TimeSpan.FromSeconds(12) },
        { "Assignment Ada", TimeSpan.FromSeconds(3) }
    };

    // Characters
    vars.characters = new string[] { "Leon", "Ashley", "Ada", "Hunk", "Krauser", "Wesker" };

    // Current Game Mode
    vars.gameMode = vars.gameModes["Idle"];

    // Current Category
    vars.category = vars.categories["Idle"];

    // Store the room IDs that are not split
    vars.unsplittedDoors = new HashSet<Tuple<short, short>>()
    {
        // Main Game
        createRoomIDsTuple(262, 260), // Chapter 1-1 End
        createRoomIDsTuple(267, 283), // Chapter 1-3 End
        createRoomIDsTuple(527, 518), // Chapter 3-3 End
        createRoomIDsTuple(525, 518), // Chapter 3-4 End
        createRoomIDsTuple(545, 555), // Chapter 4-1 End
        createRoomIDsTuple(541, 549), // Chapter 4-2 End
        createRoomIDsTuple(549, 550), // Chapter 4-3 End
        createRoomIDsTuple(554, 768), // Chapter 4-4 End
        createRoomIDsTuple(789, 790), // Chapter 5-2 End
        createRoomIDsTuple(796, 800), // Chapter 5-3 End
        createRoomIDsTuple(288, 256), // Main Menu → Footpath to the Village
        createRoomIDsTuple(519, 514), // Barracks → Castle Wall
        createRoomIDsTuple(536, 533), // Gatekeeper Hallway → Lord's Room
        createRoomIDsTuple(555, 544), // Prophet's Room (Cutscene) → Area before the Mine
        createRoomIDsTuple(790, 778), // Machine Room Entry → Communications Tower (Cutscene)
        createRoomIDsTuple(778, 790), // Communications Tower (Cutscene) → Machine Room Entry
        createRoomIDsTuple(818, 817), // Steel Tower → Before the Steel Tower

        // Separate Ways
        createRoomIDsTuple(1283, 1286), // Chapter 1 End
        createRoomIDsTuple(1289, 1294), // Chapter 2 End
        createRoomIDsTuple(1292, 1298), // Chapter 3 End
        createRoomIDsTuple(1303, 1304), // Chapter 4 End

        // Assignment Ada
        createRoomIDsTuple(288, 1029) // AA Start
    };

    vars.difficultyMaxDA = new Dictionary<byte, Tuple<string, short>>()
    {
        { 1, Tuple.Create("Amateur", (short)3999) },
        { 3, Tuple.Create("Easy", (short)5999) },
        { 5, Tuple.Create("Normal", (short)10999) },
        { 6, Tuple.Create("Pro", (short)10999) }
    };

    // ------------------------------------ Global variables ------------------------------------

    vars.resetVariables();
}

update
{
    // Disable the script if the game version is unknown
    if (version == "Unknown")
    {
        return false;
    }

    // If you buy something at the merchant even once, set the category to New Game
    if (vars.category == vars.categories["NM"] && current.menuType == 16 && current.money < old.money) {
        vars.category = vars.categories["NG"];
    }

    // ------------------------------------ When the timer pauses ------------------------------------

    // Door Loads
    bool isDoorLoads = current.screenState != 3 && current.screenState != 6;

    // Options
    bool isOptions = current.screenState == 6;

    // Tutorials (2nd room of 1-1 and last room of 2-1)
    bool isTutorials = current.menuType == 64 && (current.room == 257 || current.room == 279);

    // Add frames only if we're not in any of these situations
    if (!isDoorLoads && !isOptions && !isTutorials)
    {
        vars.elapsedFrames += current.totalFrames - old.totalFrames;
    }

    // ------------------------------------ When the timer pauses ------------------------------------

    // ------------------------------------ Debug ------------------------------------

    // Show time passed on doorloads (Debug)
    var componentDoorLoads = vars.updateTextComponent("Door Loads");
    componentDoorLoads.Text2 = vars.doorLoadsTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");
    if (isDoorLoads) vars.doorLoadsTime.Start();
    else vars.doorLoadsTime.Stop();

    // Show time spent on options (Debug)
    var componentOptions = vars.updateTextComponent("Options");
    componentOptions.Text2 = vars.optionsTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");
    if (isOptions) vars.optionsTime.Start();
    else vars.optionsTime.Stop();

    // Show Frames (Debug)
    var componentFrames = vars.updateTextComponent("Frames");
    componentFrames.Text2 = vars.elapsedFrames.ToString();

    // Show Categories (Debug)
    var componentCategory = vars.updateTextComponent("Category");
    componentCategory.Text2 = vars.category;

    // ------------------------------------ Debug ------------------------------------

    // ------------------------------------ SRT text variables ------------------------------------

    // Show DA
    if (settings["ShowDA"] && current.da != old.da)
    {
        var difficultyNameAndMaxDA = vars.difficultyMaxDA[current.difficulty];
        string difficultyName = difficultyNameAndMaxDA.Item1;
        short maxDA = difficultyNameAndMaxDA.Item2;
        double computedDA = Math.Floor(current.da / ((double)10999 / maxDA));

        var componentDA = vars.updateTextComponent("DA");
        componentDA.Text2 = string.Format("{0} ({1})", computedDA, difficultyName);
    }

    // Show Health
    if (settings["ShowHealth"] && (current.health != old.health || current.character != old.character))
    {
        var componentHealth = vars.updateTextComponent("Health");
        componentHealth.Text2 = string.Format("{0} ({1})", current.health, vars.characters[current.character]);
    }

    // Show Money
    if (settings["ShowMoney"] && current.money != old.money)
    {
        var componentMoney = vars.updateTextComponent("Money");
        componentMoney.Text2 = string.Format("{0} PTAS", current.money);
    }

    // Show Hit Ratio
    if (settings["ShowHitRatio"] && current.chapterShots != old.chapterShots)
    {
        double chapterHitRatio = vars.calcHitRatio(current.chapterShotsHit, current.chapterShots);
        double totalHitRatio = vars.calcHitRatio(current.totalShotsHit, current.totalShots);

        var componentHitRatio = vars.updateTextComponent("Hit Ratio");
        componentHitRatio.Text2 = string.Format("Total: {0}% Chapter: {1}%", totalHitRatio, chapterHitRatio);
    }

    // Show Kills
    if (settings["ShowKills"] && current.chapterKills != old.chapterKills)
    {
        var componentKills = vars.updateTextComponent("Kills");
        componentKills.Text2 = string.Format("Total: {0} Chapter: {1}", current.totalKills, current.chapterKills);
    }

    // Show Deaths
    if (settings["ShowDeaths"] && current.chapterDeaths != old.chapterDeaths)
    {
        var componentDeaths = vars.updateTextComponent("Deaths");
        componentDeaths.Text2 = string.Format("Total: {0} Chapter: {1}", current.totalDeaths, current.chapterDeaths);
    }

    // Show In Game Time
    if (settings["ShowInGameTime"] && current.igt != old.igt)
    {
        var componentIGT = vars.updateTextComponent("In Game Time");
        componentIGT.Text2 = TimeSpan.FromSeconds(current.igt).ToString("hh\\:mm\\:ss");
    }

    // Show Inventory Count
    if (settings["ShowInventoryCount"])
    {
        // Store the previous chapter inventory count
        int prevChapterInvCount = vars.chapterInvCount;

        // Check to see if the inventory is opened
        if ((current.menuType == 1 || current.menuType == 128) && old.menuType == 0)
        {
            vars.totalInvCount++;
            vars.chapterInvCount++;
        }

        // Initialize chapter inventory count at the end of chapter
        if (current.chapter > old.chapter)
        {
            vars.chapterInvCount = 0;
        }

        if (vars.chapterInvCount != prevChapterInvCount)
        {
            var componentInvCount = vars.updateTextComponent("Inventory Count");
            componentInvCount.Text2 = string.Format("Total: {0} Chapter: {1}", vars.totalInvCount, vars.chapterInvCount);
        }
    }

    // Show Inventory Time
    if (settings["ShowInventoryTime"] && (current.menuType == 1 || current.menuType == 128))
    {
        var componentInvTime = vars.updateTextComponent("Inventory Time");
        componentInvTime.Text2 = vars.inventoryTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");

        // Start the timer
        if (current.screenTransition < old.screenTransition && old.screenTransition == 2)
        {
            vars.inventoryTime.Start();
        }

        // Stop the timer
        if (current.screenTransition > old.screenTransition && old.screenTransition == 0)
        {
            vars.inventoryTime.Stop();
        }
    }

    // Show Pause Count
    if (settings["ShowPauseCount"])
    {
        // Store the previous room pause count
        int prevRoomPauseCount = vars.roomPauseCount;

        // Check to see if the options menu is opened
        if (current.screenState == 6 && old.screenState != 6)
        {
            vars.totalPauseCount++;
            vars.roomPauseCount++;
        }

        // Initialize chapter pause count at the end of the room
        if (current.room != old.room)
        {
            vars.roomPauseCount = 0;
        }

        if (vars.roomPauseCount != prevRoomPauseCount)
        {
            var componentPauseCount = vars.updateTextComponent("Pause Count");
            componentPauseCount.Text2 = string.Format("Total: {0} Room: {1}", vars.totalPauseCount, vars.roomPauseCount);
        }
    }

    // ------------------------------------ SRT text variables ------------------------------------
}

onStart
{
    // Initialize the variables when the timer starts
    vars.resetVariables();
}

start
{
    // Start the timer after the Main Game's FMV is skipped
    if (settings["MainGameSplits"] && current.room == 256 && old.room == 288 && vars.characters[current.character] == "Leon")
    {
        vars.gameMode = vars.gameModes["MG"];
        vars.category = current.gameRound > 0 ? vars.categories["NG+"] : vars.categories["NM"];
        return true;
    }

    // Start the timer after the Separate Ways map is skipped
    if (settings["SeparateWaysSplits"] && current.menuType == 0 && old.menuType == 2 && vars.characters[current.character] == "Ada" && current.room == 1280)
    {
        vars.gameMode = vars.gameModes["SW"];
        return true;
    }

    // Start the timer after the Assignment Ada text is skipped
    if (settings["AssignmentAdaSplits"] && !current.isMissionText && old.isMissionText && vars.characters[current.character] == "Ada" && current.room == 288)
    {
        vars.gameMode = vars.gameModes["AA"];
        return true;
    }
    return false;
}

split
{
    // Door Splits
    if (current.room != old.room && vars.gameMode != vars.gameModes["Idle"] && settings["DoorSplits"])
    {
        // Split if the unsplitted doors or completed doors doesn't contains the old and current room IDs
        if (!vars.unsplittedDoors.Contains(Tuple.Create(old.room, current.room)) && !vars.completedDoors.Contains(Tuple.Create(old.room, current.room)))
        {
            vars.completedDoors.Add(Tuple.Create(old.room, current.room));
            return true;
        }
    }

    // Chapter Splits
    if (current.chapter > old.chapter && (vars.gameMode == vars.gameModes["MG"] || vars.gameMode == vars.gameModes["SW"]) && settings[string.Format("Chapter{0}", current.chapter)])
    {
        return true;
    }

    // Key Item Splits
    String itemId = current.room.ToString() + current.item.ToString();
    if (current.item != old.item && !vars.obtainedKeyItems.Contains(itemId) && (vars.gameMode == vars.gameModes["MG"] || vars.gameMode == vars.gameModes["SW"]) && settings[string.Format("Item{0}", itemId)])
    {
        vars.obtainedKeyItems.Add(itemId);
        return true;
    }

    // Event Splits
    String cutsceneId = current.cutscene != "" ? current.room.ToString() + current.cutscene.Substring(4) : "";
    if (current.cutscene != old.cutscene && !vars.playedCutscenes.Contains(cutsceneId) && (vars.gameMode == vars.gameModes["MG"] || vars.gameMode == vars.gameModes["SW"]) && settings[string.Format("Event{0}", cutsceneId)])
    {
        vars.playedCutscenes.Add(cutsceneId);
        return true;
    }

    String movieId = current.movie != "" ? current.room.ToString() + current.movie.Substring(4) : "";
    if (current.movie != old.movie && !vars.playedCutscenes.Contains(movieId) && (vars.gameMode == vars.gameModes["MG"] || vars.gameMode == vars.gameModes["SW"]) && settings[string.Format("Event{0}", movieId)])
    {
        vars.playedCutscenes.Add(movieId);
        return true;
    }

    // Plaga Sample Splits
    if (current.sample > old.sample && !vars.obtainedPlagaSamples.Contains(current.sample) && vars.gameMode == vars.gameModes["AA"] && settings[string.Format("Sample{0}", vars.obtainedPlagaSamples.Count + 1)])
    {
        vars.obtainedPlagaSamples.Add(current.sample);
        return true;
    }

    // Split at the bridge door after reunited with Ashley (for No Merchant)
    if (current.room == 518 && old.room == 527 && current.chapter == 10 && vars.gameMode == vars.gameModes["MG"] && settings["DoorSplits"])
    {
        return true;
    }

    // Main Game Ending
    if (current.movie != old.movie && movieId == "819ng." && vars.gameMode == vars.gameModes["MG"])
    {
        vars.retimeGameTime(vars.timesavesNeeded[vars.category]);
        return true;
    }

    // Separate Ways Ending
    if (current.movie != old.movie && movieId == "1310s10" && vars.gameMode == vars.gameModes["SW"])
    {
        vars.retimeGameTime(vars.timesavesNeeded[vars.gameMode]);
        return true;
    }

    // Assignment Ada Ending
    if (current.cutscene != old.cutscene && cutsceneId == "1038s00" && vars.gameMode == vars.gameModes["AA"])
    {
        vars.retimeGameTime(vars.timesavesNeeded[vars.gameMode]);
        return true;
    }
    return false;
}

isLoading
{
    return true;
}

gameTime
{
    // Synchronize the timer with LRT
    vars.gameTime = TimeSpan.FromSeconds((double)vars.elapsedFrames / current.frameRate);
    return vars.gameTime;
}

onReset
{
    // Initialize the variables when the timer resets
    vars.gameMode = vars.gameModes["Idle"];
    vars.resetVariables();
}

reset
{
    // Reset the timer when the IGT is 0
    return current.igt == 0 && old.igt > 0;
}

exit
{
    // Reset the timer when we exit the game
    if (timer.CurrentPhase != TimerPhase.Ended)
    {
        vars.timerModel.Reset();
    }
}