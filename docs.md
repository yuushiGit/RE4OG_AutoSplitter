# RE4Splitter documentation

## State variables

| Variable | Description |
| --- | --- |
| frameRate | The selected framerate on the video settings. Can be 30 or 60. |
|totalFrames | The game's current frame, constantly looping. |
|menuType| The type of menu we are in. 128 when we enter the treasures menu through interacting with a door, 64 when we are in a tutorial screen, 2 when we are on the map screen, 1 when we are in the inventory, 0 when none of them.|
|character |5 when we are playing as Wesker, 4 when we are playing as Krauser, 3 when we are playing as Hunk, 2 when we are playing as Ada, 1 when we are playing as Ashley, 0 when we are playing as Leon.|
|chapter| [The ID of the current chapter.](https://docs.google.com/spreadsheets/d/1dw5leSHZ0XiCvP7afODyuC10RbykQeopfjoh7mBEeHY/edit?usp=sharing) |
|item | [The ID of the key item being picked up.](https://docs.google.com/spreadsheets/d/16VzcxmYCJKCEf0td7Yvo-Efhnkqh5WDnmo8fFfmdjV8/edit?usp=sharing) |
| room | [The ID of the room we are currently in.](https://docs.google.com/spreadsheets/d/1ns55W9sTYKjG4NwtoP06d_6Grt-ZZULJaADKfU9qabc/edit?usp=sharing) |
| igt | The current In Game Time. |
| isEndOfChapter | 1 if we are in an end of chapter screen, 0 otherwise.
| isQTE | 1 if we are in a QTE, 0 otherwise. |
| movie | The ID of the pre-rendered cutscenes. |
| cutscene | The ID of the realtime rendering cutscenes. |
| isMovie | 1 if we are in the pre-rendered cutscenes, 0 otherwise. |
| isCutscene | 1 if we are in the realtime rendering cutscenes, 0 otherwise. |
| isMiniCutscene | 1 if we are in the mini cutscenes, 0 otherwise. |
| isEvent | 3 when we are in an unskippable cutscene such as Krauser Cutscene, 1 when the HUD at the bottom right disappears, 0 in normal gameplay.
| isRadioCall | 10 when we are in a radio call with Hunnigan, Salazar or Saddler, otherwise 0. |
| screenState| 6 when we are in the options menu, 4 when a loading begins, 2 when the loading is halfway through, and 3 when the loading has finished. |
| screenTransition | 0-255. 0 when we are in the normal screen, 255 when we are in the blackscreen. |
| sample | Plaga samples in Assignment Ada. The value increases as samples are obtained. |
| isText | 1 when a text is displayed on screen, 0 after it's skipped. |
| difficulty | 1 for Amateur, 3 for Easy, 5 for Normal, 6 for Professional. |
| da | Current difficulty adjustment value. |
| health | Health value of the current main character. |
| chapterKills | Total kills so far in the current chapter. |
| totalKills | Total kills so far in the whole game. |
| money | How much money the player has. |
