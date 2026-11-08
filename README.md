<!-- SEO Metadata -->
<meta name="description" content="Pinkie Terminal — Pastel-pink terminal color schemes for Windows Terminal, Alacritty, WezTerm, and Starship prompt.">
<meta name="author" content="cmduyeen">

<p align="center">
  <img src="logo.svg" alt="Pinkie Terminal" width="130" />
</p>

<h1 align="center">Pinkie Terminal</h1>

<p align="center">
  Soothing pastel-pink terminal color schemes and configurations for Windows Terminal, Alacritty, WezTerm, and Starship.
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-FFD1DC?style=flat" alt="License" /></a>
  <img src="https://img.shields.io/badge/Version-1.0.0-FFF0F5?style=flat&logoColor=D4698B" alt="Version" />
  <a href="https://github.com/cmduyeen/pinkie-theme"><img src="https://img.shields.io/badge/Ecosystem-Pinkie-D44B8B?style=flat" alt="Ecosystem" /></a>
  <a href="https://github.com/cmduyeen"><img src="https://img.shields.io/badge/Author-cmduyeen-FFEFF6?style=flat&logoColor=D4698B" alt="Author" /></a>
</p>

---

### 🌸 Philosophy

**Pinkie** pairs soothing pastel pinks with gentle soft whites — crafted for pink lovers seeking a calm, aesthetic workspace.

- **Calmness** 🌸 — Soft pink tones naturally soothe the nervous system, reducing tension during long hours.
- **Positivity** 💖 — Evokes a light, uplifting mood that brings subtle joy to your daily workflow.
- **Ergonomics** 🌿 — Delicate contrast eliminates screen glare, keeping your eyes refreshed and relaxed.

---

### 🎨 Color Palette

<details open>
<summary><b>Surfaces & Base</b></summary>
<br>

| <img src="https://img.shields.io/badge/-%23fffdfd-fffdfd?style=flat-square" /> | <img src="https://img.shields.io/badge/-%23fff6fa-fff6fa?style=flat-square" /> | <img src="https://img.shields.io/badge/-%23ffeff6-ffeff6?style=flat-square" /> | <img src="https://img.shields.io/badge/-%23f1d3e2-f1d3e2?style=flat-square" /> | <img src="https://img.shields.io/badge/-%23453b43-453b43?style=flat-square" /> | <img src="https://img.shields.io/badge/-%23786c76-786c76?style=flat-square" /> |
| :---: | :---: | :---: | :---: | :---: | :---: |
| **Canvas**<br>`#fffdfd` | **Surface**<br>`#fff6fa` | **Elevated**<br>`#ffeff6` | **Border**<br>`#f1d3e2` | **Text**<br>`#453b43` | **Muted**<br>`#786c76` |

</details>

<details open>
<summary><b>Accents & Syntax</b></summary>
<br>

| <img src="https://img.shields.io/badge/-%23d44b8b-d44b8b?style=flat-square" /> | <img src="https://img.shields.io/badge/-%23c4377a-c4377a?style=flat-square" /> | <img src="https://img.shields.io/badge/-%236a5acd-6a5acd?style=flat-square" /> | <img src="https://img.shields.io/badge/-%23c71d5f-c71d5f?style=flat-square" /> | <img src="https://img.shields.io/badge/-%23b21f5f-b21f5f?style=flat-square" /> | <img src="https://img.shields.io/badge/-%23a84079-a84079?style=flat-square" /> | <img src="https://img.shields.io/badge/-%232f9e88-2f9e88?style=flat-square" /> | <img src="https://img.shields.io/badge/-%23ff7a59-ff7a59?style=flat-square" /> |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Primary**<br>`#d44b8b` | **Rose**<br>`#c4377a` | **Lavender**<br>`#6a5acd` | **Berry**<br>`#c71d5f` | **Magenta**<br>`#b21f5f` | **Plum**<br>`#a84079` | **Mint**<br>`#2f9e88` | **Coral**<br>`#ff7a59` |

</details>

---

### 💻 ANSI Color Mapping Table

| ANSI Slot | Color Role | Hex Code | Terminal Usage |
| :--- | :--- | :---: | :--- |
| **Black / FG** | Deep Cocoa Mauve | #453B43 | Primary text and standard commands |
| **Bright Black**| Rose Dust Grey | #8B6A7A | Comments, timestamps, path details |
| **Red** | Rose Crimson | #C71D5F | Errors, deletions, syntax red |
| **Green** | Mint Pastel | #2F9E88 | Success states, git additions, active path |
| **Yellow** | Peach Coral | #FF7A59 | Warnings, branch highlights |
| **Blue** | Sky Blue | #3B82F6 | Directories, URLs, hyperlinks |
| **Magenta** | Pinkie Accent | #D44B8B | Commands, primary prompt symbols |
| **Cyan** | Lavender | #6A5ACD | Keywords, operators, specials |
| **White** | Border White | #E8BDD6 | Delimiters, borders |

---

### 📦 Installation

#### Automated Setup (Windows Terminal):
Run the bundled PowerShell automation script to cleanly install and activate Pinkie:
`powershell
powershell -ExecutionPolicy Bypass -File .\apply-theme.ps1
`

#### Alacritty:
Import the scheme in your lacritty.toml:
`	oml
import = ["path/to/pinkie/alacritty.toml"]
`

#### WezTerm:
Reference [wezterm.lua](wezterm.lua) inside your ~/.wezterm.lua configuration.

---

### 🌐 The Pinkie Ecosystem

Explore all aesthetic pastel ports designed with love by [**cmduyeen**](https://github.com/cmduyeen):

| Port / Platform | Repository | Description | Status |
| :--- | :--- | :--- | :---: |
| 🎨 **Design Tokens** | [**`pinkie-theme`**](https://github.com/cmduyeen/pinkie-theme) | Master design tokens, specifications & palette source | Active |
| 🌸 **Web Extension Styler** | [**`pinkie-extension-styler`**](https://github.com/cmduyeen/pinkie-extension-styler) | Kawaii web customizer for Facebook, YouTube, Gemini, GitHub... | Active |
| 🌐 **Chrome Browser Theme** | [**`pinkie-chrome`**](https://github.com/cmduyeen/pinkie-chrome) | Aesthetic pink browser frame, tabs & toolbar theme | Active |
| 💻 **VS Code Theme** | [**`pinkie-vscode`**](https://github.com/cmduyeen/pinkie-vscode) | Soft pastel pink syntax and editor theme for VS Code | Active |
| 📁 **VS Code Icons** | [**`pinkie-vscode-icons`**](https://github.com/cmduyeen/pinkie-vscode-icons) | Cute pastel file and folder icons for VS Code | Active |
| 📓 **Obsidian Theme** | [**`pinkie-obsidian`**](https://github.com/cmduyeen/pinkie-obsidian) | Clean, cozy pastel theme for Obsidian note-taking | Active |
| 💻 **Terminal Theme** | [**`pinkie-terminal`**](https://github.com/cmduyeen/pinkie-terminal) | Windows Terminal, Alacritty, WezTerm & Starship | Active |
| 📖 **SumatraPDF Theme** | [**`pinkie-sumatrapdf`**](https://github.com/cmduyeen/pinkie-sumatrapdf) | Gentle pastel reading theme for SumatraPDF | Active |
| 📑 **Smart TOC** | [**`pinkie-smart-toc`**](https://github.com/cmduyeen/pinkie-smart-toc) | Floating aesthetic table of contents extension | Active |
| 🚀 **Products Hub** | [**`pinkie-products`**](https://github.com/cmduyeen/pinkie-products) | Full ecosystem directory & showcase portal | Active |

---

<p align="center">
  <sub>Crafted with coding love by <a href="https://github.com/cmduyeen">cmduyeen</a> 🌸</sub>
</p>