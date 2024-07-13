// Version 1.1.0 (Latest)
state("bio4", "1.1.0")
{
    byte frameRate        : 0x82B7A0; // FPS Settings
    byte screenState      : 0x85A780; // Screen States
    byte screenTransition : 0x858F88; // Screen Transition
    byte blackScreen      : 0x858F77; // Black Screens
    byte menu             : 0x87AD04; // Menu Screens
    byte character        : 0x85F728; // Characters
    byte chapter          : 0x85F6FA; // Chapters
    byte item             : 0x858EE4; // Items
    short room            : 0x85A788; // Rooms
    int contact           : 0x87AFF6; // Contact from Hannigan
    int igt               : 0x85F704; // In Game Time
    long totalFrames      : 0xCECB18; // Total Frames
    long sample           : 0x85F9EC; // Plaga Samples
    string7 movie         : 0x803C6E; // Movies in playback
    bool isMovie          : 0x803C5F; // Movies in Main Game and Assignment Ada
    bool isSWMovie        : 0x86CD44; // Movies in Separate Ways
    bool isCutscene       : 0x867C0D; // Realtime Cutscenes
    bool isEvent          : 0x867C0A; // Events and Animations
    bool isSubtitle       : 0x817840; // Subtitles on the screen

    byte difficulty       : 0x862BDC; // Difficulties
    short da              : 0x85F6F4; // Difficulty Adjustment
    short health          : 0x85F714; // Main Character's Health
    short chapterShots    : 0x862BD4; // Shots fired in chapter
    short totalShots      : 0x862BD8; // Shots fired in total
    short chapterShotsHit : 0x862BCC; // Shots hit in chapter
    short totalShotsHit   : 0x862BD0; // Shots hit in total
    short chapterKills    : 0x862BC4; // Kills in chapter
    short totalKills      : 0x862BC8; // Kills in total
    short chapterDeaths   : 0x862BC0; // Deaths in chapter
    short totalDeaths     : 0x862BC2; // Deaths in total
    int money             : 0x85F708; // Money Value

    bool f10Key           : 0xE2286C, 0x4, 0x620; // F10 Key
}

// Version 1.0.6 (Old)
state("bio4", "1.0.6")
{
    byte frameRate        : 0x827F38;
    byte screenState      : 0x856F00;
    byte screenTransition : 0x855708;
    byte blackScreen      : 0x8556F7;
    byte menu             : 0x877484;
    byte character        : 0x85BEA8;
    byte chapter          : 0x85BE7A;
    byte item             : 0x855664;
    short room            : 0x856F08;
    int contact           : 0x877776;
    int igt               : 0x85BE84;
    long totalFrames      : 0xCE9298;
    long sample           : 0x85C16C;
    string7 movie         : 0x802C6E;
    bool isMovie          : 0x802C5F;
    bool isSWMovie        : 0x8694B4;
    bool isCutscene       : 0x86437D;
    bool isEvent          : 0x86437A;
    bool isSubtitle       : 0x814030;

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
    int money             : 0x85BE88;

    bool f10Key            : 0xE1EFEC, 0x4, 0x620;
}

// Version 1.0.6 (Latest in Japan)
state("bio4", "1.0.6 (Japan)")
{
    byte frameRate        : 0x827F48;
    byte screenState      : 0x856F00;
    byte screenTransition : 0x855708;
    byte blackScreen      : 0x8556F7;
    byte menu             : 0x877484;
    byte character        : 0x85BEA8;
    byte chapter          : 0x85BE7A;
    byte item             : 0x855664;
    short room            : 0x856F08;
    int contact           : 0x877776;
    int igt               : 0x85BE84;
    long totalFrames      : 0xCE9298;
    long sample           : 0x85C16C;
    string7 movie         : 0x802C6E;
    bool isMovie          : 0x802C5F;
    bool isSWMovie        : 0x8694B4;
    bool isCutscene       : 0x86437D;
    bool isEvent          : 0x86437A;
    bool isSubtitle       : 0x814040;

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
    int money             : 0x85BE88;

    bool f10Key           : 0xE1EFEC, 0x4, 0x620;
}

startup
{
    // Load the settings
    Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Basic");
    vars.Helper.Settings.CreateFromXml("Components/RE4Original.Settings.xml");

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

    // Characters
    vars.characters = new string[] { "Leon", "Ashley", "Ada", "Hunk", "Krauser", "Wesker" };

    // Convert frames to time
    vars.convertFramesToTime = (Func<long, byte, TimeSpan>)((frames, fps) =>
    {
        return TimeSpan.FromSeconds((double)frames / fps);
    });

    // Convert room IDs to short and create a tuple
    Func<int, int, Tuple<short, short>> createRoomIDsTuple = (room1, room2) =>
    {
        return Tuple.Create((short)room1, (short)room2);
    };

    // Store the room IDs that are not split
    vars.unsplittedDoors = new List<Tuple<short, short>>()
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
        createRoomIDsTuple(1303, 1304)  // Chapter 4 End
    };

    // Reset variables when the timer is start or reset
    vars.resetVariables = (Action<string>)((gameMode) =>
    {
        vars.gameMode = gameMode;                              // Game Mode
        vars.loadRemovalFrames = 0;                            // Frames elapsed with load removed
        vars.completedDoors = new List<Tuple<short, short>>(); // Store the room IDs passed
        vars.PlayedMovies = new List<string>();                // Store the movie IDs played
        vars.obtainedKeyItems = new List<byte>();              // Store the key items obtained
        vars.obtainedPlagaSamples = new List<long>();          // Store the plaga samples obtained
        vars.inventoryTime = new Stopwatch();                  // Inventory Time
        vars.chapterInvCount = 0;                              // Inventories opened in chapter
        vars.totalInvCount = 0;                                // Inventories opened in total

        // Debug
        vars.doorLoadTime = new Stopwatch();
        vars.blackScreenTime = new Stopwatch();
        vars.cutsceneTime = new Stopwatch();
    });
    vars.resetVariables(vars.gameModes["Idle"]);
}

update
{
    // Disable the script if the game version is unknown
    if (version == "Unknown")
    {
        return false;
    }

    // Debug Components
    var componentDoorLoads = vars.updateTextComponent("Door Loads and Options");
    var componentCutscenes = vars.updateTextComponent("Cutscenes");
    var componentBlackScreens = vars.updateTextComponent("Black Screens");
    var componentFrames = vars.updateTextComponent("Frames");
    var componentMovies = vars.updateTextComponent("Movie");
    componentDoorLoads.Text2 = vars.doorLoadTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");
    componentCutscenes.Text2 = vars.cutsceneTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");
    componentBlackScreens.Text2 = vars.blackScreenTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");
    componentFrames.Text2 = vars.loadRemovalFrames.ToString();
    componentMovies.Text2 = current.movie;

    // Door Loads and Options
    bool isDoorLoads = current.screenState != 3;

    // Cutscenes
    bool isCutscenes = (current.isMovie || current.isSWMovie || current.isCutscene || current.contact != 0) && current.isEvent;

    // Black Screens
    bool isBlackScreens = current.blackScreen == 255 && !current.isSubtitle && current.menu == 0 && current.isEvent;

    // Add load removal frames
    if (!isDoorLoads && !isCutscenes && !isBlackScreens)
    {
        vars.loadRemovalFrames += current.totalFrames - old.totalFrames;
    }

    // Debug Timers
    if (isDoorLoads)
    {
        vars.doorLoadTime.Start();
    }
    else
    {
        vars.doorLoadTime.Stop();
    }

    if (isCutscenes)
    {
        vars.cutsceneTime.Start();
    }
    else
    {
        vars.cutsceneTime.Stop();
    }

    if (isBlackScreens)
    {
        vars.blackScreenTime.Start();
    }
    else
    {
        vars.blackScreenTime.Stop();
    }

    // Show DA
    if (current.da != old.da && settings["ShowDA"])
    {
        // Max DA
        short amateurMaxDA = 3999;
        short easyMaxDA = 5999;
        short gameMaxDA = 10999;

        // Difficulties
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
            short maxDA = value.Item1;
            string difficultyName = value.Item2;

            // Calculation of DA
            double calcDA = Math.Floor(current.da / ((double)gameMaxDA / maxDA));

            // Update the text
            var componentDA = vars.updateTextComponent("DA");
            componentDA.Text2 = string.Format("{0} ({1})", calcDA, difficultyName);
        }
    }

    // Show Health
    if ((current.health != old.health || current.character != old.character) && settings["ShowHealth"])
    {
        // Update the text
        var componentHealth = vars.updateTextComponent("Health");
        componentHealth.Text2 = string.Format("{0} ({1})", current.health, vars.characters[current.character]);
    }

    // Show Money
    if (current.money != old.money && settings["ShowMoney"])
    {
        // Update the text
        var componentMoney = vars.updateTextComponent("Money");
        componentMoney.Text2 = string.Format("{0} PTAS", current.money);
    }

    // Show Hit Ratio
    if (current.chapterShots != old.chapterShots && settings["ShowHitRatio"])
    {
        // Calculation of Hit Ratio
        Func<short, short, double> calcHitRatio = (shotsHit, shots) =>
        {
            return shotsHit > 0 ? Math.Round(((double)shotsHit / shots) * 100) : 0;
        };

        double chapterHitRatio = calcHitRatio(current.chapterShotsHit, current.chapterShots);
        double totalHitRatio = calcHitRatio(current.totalShotsHit, current.totalShots);

        // Update the text
        var componentHitRatio = vars.updateTextComponent("Hit Ratio");
        componentHitRatio.Text2 = string.Format("Total: {0}% Chapter: {1}%", totalHitRatio, chapterHitRatio);
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

    // Show In Game Time
    if (current.igt != old.igt && settings["ShowInGameTime"])
    {
        // Update the text
        var componentIGT = vars.updateTextComponent("In Game Time");
        componentIGT.Text2 = TimeSpan.FromSeconds(current.igt).ToString("hh\\:mm\\:ss");
    }

    // Show Inventory Time
    if ((current.menu == 1 || current.menu == 128) && settings["ShowInventoryTime"])
    {
        // Update the text
        var componentInvTime = vars.updateTextComponent("Inventory Time");
        componentInvTime.Text2 = vars.inventoryTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");

        // Start the timer
        if (current.screenTransition < old.screenTransition && old.screenTransition == 2)
        {
            vars.inventoryTime.Start();
        }

        // Stop the timer
        else if (current.screenTransition > old.screenTransition && old.screenTransition == 0)
        {
            vars.inventoryTime.Stop();
        }
    }

    // Show Inventory Count
    // if (settings["ShowInventoryCount"])
    // {
    //     // Store the previous chapter inventory count
    //     int prevChapterInvCount = vars.chapterInvCount;

    //     // Check to see if the inventory is opened
    //     if ((current.menu == 1 || current.menu == 128) && old.menu == 0)
    //     {
    //         vars.totalInvCount++;
    //         vars.chapterInvCount++;
    //     }

    //     // Initialize chapter inventory count at the end of chapter
    //     if (current.chapter > old.chapter)
    //     {
    //         vars.chapterInvCount = 0;
    //     }

    //     // Update the text
    //     if (vars.chapterInvCount != prevChapterInvCount)
    //     {
    //         var componentInvCount = vars.updateTextComponent("Inventory Count");
    //         componentInvCount.Text2 = string.Format("Total: {0} Chapter: {1}", vars.totalInvCount, vars.chapterInvCount);
    //     }
    // }

    // Return to the main menu when the F10 key is pressed
    if (current.f10Key && !old.f10Key && settings["SoftReset"])
    {
        IntPtr baseAddress = modules.First().BaseAddress;
        IntPtr softResetAddress = version == "1.1.0" ? baseAddress + 0x85A7B7 : baseAddress + 0x856F37;
        memory.WriteBytes(softResetAddress, new byte[] { 0x4 });
    }

    // Store the previous chapter inventory count
    int prevChapterInvCount = vars.chapterInvCount;

    // Check to see if the inventory is opened
    if ((current.menu == 1 || current.menu == 128) && old.menu == 0)
    {
        vars.totalInvCount++;
        vars.chapterInvCount++;
    }

    // Initialize chapter inventory count at the end of chapter
    if (current.chapter > old.chapter)
    {
        vars.chapterInvCount = 0;
    }

    // Update the text
    if (vars.chapterInvCount != prevChapterInvCount)
    {
        var componentInvCount = vars.updateTextComponent("Inventory Count");
        componentInvCount.Text2 = string.Format("Total: {0} Chapter: {1}", vars.totalInvCount, vars.chapterInvCount);
    }
}

start
{
    // Check to see if Main Game is running
    if (current.screenState == 3 && old.screenState != 3 && vars.characters[current.character] == "Leon" && current.room == 256 && settings["MainGameSplits"])
    {
        vars.resetVariables(vars.gameModes["MG"]);
        return true;
    }

    // Check to see if Separate Ways is running
    if (current.menu == 0 && old.menu == 2 && vars.characters[current.character] == "Ada" && current.room == 1280 && settings["SeparateWaysSplits"])
    {
        vars.resetVariables(vars.gameModes["SW"]);
        return true;
    }

    // Check to see if Assignment Ada is running
    if (!current.isSubtitle && old.isSubtitle && vars.characters[current.character] == "Ada" && current.room == 288 && settings["AssignmentAdaSplits"])
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
        // Split if the unsplitted doors or completed doors doesn't contains the old and current room IDs
        if (!vars.unsplittedDoors.Contains(Tuple.Create(old.room, current.room)) && !vars.completedDoors.Contains(Tuple.Create(old.room, current.room)))
        {
            vars.completedDoors.Add(Tuple.Create(old.room, current.room));
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

    // Split at the bridge door after reunited with Ashley (For No Merchant Category)
    if (current.room == 518 && old.room == 527 && current.chapter == 10 && vars.gameMode == vars.gameModes["MG"] && settings["DoorSplits"])
    {
        return true;
    }

    // Main Game Ending
    if (current.movie != old.movie && current.movie == "s333s10" && current.room == 819 && vars.gameMode == vars.gameModes["MG"])
    {
        return true;
    }

    // Separate Ways Ending
    if (current.movie != old.movie && current.movie == "r61es10" && current.room == 1310 && vars.gameMode == vars.gameModes["SW"])
    {
        return true;
    }

    // Assignment Ada Ending
    if (current.movie != old.movie && current.movie == "r40es00" && current.room == 1038 && vars.gameMode == vars.gameModes["AA"])
    {
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
    return vars.convertFramesToTime(vars.loadRemovalFrames, current.frameRate);
}

reset
{
    // Reset the timer when IGT equals 0
    if (current.igt == 0 && old.igt > 0)
    {
        return true;
    }
    return false;
}

onReset
{
    // Initialize variables on reset
    vars.resetVariables(vars.gameModes["Idle"]);
}

exit
{
    // Reset the timer when exit the game
    if (timer.CurrentPhase != TimerPhase.Ended)
    {
        vars.timerModel.Reset();
    }
}