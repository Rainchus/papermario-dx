#ifndef DX
#define DX

/// Enables the debug menu.
#define DX_DEBUG_MENU 1

/// Skips logos (Nintendo, Intelligent Systems, etc.).
#define DX_SKIP_LOGOS 1

/// Skips the title screen.
#define DX_SKIP_TITLE 1

/// Skips the file select.
/// If a save file exists, the game will load it automatically, otherwise it will start a new game.
#define DX_SKIP_FILE_SELECT 0

/// Map to load when starting a new game.
#define NEW_GAME_MAP_ID "nok_11"

/// Entry to use when starting a new game.
#define NEW_GAME_ENTRY_ID 0

/// Story progress when starting a new game.
#define NEW_GAME_STORY_PROGRESS 0xA0

/// Enables the profiler, which shows lots of performance info on screen.
/// Press L + D-Pad Up to show/hide the profiler.
#define USE_PROFILER 1

#define NORMAL_PARTNERS 1  //except goompa(5), goombaria(10), and twink(11)
#define ALL_PARTNERS 2

#define GIVE_ALL_PARTNERS NORMAL_PARTNERS

#define GIVE_PLAYER_STARTING_EQUIPMENT 1

#define FASTER_HEALING_TICK_UP 1

#endif
