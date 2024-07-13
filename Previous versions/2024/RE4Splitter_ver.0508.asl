// Version 1.1.0 (Latest)
state("bio4", "1.1.0")
{
    byte screenTransition : 0x858F88; // Screen Transition
    byte blackScreen      : 0x858F77; // Black Screen
    byte screenState      : 0x85A780; // Screen States
    byte menu             : 0x87AD04; // Menu Screens
    byte character        : 0x85F728; // Characters
    byte chapter          : 0x85F6FA; // Chapters
    byte item             : 0x858EE4; // Items
    short room            : 0x85A788; // Rooms
    uint contact          : 0x87AFF6; // Contact from Hannigan
    uint choice           : 0x81792F; // "Yes" or "No" Choices
    uint igt              : 0x85F704; // In Game Time
    long sample           : 0x85F9EC; // Plaga Samples
    bool isEvent          : 0x867C0A; // Events and Animations
    bool isSubtitle       : 0x817840; // Subtitles on the screen
    bool isQTE            : 0x863A58; // Quick Time Events
    bool isCutscene       : 0x867C0D; // Rendered Cutscenes
    bool isMovie          : 0x803C5F; // Movies in Main Game and Assignment Ada
    bool isSWMovie        : 0x86CD44; // Movies in Separate Ways
    bool isMGEnding       : 0x8594BB; // Ending Cutscene in Main Game
    bool isSWEnding       : 0x851173; // Ending Cutscene in Separate Ways

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
    uint money            : 0x85F708; // Money Value

    bool f10Key           : 0xE2286C, 0x4, 0x620; // F10 Key
}

// Version 1.0.6 (Old)
state("bio4", "1.0.6")
{
    byte screenTransition : 0x855708;
    byte blackScreen      : 0x8556F7;
    byte screenState      : 0x856F00;
    byte menu             : 0x877484;
    byte character        : 0x85BEA8;
    byte chapter          : 0x85BE7A;
    byte item             : 0x855664;
    short room            : 0x856F08;
    uint contact          : 0x877776;
    uint choice           : 0x81411F;
    uint igt              : 0x85BE84;
    long sample           : 0x85C16C;
    bool isEvent          : 0x86437A;
    bool isSubtitle       : 0x814030;
    bool isQTE            : 0x863A58;
    bool isCutscene       : 0x86437D;
    bool isMovie          : 0x802C5F;
    bool isSWMovie        : 0x8694B4;
    bool isMGEnding       : 0x855C38;
    bool isSWEnding       : 0x84D8F3;

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

    bool f10Key           : 0xE1EFEC, 0x4, 0x620;
}

// Version 1.0.6 (Latest in Japan)
state("bio4", "1.0.6 (Japan)")
{
    byte screenTransition : 0x855708;
    byte blackScreen      : 0x8556F7;
    byte screenState      : 0x856F00;
    byte menu             : 0x877484;
    byte character        : 0x85BEA8;
    byte chapter          : 0x85BE7A;
    byte item             : 0x855664;
    short room            : 0x856F08;
    uint contact          : 0x877776;
    uint choice           : 0x81412F;
    uint igt              : 0x85BE84;
    long sample           : 0x85C16C;
    bool isEvent          : 0x86437A;
    bool isSubtitle       : 0x814040;
    bool isQTE            : 0x863A58;
    bool isCutscene       : 0x86437D;
    bool isMovie          : 0x802C5F;
    bool isSWMovie        : 0x8694B4;
    bool isMGEnding       : 0x855C38;
    bool isSWEnding       : 0x84D8F3;

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

    bool f10Key           : 0xE1EFEC, 0x4, 0x620;
}

startup
{
    // Main Game
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

    // Separate Ways
    settings.Add("SeparateWaysSplits", true, "Separate Ways");
    settings.Add("SeparateWaysChapterSplits", true, "Chapters", "SeparateWaysSplits");
    settings.SetToolTip("SeparateWaysChapterSplits", "Check this option if you want to split on Chapters.");
    settings.Add("Chapter21 (Separate Ways)", true, "Chapter 1", "SeparateWaysChapterSplits");
    settings.Add("Chapter22 (Separate Ways)", true, "Chapter 2", "SeparateWaysChapterSplits");
    settings.Add("Chapter23 (Separate Ways)", true, "Chapter 3", "SeparateWaysChapterSplits");
    settings.Add("Chapter24 (Separate Ways)", true, "Chapter 4", "SeparateWaysChapterSplits");

    settings.Add("SeparateWaysKeyItemSplits", false, "Key Items", "SeparateWaysSplits");
    settings.SetToolTip("SeparateWaysKeyItemSplits", "Check this option if you want to split on Key Items.");
    settings.Add("Item59 (Separate Ways)", true, "Insignia Key", "SeparateWaysKeyItemSplits");
    settings.Add("Item118 (Separate Ways)", true, "Green Catseye", "SeparateWaysKeyItemSplits");
    settings.Add("Item60 (Separate Ways)", true, "Round Insignia", "SeparateWaysKeyItemSplits");
    settings.Add("Item129 (Separate Ways)", true, "Iron Key", "SeparateWaysKeyItemSplits");
    settings.Add("Item142 (Separate Ways)", true, "Lift Activation Key", "SeparateWaysKeyItemSplits");
    settings.Add("Item27 (Separate Ways)", true, "Hourglass w/ gold decor", "SeparateWaysKeyItemSplits");
    settings.Add("Item49 (Separate Ways)", true, "Activation Key (blue)", "SeparateWaysKeyItemSplits");
    settings.Add("Item51 (Separate Ways)", true, "Activation Key (red)", "SeparateWaysKeyItemSplits");

    // Assignment Ada
    settings.Add("AssignmentAdaSplits", true, "Assignment Ada");
    settings.Add("PlagaSampleSplits", true, "Plaga Samples", "AssignmentAdaSplits");
    settings.SetToolTip("PlagaSampleSplits", "Check this option if you want to split on Plaga Samples.");
    settings.Add("Sample1 (Assignment Ada)", true, "Plaga Sample 1", "PlagaSampleSplits");
    settings.Add("Sample2 (Assignment Ada)", true, "Plaga Sample 2", "PlagaSampleSplits");
    settings.Add("Sample3 (Assignment Ada)", true, "Plaga Sample 3", "PlagaSampleSplits");
    settings.Add("Sample4 (Assignment Ada)", true, "Plaga Sample 4", "PlagaSampleSplits");
    settings.Add("Sample5 (Assignment Ada)", true, "Plaga Sample 5", "PlagaSampleSplits");

    // Infomation
    settings.Add("Infos", false, "Information");
    settings.SetToolTip("Infos", "Check this option if you want to show Infomation.");
    settings.Add("ShowDA", true, "DA", "Infos");
    settings.Add("ShowHealth", true, "Health", "Infos");
    settings.Add("ShowMoney", true, "Money", "Infos");
    settings.Add("ShowHitRatio", true, "Hit Ratio", "Infos");
    settings.Add("ShowKills", true, "Kills", "Infos");
    settings.Add("ShowDeaths", true, "Deaths", "Infos");
    settings.Add("ShowInGameTime", true, "In Game Time", "Infos");
    settings.Add("ShowInventoryTime", true, "Inventory Time", "Infos");
    settings.Add("ShowInventoryCount", true, "Inventory Count", "Infos");

    // Door Splits
    settings.Add("DoorSplits", true, "Door Splits");
    settings.SetToolTip("DoorSplits", "Check this option if you want to use Door Splits.");

    // Soft Reset
    settings.Add("SoftReset", false, "Soft Reset");
    settings.SetToolTip("SoftReset", "Check this option if you want to use Soft Reset. (It works by pressing the F10 key)");

    // Create the settings
    // Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Basic");
    // vars.Helper.Settings.CreateFromXml("Components/RE4Original.Settings.xml");

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
        vars.completedDoors = new List<Tuple<short, short>>(); // Store the room IDs passed
        vars.obtainedKeyItems = new List<byte>();              // Store the key items obtained
        vars.obtainedPlagaSamples = new List<long>();          // Store the plaga samples obtained
        vars.inventoryTime = new Stopwatch();                  // Inventory Time
        vars.chapterInvCount = 0;                              // Inventories opened in chapter
        vars.totalInvCount = 0;                                // Inventories opened in total

        // Debug
        vars.doorLoadsTime = new Stopwatch();
        vars.menuLoadsTime = new Stopwatch();
        vars.blackScreensTime = new Stopwatch();
        vars.cutscenesTime = new Stopwatch();
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
    //     // Store the old chapter inventory count
    //     int oldChapterInvCount = vars.chapterInvCount;

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
    //     if (vars.chapterInvCount != oldChapterInvCount)
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

    // Store the old chapter inventory count
    int oldChapterInvCount = vars.chapterInvCount;

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
    if (vars.chapterInvCount != oldChapterInvCount)
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
    if (current.isMGEnding && !old.isMGEnding && current.room == 819 && vars.gameMode == vars.gameModes["MG"])
    {
        return true;
    }

    // Separate Ways Ending
    if (current.isSWEnding && !old.isSWEnding && current.room == 1310 && vars.gameMode == vars.gameModes["SW"])
    {
        return true;
    }

    // Assignment Ada Ending
    if (!current.isSubtitle && old.isSubtitle && current.isEvent && current.choice == 66048 && vars.obtainedPlagaSamples.Count == 5 && current.room == 1038 && vars.gameMode == vars.gameModes["AA"])
    {
        return true;
    }
    return false;
}

isLoading
{
    // Debug
    var componentDoorLoads = vars.updateTextComponent("Door Loads and Options");
    var componentMenuLoads = vars.updateTextComponent("Menu Loads");
    var componentBlackScreens = vars.updateTextComponent("Black Screens");
    var componentCutscenes = vars.updateTextComponent("Cutscenes");
    componentDoorLoads.Text2 = vars.doorLoadsTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");
    componentMenuLoads.Text2 = vars.menuLoadsTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");
    componentBlackScreens.Text2 = vars.blackScreensTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");
    componentCutscenes.Text2 = vars.cutscenesTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");

    // Door Loads and Options
    if (current.screenState != 3)
    {
        vars.doorLoadsTime.Start();
        return true;
    }
    else
    {
        vars.doorLoadsTime.Stop();
    }

    // Menu Loads
    if (current.screenTransition == 2 && current.blackScreen == 255 && current.menu != 0)
    {
        vars.menuLoadsTime.Start();
        return true;
    }
    else
    {
        vars.menuLoadsTime.Stop();
    }

    // Black Screens
    if (current.blackScreen == 255 && !current.isSubtitle && current.menu == 0 && current.isEvent)
    {
        vars.blackScreensTime.Start();
        return true;
    }
    else
    {
        vars.blackScreensTime.Stop();
    }

    // Cutscenes
    if (((current.isMovie || current.isSWMovie) && !current.isQTE || current.isCutscene || current.contact != 0) && current.isEvent)
    {
        vars.cutscenesTime.Start();
        return true;
    }
    else
    {
        vars.cutscenesTime.Stop();
    }

    // // Door Loads
    // if (current.screenState != 3)
    // {
    //     return true;
    // }

    // // Menu Loads
    // if (current.screenTransition == 2 && current.blackScreen == 255 && current.menu != 0)
    // {
    //     return true;
    // }

    // // Black Screens
    // if (current.blackScreen == 255 && !current.isSubtitle && current.menu == 0 && current.isEvent)
    // {
    //     return true;
    // }

    // // Cutscenes
    // if (((current.isMovie || current.isSWMovie) && !current.isQTE || current.isCutscene || current.contact != 0) && current.isEvent)
    // {
    //     return true;
    // }
    return false;
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