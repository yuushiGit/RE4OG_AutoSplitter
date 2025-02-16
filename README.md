# RE4Splitter documentation

## For runners

This autosplitter and load remover has the following features:

-   Works for all categories and framerates in the game:
    -   Main Game (New Game, New Game+, No Merchant).
    -   Ada (Assignment Ada, Separate Ways, Separate Ways+).
    -   Works for both 30 FPS and 60 FPS.
-   Can **split** on:
    -   Doors.
    -   Chapter ends.
    -   Events.
    -   Key items.
    -   Plaga Samples (Assignment Ada).
-   Will not split on rooms that have already been visited except for specific ones that we visit more than once in the run (depending on the category we're running).
-   **Starts** automatically.
-   **Stops** automatically during loading times.
-   **Stops** automatically when you pause the game (by opening the options menu).
-   **Stops** automatically during the two tutorial screens in the Main Game.
-   Ties the **time to the frames of the game**, which means if you drop FPS, the timer slows down in response, eliminating unfair timeloss due to framedrops.
-   Has a setting for **Segmented** practice, that makes the timer start when loading any save, if you're loading from the main menu.
-   Has many **SRT text variables** that provide useful information about the run and can be enabled or disabled through the settings:
    -   Once one of these ones is enabled, for the text to get created automatically on your layout, you need to go in-game and make the **value** of that variable **change** in-game. For example, for "Money", picking up a money drop or selling/buying something in the merchant will cause the text variable to get created on the layout automatically.
    -   Once created, the text variables will work indefinitely as long as they aren't deleted from your layout and you don't disable them in the settings.
    -   **NOTE**: One of the SRT text variables is Pause Buffer Count and it is created automatically on your layout after you pause buffer in-game. This counter cannot be enabled or disabled because it is required to be shown in submissions due to the game's rules on speedrun.com.

## For developers

### State variables

| Variable         | Description                                                                                                                                                                                                                                                                                                                             |
| ---------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| frameRate        | The selected framerate on the video settings. Can be 30 or 60.                                                                                                                                                                                                                                                                          |
| totalFrames      | The game's current frame, constantly looping.                                                                                                                                                                                                                                                                                           |
| menuType         | The type of menu we are in. 128 when we enter the treasures menu through interacting with a door, 64 when we are in a tutorial screen, 32 when we are in a radio call, 16 when we are in the merchant, 4 when an item pickup prompt is on screen, 2 when we are on the map screen, 1 when we are in the inventory, 0 when none of them. |
| character        | 5 when we are playing as Wesker, 4 when we are playing as Krauser, 3 when we are playing as Hunk, 2 when we are playing as Ada, 1 when we are playing as Ashley, 0 when we are playing as Leon.                                                                                                                                         |
| chapter          | [The ID of the current chapter.](https://docs.google.com/spreadsheets/d/1dw5leSHZ0XiCvP7afODyuC10RbykQeopfjoh7mBEeHY/edit?usp=sharing)                                                                                                                                                                                                  |
| item             | [The ID of the key item being picked up.](https://docs.google.com/spreadsheets/d/16VzcxmYCJKCEf0td7Yvo-Efhnkqh5WDnmo8fFfmdjV8/edit?usp=sharing)                                                                                                                                                                                         |
| room             | [The ID of the room we are currently in.](https://docs.google.com/spreadsheets/d/1ns55W9sTYKjG4NwtoP06d_6Grt-ZZULJaADKfU9qabc/edit?usp=sharing)                                                                                                                                                                                         |
| igt              | The current In Game Time.                                                                                                                                                                                                                                                                                                               |
| movie            | The ID of the pre-rendered cutscenes.                                                                                                                                                                                                                                                                                                   |
| cutscene         | The ID of the realtime rendering cutscenes.                                                                                                                                                                                                                                                                                             |
| screenState      | 6 when we are in the options menu, 4 when a loading begins, 2 when the loading is halfway through, 3 when the loading has finished, 1 when a "stage" is loading.                                                                                                                                                                        |
| screenTransition | 0-255. 0 when we are in the normal screen, 255 when we are in the blackscreen.                                                                                                                                                                                                                                                          |
| sample           | Plaga samples in Assignment Ada. The value increases as samples are obtained.                                                                                                                                                                                                                                                           |
| isMissionText    | 1 while Assignment Ada's initial mission objective text is displayed, 0 after it's skipped.                                                                                                                                                                                                                                             |
| difficulty       | 1 for Amateur, 3 for Easy, 5 for Normal, 6 for Professional.                                                                                                                                                                                                                                                                            |
| da               | Current difficulty adjustment value.                                                                                                                                                                                                                                                                                                    |
| health           | Health value of the current main character.                                                                                                                                                                                                                                                                                             |
| chapterKills     | Total kills so far in the current chapter.                                                                                                                                                                                                                                                                                              |
| totalKills       | Total kills so far in the whole game.                                                                                                                                                                                                                                                                                                   |
| money            | How much money the player has.                                                                                                                                                                                                                                                                                                          |
