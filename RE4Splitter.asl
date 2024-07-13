// test commit
// Version 1.1.0 (Latest)
state("bio4", "1.1.0")
{
    byte frameRate        : 0x82B7A0; // FPS Settings
    byte screenState      : 0x85A780; // Screen States
    byte screenTransition : 0x858F88; // Screen Transition
    byte menu             : 0x87AD04; // Menu Screens
    byte character        : 0x85F728; // Characters
    byte chapter          : 0x85F6FA; // Chapters
    byte item             : 0x858EE4; // Items
    short room            : 0x85A788; // Rooms
    uint igt              : 0x85F704; // In Game Time
    long totalFrames      : 0xCECB18; // Total Frames
    long sample           : 0x85F9EC; // Plaga Samples
    string7 movie         : 0x86CE8C; // Pre-Rendered Cutscenes in playback
    string7 cutscene      : 0x803C6E; // Realtime Rendering Cutscenes in playback
    bool isMovie          : 0x86CD44; // Pre-Rendered Cutscenes
    bool isCutscene       : 0x803C5F; // Realtime Rendering Cutscenes
    bool isMiniCutscene   : 0x867C0D; // Mini Cutscenes
    bool isContact        : 0x87AFFB; // Contact from Hannigan
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
    uint money            : 0x85F708; // Money Value

    bool f10Key           : 0xE2286C, 0x4, 0x620; // F10 Key
}

// Version 1.0.6 (Old)
state("bio4", "1.0.6")
{
    byte frameRate        : 0x827F38;
    byte screenState      : 0x856F00;
    byte screenTransition : 0x855708;
    byte menu             : 0x877484;
    byte character        : 0x85BEA8;
    byte chapter          : 0x85BE7A;
    byte item             : 0x855664;
    short room            : 0x856F08;
    uint igt              : 0x85BE84;
    long totalFrames      : 0xCE9298;
    long sample           : 0x85C16C;
    string7 movie         : 0x8695FC;
    string7 cutscene      : 0x802C6E;
    bool isMovie          : 0x8694B4;
    bool isCutscene       : 0x802C5F;
    bool isMiniCutscene   : 0x86437D;
    bool isContact        : 0x87777B;
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
    uint money            : 0x85BE88;

    bool f10Key            : 0xE1EFEC, 0x4, 0x620;
}

// Version 1.0.6 (Latest in Japan)
state("bio4", "1.0.6 (Japan)")
{
    byte frameRate        : 0x827F48;
    byte screenState      : 0x856F00;
    byte screenTransition : 0x855708;
    byte menu             : 0x877484;
    byte character        : 0x85BEA8;
    byte chapter          : 0x85BE7A;
    byte item             : 0x855664;
    short room            : 0x856F08;
    uint igt              : 0x85BE84;
    long totalFrames      : 0xCE9298;
    long sample           : 0x85C16C;
    string7 movie         : 0x8695FC;
    string7 cutscene      : 0x802C6E;
    bool isMovie          : 0x8694B4;
    bool isCutscene       : 0x802C5F;
    bool isMiniCutscene   : 0x86437D;
    bool isContact        : 0x87777B;
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
    uint money            : 0x85BE88;

    bool f10Key           : 0xE1EFEC, 0x4, 0x620;
}

startup
{
    // Load the settings
    // Assembly.Load(File.ReadAllBytes("Components/asl-help")).CreateInstance("Basic");
    // vars.Helper.Settings.CreateFromXml("Components/RE4Original.Settings.xml");

    // Main Game
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

        settings.Add("MainGameKeyItemSplits", false, "Key Items", "MainGameSplits");
        settings.SetToolTip("MainGameKeyItemSplits", "Check this option if you want to split on Key Items.");
			settings.Add("MainGameC1KeyItemSplits", false, "Chapter 1", "MainGameKeyItemSplits");
				settings.Add("Item260164", true, "Emblem (Right half)", "MainGameC1KeyItemSplits");
				settings.Add("Item260165", true, "Emblem (Left half)", "MainGameC1KeyItemSplits");
				settings.Add("Item26159", true, "Insignia Key", "MainGameC1KeyItemSplits");
			settings.Add("MainGameC2KeyItemSplits", false, "Chapter 2", "MainGameKeyItemSplits");
				settings.Add("Item26860", true, "Round Insignia", "MainGameC2KeyItemSplits");
				settings.Add("Item285140", true, "Camp Key", "MainGameC2KeyItemSplits");
				settings.Add("Item286139", true, "Old Key", "MainGameC2KeyItemSplits");
				settings.Add("Item28761", true, "False Eye", "MainGameC2KeyItemSplits");
			settings.Add("MainGameC3KeyItemSplits", false, "Chapter 3", "MainGameKeyItemSplits");
				settings.Add("Item519128", true, "Golden Sword", "MainGameC3KeyItemSplits");
				settings.Add("Item519196", true, "Platinum Sword", "MainGameC3KeyItemSplits");
				settings.Add("Item515167", true, "Castle Gate Key", "MainGameC3KeyItemSplits");
				settings.Add("Item513195", true, "Prison Key", "MainGameC3KeyItemSplits");
				settings.Add("Item521163", true, "Gallery Key", "MainGameC3KeyItemSplits");
				settings.Add("Item52131", true, "Goat Ornament", "MainGameC3KeyItemSplits");
				settings.Add("Item52358", true, "Moonstone (Right half)", "MainGameC3KeyItemSplits");
				settings.Add("Item523105", true, "Moonstone (Left half)", "MainGameC3KeyItemSplits");
				settings.Add("Item52629", true, "Stone Tablet", "MainGameC3KeyItemSplits");
				settings.Add("Item52615", true, "Salazar Family Insignia", "MainGameC3KeyItemSplits");
				settings.Add("Item52657", true, "Serpent Ornament", "MainGameC3KeyItemSplits");
			settings.Add("MainGameC4KeyItemSplits", false, "Chapter 4", "MainGameKeyItemSplits");
				settings.Add("Item54630", true, "Lion Ornament", "MainGameC4KeyItemSplits");
				settings.Add("Item530111", true, "Queen's Grail", "MainGameC4KeyItemSplits");
				settings.Add("Item534110", true, "King's Grail", "MainGameC4KeyItemSplits");
				settings.Add("Item547141", true, "Dynamite", "MainGameC4KeyItemSplits");
				settings.Add("Item538123", true, "Key to the Mine", "MainGameC4KeyItemSplits");
				settings.Add("Item539130", true, "Stone of Sacrifice", "MainGameC4KeyItemSplits");
			settings.Add("MainGameC5KeyItemSplits", false, "Chapter 5", "MainGameKeyItemSplits");
				settings.Add("Item775132", true, "Freezer Card Key", "MainGameC5KeyItemSplits");
				settings.Add("Item776146", true, "Waste Disposal Card Key", "MainGameC5KeyItemSplits");
				settings.Add("Item777131", true, "Storage Room Card Key", "MainGameC5KeyItemSplits");
				settings.Add("Item796135", true, "Piece of the Holy Beast, Eagle", "MainGameC5KeyItemSplits");
				settings.Add("Item796134", true, "Piece of the Holy Beast, Serpent", "MainGameC5KeyItemSplits");
				settings.Add("Item807116", true, "Emergency Lock Card Key", "MainGameC5KeyItemSplits");
				settings.Add("Item818136", true, "Jet-ski Key", "MainGameC5KeyItemSplits");

        settings.Add("MainGameEventSplits", false, "Events", "MainGameSplits");
        settings.SetToolTip("MainGameEventSplits", "Check this option if you want to split on Events.");
            settings.Add("MainGameC1EventSplits", false, "Chapter 1", "MainGameEventSplits");
				settings.Add("Event256s03", true, "Meet First Ganado", "MainGameC1EventSplits");
				settings.Add("Event256s20", true, "Defeat First Ganado", "MainGameC1EventSplits");
				settings.Add("Event257s00", true, "Dead Police Officer", "MainGameC1EventSplits");
				settings.Add("Event257s21", true, "Enter a 2-story house", "MainGameC1EventSplits");
				settings.Add("Event257s30", true, "Church's bell rings", "MainGameC1EventSplits");
				settings.Add("Event262s00", true, "Meet Luis", "MainGameC1EventSplits");
				settings.Add("Event260s00", true, "Ganado's QTE", "MainGameC1EventSplits");
				settings.Add("Event260s01", true, "Luis escapes", "MainGameC1EventSplits");
				settings.Add("Event260s10", true, "Meet Merchant", "MainGameC1EventSplits");
				settings.Add("Event261s00", true, "Meet Mendez", "MainGameC1EventSplits");
				settings.Add("Event258s00", true, "Meet Merchant at the cave", "MainGameC1EventSplits");
				settings.Add("Event267s10", true, "Del Lago Fight", "MainGameC1EventSplits");
				settings.Add("Event267s20", true, "Defeat Del Lago", "MainGameC1EventSplits");
				settings.Add("Event267s22", true, "Del Lago's QTE", "MainGameC1EventSplits");
            settings.Add("MainGameC2EventSplits", false, "Chapter 2", "MainGameEventSplits");
				settings.Add("Event283s00", true, "Leon's Nightmare", "MainGameC2EventSplits");
				settings.Add("Event281s00", true, "El Gigante Fight", "MainGameC2EventSplits");
				settings.Add("Event281s20", true, "Defeat El Gigante", "MainGameC2EventSplits");
				settings.Add("Event279s00", true, "Meet Ashley", "MainGameC2EventSplits");
				settings.Add("Event279s10", true, "Meet Saddler", "MainGameC2EventSplits");
				settings.Add("Event284s00", true, "Cabin Fight", "MainGameC2EventSplits");
				settings.Add("Event284s10", true, "Cabin End", "MainGameC2EventSplits");
				settings.Add("Event287s00", true, "Mendez's QTE", "MainGameC2EventSplits");
				settings.Add("Event287s02", true, "Mendez Fight", "MainGameC2EventSplits");
				settings.Add("Event287s10", true, "Defeat Mendez", "MainGameC2EventSplits");
				settings.Add("Event287s11", true, "Obtain False Eye", "MainGameC2EventSplits");
				settings.Add("Event512s00", true, "Escape from village", "MainGameC2EventSplits");
            settings.Add("MainGameC3EventSplits", false, "Chapter 3", "MainGameEventSplits");
				settings.Add("Event515s00", true, "Reunited with Luis", "MainGameC3EventSplits");
				settings.Add("Event513s00", true, "Meet Salazar", "MainGameC3EventSplits");
				settings.Add("Event516s00", true, "Ashley restrained", "MainGameC3EventSplits");
				settings.Add("Event521s00", true, "Meet Salazar at the gallery", "MainGameC3EventSplits");
				settings.Add("Event523s00", true, "Meet Ada", "MainGameC3EventSplits");
				settings.Add("Event518s00", true, "Dead Luis", "MainGameC3EventSplits");
				settings.Add("Event518s10", true, "Shoot the wall clamps", "MainGameC3EventSplits");
				settings.Add("Event518s20", true, "Reunited with Ashley", "MainGameC3EventSplits");
            settings.Add("MainGameC4EventSplits", false, "Chapter 4", "MainGameEventSplits");
				settings.Add("Event530s00", true, "Salazar's trap", "MainGameC4EventSplits");
				settings.Add("Event531s00", true, "Ashley is stolen by Novistadors", "MainGameC4EventSplits");
				settings.Add("Event532s00", true, "Find Ashley with binoculars", "MainGameC4EventSplits");
				settings.Add("Event533s00", true, "Fall down a trap door", "MainGameC4EventSplits");
				settings.Add("Event533s01", true, "Hookshot QTE", "MainGameC4EventSplits");
                settings.Add("Event545_ev", true, "Verdugo spawns", "MainGameC4EventSplits");
				settings.Add("Event555s00", true, "Saddler's order", "MainGameC4EventSplits");
				settings.Add("Event551s00", true, "Verdugo's QTE", "MainGameC4EventSplits");
				settings.Add("Event551s01", true, "Salazar escapes", "MainGameC4EventSplits");
				settings.Add("Event552s00", true, "Salazar Fight", "MainGameC4EventSplits");
				settings.Add("Event554s00", true, "Escape from castle", "MainGameC4EventSplits");
            settings.Add("MainGameC5EventSplits", false, "Chapter 5", "MainGameEventSplits");
				settings.Add("Event768s00", true, "Enter the island", "MainGameC5EventSplits");
				settings.Add("Event772s00", true, "Find Ashley", "MainGameC5EventSplits");
				settings.Add("Event780s00", true, "Reunited with Ashley", "MainGameC5EventSplits");
				settings.Add("Event779s00", true, "Jumping down to the waste disposal", "MainGameC5EventSplits");
				settings.Add("Event790s00", true, "Meet Saddler again", "MainGameC5EventSplits");
				settings.Add("Event778s00", true, "Ada and Krauser", "MainGameC5EventSplits");
				settings.Add("Event791s00", true, "Krauser's QTE", "MainGameC5EventSplits");
				settings.Add("Event795s00", true, "U-3 Fight", "MainGameC5EventSplits");
				settings.Add("Event796s00", true, "Krauser Fight 1", "MainGameC5EventSplits");
				settings.Add("Event796s02", true, "Krauser Fight 2", "MainGameC5EventSplits");
				settings.Add("Event796s01", true, "Krauser Fight 3", "MainGameC5EventSplits");
				settings.Add("Event800s00", true, "Meet Mike", "MainGameC5EventSplits");
				settings.Add("Event801s00", true, "Dead Mike", "MainGameC5EventSplits");
				settings.Add("Event805s00", true, "Leon attacks Ada", "MainGameC5EventSplits");
				settings.Add("Event809s00", true, "Arrived on the laboratory", "MainGameC5EventSplits");
				settings.Add("Event816s00", true, "Plaga Removal", "MainGameC5EventSplits");
				settings.Add("Event817s00", true, "take the Elevator", "MainGameC5EventSplits");
				settings.Add("Event818s00", true, "Saddler Fight", "MainGameC5EventSplits");
				settings.Add("Event818s20", true, "Rocket Launcher (Special)", "MainGameC5EventSplits");
				settings.Add("Event817s10", true, "Escape from island", "MainGameC5EventSplits");
				settings.Add("Event819s00", true, "Jetski speeds up", "MainGameC5EventSplits");

    // Separate Ways
    settings.Add("SeparateWaysSplits", true, "Separate Ways");
        settings.Add("SeparateWaysChapterSplits", true, "Chapters", "SeparateWaysSplits");
        settings.SetToolTip("SeparateWaysChapterSplits", "Check this option if you want to split on Chapters.");
            settings.Add("Chapter21", true, "Chapter 1", "SeparateWaysChapterSplits");
            settings.Add("Chapter22", true, "Chapter 2", "SeparateWaysChapterSplits");
            settings.Add("Chapter23", true, "Chapter 3", "SeparateWaysChapterSplits");
            settings.Add("Chapter24", true, "Chapter 4", "SeparateWaysChapterSplits");

        settings.Add("SeparateWaysKeyItemSplits", false, "Key Items", "SeparateWaysSplits");
        settings.SetToolTip("SeparateWaysKeyItemSplits", "Check this option if you want to split on Key Items.");
			settings.Add("SeparateWaysC1KeyItemSplits", false, "Chapter 1", "SeparateWaysKeyItemSplits");
				settings.Add("Item128059", true, "Insignia Key", "SeparateWaysC1KeyItemSplits");
				settings.Add("Item1282118", true, "Green Catseye", "SeparateWaysC1KeyItemSplits");
				settings.Add("Item128260", true, "Round Insignia", "SeparateWaysC1KeyItemSplits");
			settings.Add("SeparateWaysC2KeyItemSplits", false, "Chapter 2", "SeparateWaysKeyItemSplits");
				settings.Add("Item1288129", true, "Iron Key", "SeparateWaysC2KeyItemSplits");
				settings.Add("Item1291142", true, "Lift Activation Key", "SeparateWaysC2KeyItemSplits");
			settings.Add("SeparateWaysC3KeyItemSplits", false, "Chapter 3", "SeparateWaysKeyItemSplits");
				settings.Add("Item129327", true, "Hourglass w/ gold decor", "SeparateWaysC3KeyItemSplits");
			settings.Add("SeparateWaysC4KeyItemSplits", false, "Chapter 4", "SeparateWaysKeyItemSplits");
				settings.Add("Item129949", true, "Activation Key (blue)", "SeparateWaysC4KeyItemSplits");
				settings.Add("Item129951", true, "Activation Key (red)", "SeparateWaysC4KeyItemSplits");

		settings.Add("SeparateWaysEventSplits", false, "Events", "SeparateWaysSplits");
			settings.Add("SeparateWaysC1EventSplits", false, "Chapter 1", "SeparateWaysEventSplits");
                settings.Add("Event1280_ev", true, "Dr.Salvador spawns", "SeparateWaysC1EventSplits");
				settings.Add("Event1283s00", true, "Church's bell rings", "SeparateWaysC1EventSplits");
			settings.Add("SeparateWaysC2EventSplits", false, "Chapter 2", "SeparateWaysEventSplits");
				settings.Add("Event1286s00", true, "Wesker's order", "SeparateWaysC2EventSplits");
				settings.Add("Event1287s00", true, "Spots the Ganados taking Luis and Leon", "SeparateWaysC2EventSplits");
				settings.Add("Event1286s10", true, "Leon enters the chief's house", "SeparateWaysC2EventSplits");
				settings.Add("Event1286s11", true, "Saves Leon from Mendez", "SeparateWaysC2EventSplits");
				settings.Add("Event1289s00", true, "Meet Luis", "SeparateWaysC2EventSplits");
			settings.Add("SeparateWaysC3EventSplits", false, "Chapter 3", "SeparateWaysEventSplits");
				settings.Add("Event1294s00", true, "Meet Leon", "SeparateWaysC3EventSplits");
				settings.Add("Event1296s00", true, "Spots Leon fighting", "SeparateWaysC3EventSplits");
				settings.Add("Event1292s00", true, "Dead Luis", "SeparateWaysC3EventSplits");
			settings.Add("SeparateWaysC4EventSplits", false, "Chapter 4", "SeparateWaysEventSplits");
				settings.Add("Event1298s00", true, "Ada and Krauser", "SeparateWaysC4EventSplits");
				settings.Add("Event1303s01", true, "Krauser's QTE", "SeparateWaysC4EventSplits");
			settings.Add("SeparateWaysC5EventSplits", false, "Chapter 5", "SeparateWaysEventSplits");
				settings.Add("Event1304s00", true, "Enter the military area", "SeparateWaysC5EventSplits");
				settings.Add("Event1306s00", true, "Leon attacks Ada", "SeparateWaysC5EventSplits");
				settings.Add("Event1308s00", true, "Krauser Fight", "SeparateWaysC5EventSplits");
				settings.Add("Event1308s10", true, "Defeat krauser", "SeparateWaysC5EventSplits");
				settings.Add("Event1309s00", true, "Saddler Fight", "SeparateWaysC5EventSplits");
				settings.Add("Event1310s00", true, "Leon fights Saddler", "SeparateWaysC5EventSplits");

    // Assignment Ada
    settings.Add("AssignmentAdaSplits", true, "Assignment Ada");
        settings.Add("PlagaSampleSplits", true, "Plaga Samples", "AssignmentAdaSplits");
        settings.SetToolTip("PlagaSampleSplits", "Check this option if you want to split on Plaga Samples.");
            settings.Add("Sample1", true, "Plaga Sample 1", "PlagaSampleSplits");
            settings.Add("Sample2", true, "Plaga Sample 2", "PlagaSampleSplits");
            settings.Add("Sample3", true, "Plaga Sample 3", "PlagaSampleSplits");
            settings.Add("Sample4", true, "Plaga Sample 4", "PlagaSampleSplits");
            settings.Add("Sample5", true, "Plaga Sample 5", "PlagaSampleSplits");

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

    // Convert room IDs to short and create a tuple
    Func<int, int, Tuple<short, short>> createRoomIDsTuple = (room1, room2) =>
    {
        return Tuple.Create((short)room1, (short)room2);
    };

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

    // Current Game Mode
    vars.gameMode = vars.gameModes["Idle"];

    // Characters
    vars.characters = new string[] { "Leon", "Ashley", "Ada", "Hunk", "Krauser", "Wesker" };

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
        createRoomIDsTuple(1303, 1304)  // Chapter 4 End
    };

    // Reset variables when the timer is start or reset
    vars.resetVariables = (Action)(() =>
    {
        vars.completedDoors = new HashSet<Tuple<short, short>>(); // Store the rooms passed
        vars.playedCutscenes = new HashSet<string>();             // Store the cutscenes played
        vars.obtainedKeyItems = new HashSet<string>();            // Store the key items obtained
        vars.obtainedPlagaSamples = new HashSet<long>();          // Store the plaga samples obtained
        vars.elapsedFrames = 0;                                   // Frames elapsed with load removed
        vars.chapterInvCount = 0;                                 // Inventories opened in chapter
        vars.totalInvCount = 0;                                   // Inventories opened in total
        vars.inventoryTime = new Stopwatch();                     // Inventory Time

        // Debug
        vars.doorLoadTime = new Stopwatch();
        vars.menuLoadTime = new Stopwatch();
        vars.cutsceneTime = new Stopwatch();
    });
    vars.resetVariables();
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
    var componentMenuLoads = vars.updateTextComponent("Menu Loads");
    var componentCutscenes = vars.updateTextComponent("Cutscenes");
    var componentFrames = vars.updateTextComponent("Frames");
    componentDoorLoads.Text2 = vars.doorLoadTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");
    componentMenuLoads.Text2 = vars.menuLoadTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");
    componentCutscenes.Text2 = vars.cutsceneTime.Elapsed.ToString("hh\\:mm\\:ss\\.ff");
    componentFrames.Text2 = vars.elapsedFrames.ToString();

    // Door Loads and Options
    bool isDoorLoads = current.screenState != 3;

    // Menu Loads
    bool isMenuLoads = current.screenTransition == 2 && current.menu != 0;

    // Cutscenes
    bool isCutscenes = current.isMovie || current.isCutscene || current.isMiniCutscene || current.isContact;

    // Add load removal frames
    if (!isDoorLoads && !isMenuLoads && !isCutscenes)
    {
        vars.elapsedFrames += current.totalFrames - old.totalFrames;
    }

    // Debug Timers
    if (isDoorLoads) vars.doorLoadTime.Start();
    else vars.doorLoadTime.Stop();

    if (isMenuLoads) vars.menuLoadTime.Start();
    else vars.menuLoadTime.Stop();

    if (isCutscenes) vars.cutsceneTime.Start();
    else vars.cutsceneTime.Stop();

    // Show DA
    if (current.da != old.da && settings["ShowDA"])
    {
        // Initialize DA
        short maxDA = 10999;
        double calcDA = 0;
        string difficultyName = "";

        // Calculation of DA
        byte difficulty = current.difficulty;
        switch (difficulty)
        {
            case 1:
                short amateurMaxDA = 3999;
                calcDA = Math.Floor(current.da / ((double)maxDA / amateurMaxDA));
                difficultyName = "Amateur";
                break;

            case 3:
                short easyMaxDA = 5999;
                calcDA = Math.Floor(current.da / ((double)maxDA / easyMaxDA));
                difficultyName = "Easy";
                break;

            case 5:
                calcDA = current.da;
                difficultyName = "Normal";
                break;

            case 6:
                calcDA = current.da;
                difficultyName = "Pro";
                break;
        }

        // Update the text
        var componentDA = vars.updateTextComponent("DA");
        componentDA.Text2 = string.Format("{0} ({1})", calcDA, difficultyName);
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

    // Show Inventory Count
    if (settings["ShowInventoryCount"])
    {
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
        if (current.screenTransition > old.screenTransition && old.screenTransition == 0)
        {
            vars.inventoryTime.Stop();
        }
    }

    // Return to the main menu when the F10 key is pressed
    if (current.f10Key && !old.f10Key && settings["SoftReset"])
    {
        IntPtr baseAddress = modules.First().BaseAddress;
        IntPtr targetAddress = version == "1.1.0" ? baseAddress + 0x85A7B7 : baseAddress + 0x856F37;
        game.WriteBytes(targetAddress, new byte[] { 0x4 });
    }
}

onStart
{
    // Initialize variables on start
    vars.resetVariables();
}

start
{
    // Check to see if Main Game is running
    if (!current.isMovie && old.isMovie && vars.characters[current.character] == "Leon" && current.room == 288 && settings["MainGameSplits"])
    {
        vars.gameMode = vars.gameModes["MG"];
        return true;
    }

    // Check to see if Separate Ways is running
    if (current.menu == 0 && old.menu == 2 && vars.characters[current.character] == "Ada" && current.room == 1280 && settings["SeparateWaysSplits"])
    {
        vars.gameMode = vars.gameModes["SW"];
        return true;
    }

    // Check to see if Assignment Ada is running
    if (!current.isSubtitle && old.isSubtitle && vars.characters[current.character] == "Ada" && current.room == 288 && settings["AssignmentAdaSplits"])
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

    // Split at the bridge door after reunited with Ashley (For No Merchant Category)
    if (current.room == 518 && old.room == 527 && current.chapter == 10 && vars.gameMode == vars.gameModes["MG"] && settings["DoorSplits"])
    {
        return true;
    }

    // Main Game Ending
    if (current.cutscene != old.cutscene && cutsceneId == "819s10" && vars.gameMode == vars.gameModes["MG"])
    {
        return true;
    }

    // Separate Ways Ending
    if (current.cutscene != old.cutscene && cutsceneId == "1310s10" && vars.gameMode == vars.gameModes["SW"])
    {
        return true;
    }

    // Assignment Ada Ending
    if (current.cutscene != old.cutscene && cutsceneId == "1038s00" && vars.gameMode == vars.gameModes["AA"])
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
    return TimeSpan.FromSeconds((double)vars.elapsedFrames / current.frameRate);
}

onReset
{
    // Set game mode to Idle
    vars.gameMode = vars.gameModes["Idle"];

    // Initialize variables on reset
    vars.resetVariables();
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

exit
{
    // Reset the timer when exit the game
    if (timer.CurrentPhase != TimerPhase.Ended)
    {
        vars.timerModel.Reset();
    }
}