# SwiftCraft Launcher Homebrew Tap

Official Homebrew Tap for SwiftCraft Launcher - A modern Minecraft launcher for macOS built with SwiftUI.

## Installation

### Quick Install
```bash
brew install --cask suhang12332/swiftcraftlauncher/swift-craft-launcher
```

### Add Tap First
```bash
brew tap suhang12332/swiftcraftlauncher
brew install --cask swift-craft-launcher
```

## System Requirements

- macOS 14.0 (Sonoma) or later
- Apple Silicon (M1/M2/M3/M4) or Intel processor

## Supported Architectures

The Cask automatically detects your system architecture:
- **Apple Silicon**: Downloads ARM64 optimized version
- **Intel**: Downloads x86_64 compatible version

## Management

### Update
```bash
brew update
brew upgrade --cask swift-craft-launcher
```

### Uninstall
```bash
# Standard uninstall
brew uninstall --cask swift-craft-launcher

# Complete removal (including user data)
brew uninstall --zap --cask swift-craft-launcher
```

### Remove Tap
```bash
brew untap suhang12332/swiftcraftlauncher
```

## What Gets Cleaned Up

When using `--zap`, the following locations are cleaned:
- `~/Library/Application Support/Swift Craft Launcher`
- `~/Library/Caches/com.su.code.SwiftCraftLauncher`
- `~/Library/Logs/Swift Craft Launcher`
- `~/Library/Preferences/com.su.code.SwiftCraftLauncher.plist`
- `~/Library/Saved Application State/com.su.code.SwiftCraftLauncher.savedState`

## Links

- **Main Project**: [Swift-Craft-Launcher](https://github.com/suhang12332/Swift-Craft-Launcher)
- **Website**: [SwiftCraft Launcher](https://suhang12332.github.io/swift-craft-launcher-web.github.io/)
- **Issues**: Report issues in the [main repository](https://github.com/suhang12332/Swift-Craft-Launcher/issues)

## License

This Homebrew Tap follows the same license as the main project: AGPL v3.0
