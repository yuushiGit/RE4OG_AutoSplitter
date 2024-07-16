# RE4Splitter documentation

## State variables

| Variable | Description |
| --- | --- | 
| frameRate | The selected framerate on the video settings. Can be 30 or 60. | 
|totalFrames | The game's current frame, constantly looping. |
|menuType| The type of menu we are in. 128 when we enter the treasures menu through interacting with a door, 64 when we are in a tutorial screen, 2 when we are on the map screen, 1 when we are in the inventory, 0 when none of them.|
|character |5 when we are playing as Wesker, 4 when we are playing as Krauser, 3 when we are playing as Hunk, 2 when we are playing as Ada, 1 when we are playing as Ashley, 0 when we are playing as Leon.|
|chapter|0-18. 0 is chapter 1-1, 18 is chapter 6-1.|
|item | The ID of the key item being picked up. |
| room | The ID of the room we are currently in. | 
| igt | The current In Game Time. |
| isEndOfChapter | 1 if we are in an end of chapter screen, 0 otherwise.
| isQTE | 1 if we are in a QTE, 0 otherwise. |
| movie | Pre-Rendered Cutscenes in playback? | 
| cutscene | Realtime Rendering Cutscenes in playback? | 
| isMovie | Pre-Rendered Cutscenes? |
| isCutscene | Realtime Rendering Cutscenes? | 
| isMiniCutscene | Mini Cutscenes? | 
| eventType | 3 when we are in an unskippable cutscene such as Krauser Cutscene, 1 when the HUD at the bottom right disappears, 0 in normal gameplay.
| isRadioCall | 10 when we are in a radio call with Hunnigan, Salazar or Saddler, otherwise 0. |
|screenState| 6 when we are in the options menu, 4 when a loading begins, 2 when the loading is halfway through, and 3 when the loading has finished. |
| screenTransition | ? |
| sample | Assignment Ada? |
| isMissionText | 1 while Assignment Ada's initial mission objective text is displayed, 0 after it's skipped. |
| difficulty | 1 for Amateur, 3 for Easy, 5 for Normal, 6 for Professional. |
| da | Current difficulty adjustment value. |
| health | Health value of the current main character. | 
| chapterKills | Total kills so far in the current chapter. | 
| totalKills | Total kills so far in the whole game. |
| money | How much money the player has. |
| F10Key | The F10 key on the keyboard. |
