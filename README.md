# Crimson-Desert

This version is abandoned as the game had a major update which introduced a brand new marketing system, as a result, some of the fundamental strutures were also affected such as ItemData_table and its related offsets.

The reason for this is most likely because the developers want to make the game to run more smoothly by reducing the amount of data needed to be updated/processed in realtime.

I am planning to rewrite the whole thing with a custom menu and hook instead of using Imgui and MinHook.

P.S. this version might be abandoned but other game functions should still be working after commenting out some marketing related functions.

# update as of 11/06/2019
This repo is now made public for educational purposes, there are additional verfication checks the game does to check if anything suspicious is running in the background, checking for any tools which are altering the way how the game is meant to be played, therefore, please do not use it in the actual game.

# Features:

* Pretty much everything that can be modified/automated cliently, short of packet(s) sniff/editing.

* Convert view matrix (a 4 by 4 matrix represents in game camera) to 2D coordinace which can then be drawn on screen for ESP(Extra Sensory Perception).

* Automate your grind include beating monsters; lifeskill such as gathering, processing, fishing, etc.

* Modify the movement/attack speed of self-character(s) and mount(s), teleportation, etc.

* Custom Lua script injection, modify existing Lua script.

* Skip tidious parts of minigames for quicker completion

# Demostration:

[modify character attack speed (click me to view the clip)](https://streamable.com/vzm28)

![modify character attack speed](https://lh3.googleusercontent.com/aYYtKUoMiFdfUOkdYvvvvrjL411zZihup5HzXIyqDLi7VVtRYyoWQrIr0mjJSDojrb7q9YhD90jiZiUVBrdVDEQTfuKGXDnJeN5wL1f6R7FL2IcElyTBL50VSWlKaAqqXCk1X5VKSA=w150-h90-no)

[modify character movement speed (click me to view the clip)](https://streamable.com/j52m0)

![modify character movement speed](https://lh3.googleusercontent.com/LW9D78KDb4xNm95_FHDzH-d1fLITOD-SkTqEytX5gKZ0CstXSOig5mF8gOai2AzDhU_I_wKFLjI2ptXbTaWGk3kdsk9I-XZraM9aD5hgDZJKWQSJdIpG37NAwNqh5TteSQ1e8cWVsQ=w150-h89-no)

[teleport character (click me to view the clip)](https://streamable.com/nxqa9)

![teleport character](https://lh3.googleusercontent.com/5SPbgf8XogWGdDSvqzrgihx3L8iDfGqKMCKJvvDV5RoTrb65bmlvzw57WUP2dS3hZ6JwVi3DbqZuYzgSQwIteQfKttlLZb0ssRf0Lc0HqTBJlRyjFvxNMCjUVEe92DZAAsNvhHlIWw=w150-h122-no)

ESP (Extra Sensory Perception), allow hidden information to be viewed by the player(s) by monitoring the game data in computer's memory to determine the locations and status of objects of interest in the game, whether they’re items on the ground, NPCs in the game world, or other players.

ESP OFF

![ESP OFF](https://lh3.googleusercontent.com/hR0Q3hvL5MGd-wS4c8ALi2sID6k4eGNXYUkXixq03wIU755iLU9oriHz5XRPIH874hhRXiSIqrQ2D9Z6oxcWFomd_whmfysPigHKEVYoQ7prowvZtk3s8zAXsmUh7Q8R5DYEuGrkNg=w1440-h811-no)

ESP ON

![ESP ON](https://lh3.googleusercontent.com/P0_QMF5k9S3nsxek4TefC64JU62zcrMKIyEN_GpqgFCd6D0WOdhslwb0kICJsB-yMkeqsmz-_mUxRZCJCUJXDLzhjRD23jJuEs1y4Hpr8d2VuaXkKGXxSSeHmEL78l9icSJfBV0KZA=w1440-h815-no)
