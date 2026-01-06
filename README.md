# Lost Traveller Skin Suite v1.0

## 🌌 Overview
**Lost Traveller** is a minimalist, sci-fi inspired Rainmeter suite designed with a **"Retro Terminal"** aesthetic. It uses the *VCR OSD Mono* typeface and a high-contrast color palette to evoke the feeling of a lonely wanderer’s ship console. The suite provides essential system information, time tracking, and atmospheric elements through a clean, low-fi interface.

---

## 🛠 Core Components
* **Time & Moon Phase (`time.ini`):** A large digital clock with a dynamic moon phase tracker that calculates the current lunar cycle using 8-phase Unicode icons.
* **Ship Status (`storage.ini`):** Monitors vital system resources (CPU and RAM) rebranded as **"Power Core"** and **"Life Support"** to fit the theme.
* **Communication Log (`quotes.ini`):** A randomized text bubble that displays atmospheric, melancholic quotes (*"drifting between stars"*, *"the moon waits..."*).
* **Navigation Calendar (`calendar.ini` & `Script.lua`):** A functional grid calendar driven by a Lua engine that automatically highlights the current solar day.
* **Media Relay (`player.ini`):** A sleek music controller with progress tracking and metadata display, supporting major media players via the *NowPlaying* measure.

---

## 🔬 Technical Analysis
The suite is built on a modular logic:

1.  **Visual Consistency:** All skins share a unified variable system for colors (Ice Blue, Dim Gray, and Orange Accents) and scaling, making it easy to globalize changes.
2.  **Logic-Heavy:** The calendar relies on a `Script.lua` file to handle date calculations, ensuring accuracy without heavy CPU overhead.
3.  **Vector Shapes:** Uses Rainmeter’s **Shape meters** (in `quotes.ini` and `player.ini`) to create clean, scalable UI elements without relying on heavy external image assets.

---

## 💡 Optimization Note (Call to Action)
> [!IMPORTANT]
> **Current State:** The suite is currently in a **"Static Display"** phase. Every module is independent, meaning users must manually drag and align them to fit their desktop layout.

**Future Potential:** I highly encourage users to dive into the `[Variables]` section or experiment with **Layout files**. There is significant room to implement:
* **Auto-Grouping:** Snap modules together.
* **Anchor-based positioning:** Use `X` and `Y` coordinates relative to the screen or other skins to automate the setup process.
* **Pixel-perfect Alignment:** Ensure a consistent "Ship Console" look on any resolution.

---
*Developed for the wandering souls in the digital void.*
