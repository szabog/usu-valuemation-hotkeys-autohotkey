<h1 align="center">Collection of AutoHotkey Scripts for USU Valuemation</h1>

## 1. Project Introduction

This repository is a collection of AutoHotkey scripts that I use at my job while working as a 1st-level IT service desk agent. My job includes spending hours in different ITSM tools, most notably the ticketing system called USU Valuemation (or simply ‘USU‘). The scripts of this repository help to make my day-to-day job easier and promote a more keyboard oriented workflow by utilising keyboard hotkeys to quickly access various features of USU. It is accessed in a web browser and lacks any keyboard hotkeys by design.

I want to put a disclaimer here and say that I am not a professional programmer or AutoHotkey user, so bear with me on the quality of the source code.

## 2. Installation

This project does not ship AutoHotkey binary files. You have to manually download and install them from [AutoHotkey.com](https://autohotkey.com/). Please note, the scripts of this repository have only been tested with AutoHotkey version 1.1 (also known as ‘AutoHotkey_L’).

Once you have installed AutoHotkey, follow these instructions:

1. Download the contents of repository using *Download ZIP*.

2. Extract the zip archive and move the `Scripts` folder to AutoHotkey's installation folder (e.g. `C:\Program Files\AutoHotkey`).

3. Create a shortcut of AutoHotkey's binary executable file (`AutoHotkeyU64.exe`).

4. Go into the shortcut's *Properties*.

5. Add the location of `main.ahk` (inside the `Scripts` folder) to *Target* (e.g. `"C:\Program Files\AutoHotkey\AutoHotkeyU64.exe" "C:\Program Files\AutoHotkey\Scripts\main.ahk"`). Do not delete the path to the executable binary!

## 3 Paths and File Names

```
Scripts/
├── main.ahk
└── USU-Valuemation/
    ├── hotkeys-main.ahk
    └── modules/
        ├── global-functions.ahk
        ├── hotkeys-cataglo.ahk
        ├── hotkeys-sidebar.ahk
        ├── hotkeys-text-templates.ahk
        └── hotkeys-ticket.ahk
```

`Scripts\main.ahk` configures the general behaviour of AutoHotkey and the script it loads. It loads `USU-Valuemation\hotkeys-main.ahk` which is the soul of the hotkeys for USU Valuemation. The functions of the hotkeys are broken down into additional AHK files.

`USU-Valuemation\hotkeys-main.ahk` contains which keys the shortcut functions are mapped to. It also loads 5 subsequent scripts containing the commands that the hotkeys execute:

* `USU-Valuemation\global-functions.ahk` contains functions that must be accessible to all AHK scripts.

* `USU-Valuemation\hotkeys-catalog.ahk` contains actions inside the Workplace/Catalog area of USU Valuemation.

* `USU-Valuemation\hotkeys-sidebar.ahk` contains actions inside the Side Bar area USU Valuemation.

* `USU-Valuemation\hotkeys-text-templates.ahk` contains text templates for USU Vauemation new ticket descriptions, instructions for other support groups when assigning a ticket, and when a user receives a strike.

* `USU-Valuemation\hotkeys-ticket.ahk` contains actions inside the Ticket area (which is inside the Workplace) of USU Valuemation.

## 4. Frequently Asked Questions (FAQ)

**1. Why do you use hotkeys instead of hotstrings?**

I use a program called [EPKL/EPiKaL Portable Keyboard Layout](https://github.com/DreymaR/BigBagKbdTrixPKL) to emulate [my keyboard layout](https://github.com/szabog/colemak-wide-epkl). For unknown reasons (by me), AutoHotkey and EPiKaL do not like each other very much and therefore AutoHotkey refuses to recognise any hotstrings as long as EPiKaL is active.

I can't afford to deactivate EPiKaL only to type in some hotstring text, so I'm not planning to write AutoHotkey scripts using hotstrings; however, you're welcome to do so. You're also welcome to modify my scripts to use hotstrings instead of hotkeys under the license's permissions.

**2. Why do you use screen coordinates instead of other methods?**

With my limited time of experiencing with AutoHotkey's capabilities, and deciding the quickest way to use scripts to do what I want them to do, using screen coordinates won. I had looked into [iWB2 Learner](https://autohotkey.com/board/topic/84258-iwb2-learner-iwebbrowser2/) and similar tools which worked perfectly... in Internet Explorer. I mainly use Mozilla Firefox (version 79+), and I couldn't figure out (basically because I wasn't really bothered to do so) why IWB2 Learner didn't want to recognise DOMs in Firefox; additonally, why the AutoHotkey scripts refused to execute the commands in Firefox that I had programmed them to do in Explorer.

Screen coordinates work reliable 100% of the time which is a must for me.

**3. Are Linux and macOS supported?**

The scripts by themselves are operating system independent. OS compatibility relies on the AutoHotkey software, which, as of currently, does not support Linux and macOS. There are some ports/alternatives: [IronAHK](https://github.com/Paris/IronAHK) (Linux X11), [AutoKey](https://github.com/autokey/autokey) (Linux X11), [Keyboard Maestro](http://www.keyboardmaestro.com/main/) (macOS 10.11+), [Hammerspoon](http://hammerspoon.org/) (macOS 10.14+).

Some of these alternative programs may be using a scripting language other than AutoHotkey, but you're welcome to use my scripts as reference points (for the coordinates for example).

**4. Why is there so much repetition in the source files?**

All shortcut commands are executed using the same method. I basically copy-pasted the working codes and only modified what was necessary to be modified in order to make pasted code to execute the function it's supposed to run.

**5. What license do you use?**

MIT License. View `LICENSE` to read the full license text.