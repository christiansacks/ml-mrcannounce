# Installation:

## Pre-requisites:
Requires MRC to be installed on the BBS

## Instructions
Copy the script (.bat for Windows or .sh for Linux) to your theme's scripts folder i.e.

```
Windows: C:\MYSTIC\THEMES\DEFAULT\SCRIPTS 
  Linux: /mystic/themes/defaut/scripts
```

Then in Mystic CFG utility add a new item in the prelogin menu;

For Windows:
```
   Command: (DD) Exec external program
      Data: C:\MYSTIC\THEMES\DEFAULT\SCRIPTS\ml-mrcannounce.bat %U
    Access: !OI
Grid Event: Selected
```

For Linux:
```
   Command: (DD) Exec external program
      Data: /mystic/themes/defaut/scripts/ml-mrcannounce.sh %U
    Access: !OI
Grid Event: Selected
```

I set "Access" to `!OI` so that if the user signing in has the option for invisible
login available, and they choose to be invisible, it will not run the script.

That's all folks! Enjoy.
