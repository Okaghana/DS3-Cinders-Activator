# DS3 Cinders-Manager
This AutoHotkey-Script manages your savefiles, so that you can have two different groups of Characters, one for the Base game and one for the Cinders mod. It also (de)activates the mod automatically. This gives you a way to switch between the Basegame and the modded version with a single click without visiting the gamedirectories and doing it manually.


## Setup
  1) For this to work you need to install AutoHotkey on you system. You can download it [here](https://www.autohotkey.com/)
  2) You also already should have installed the Cinders-mod, although you don't actually need to have it run. The mod expects you to be in the state of the unmodded game. If you have already moved your savegames, I advise you to establish the filestructure shown below.
  3) After that you need to download the .ahk file and move it to a desired place, preferably somewhere where its easy to activate. Instead of downloading it here you can also download it [on nexusmods](https://www.nexusmods.com/).
  4) Edit the script. You can either rightclick it and select "Edit Script", or open it with a texteditor of your choice. Here you need to enter 3 things at the top of the file:
  
- AppDataLocation := `Here goes the DarkSouls location in you appdata folder. Normally it should be in C:\Users\*Username*\AppData\Roaming\DarkSoulsIII, which is the default location from the start`
- GameLocation := `Here goes the location of "Game"-folder in the Dark Souls 3 folder. Normally it should be in C:\Program Files (x86)\Steam\steamapps\common\DarkSoulsIII\Game, which is the default location from the start`
- SavegameName := `Here goes the name of the subdirectory, in which your savegame is stored. You can find it in AppDataLocation. The name varies from person to person and should look something like this: 011000010db4ms7h9`
  
  Please don't edit anything else of the scipt, for it being the executing part of it

After that the script should be ready to go!
