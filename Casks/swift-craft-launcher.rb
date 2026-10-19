cask "swift-craft-launcher" do
  version "1.3.5"

  arch arm: "arm64", intel: "x86-64"

  on_arm do
    sha256 "aaa52e80405c1859a7d1c7434e193d6a066b261237f2abd3d54715e1b030d83f"
  end

  on_intel do
    sha256 "336168ce8c296557964876f683ae80b9ab71dff09cb17dffb074180b6de23ce3"
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
