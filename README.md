# Chicken-Invaders-Autosplitters
Autosplitters used in the Chicken Invaders series speedrun.

Made by Patras Ionut-Marcelin

These are custom [ASL](https://github.com/LiveSplit/LiveSplit.AutoSplitters) scripts for [LiveSplit](https://livesplit.org/), designed to automate starting, splitting and resetting for Chicken Invaders 4 and Chicken Invaders 5.

###    Features:
- Auto-start: Happens at the end of the first cutscene (at the same time as the run is being timed according to the [src.com](https://www.speedrun.com/series/ci) rules of the game)

- Auto-split: The script keeps track of the wave number in-game, splitting when the value increases.

- Auto-reset: Happens at the very start of the first cutscene when starting a new game.

###	Variables:

- InCutscene: Tracks the game's current cinematic state. It has the value of 16 during only the first cutscene

- waveNumber: Tracks the current wave the player is on.
    
### Key differences between CI4 and CI5:

Overall the logic is the same between the games but,

In CI5 the final split (final speedrun time) will trigger around 14 seconds after it should according to the rules so manual splitting is required here (or let the src.com moderators re-time it afterwards).

note: The script was made in **2021** and it may not work on newer versions of the game.