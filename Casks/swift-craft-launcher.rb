cask "swift-craft-launcher" do
  version "1.2.7"

  arch arm: "arm64", intel: "x86-64"

  on_arm do
    sha256 "210663286d7d83b3ab71d044a2a3bb5cf2a53aecf73da93a7705ec02f13ca6ba"
  end

  on_intel do
    sha256 "98a434a43058d8c92835cddbb4c0e1b64ac897263c8b32ef68df21780203c217"
  end

  url "https://github.com/suhang12332/Swift-Craft-Launcher/releases/download/#{version}/Swift-Craft-Launcher-#{arch}-#{version}.dmg"

  name "Swift Craft Launcher"
  desc "Modern Minecraft launcher for macOS built with SwiftUI"
  homepage "https://web.scl.isiah.top"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: :sonoma

  app "Swift Craft Launcher.app"

  uninstall quit: "com.su.code.SwiftCraftLauncher"

  zap trash: [
    "~/Library/Application Support/Swift Craft Launcher",
    "~/Library/Caches/com.su.code.SwiftCraftLauncher",
    "~/Library/Logs/Swift Craft Launcher",
    "~/Library/Preferences/com.su.code.SwiftCraftLauncher.plist",
    "~/Library/Saved Application State/com.su.code.SwiftCraftLauncher.savedState"
  ]
end
