cask "swift-craft-launcher" do
  version "1.3.4"

  arch arm: "arm64", intel: "x86-64"

  on_arm do
    sha256 "12a3d9a16e3d503cf875094b4c7cbf0b2e615921e9a8a7ac06f455f8dfb97c3f"
  end

  on_intel do
    sha256 "4cadfcf1ce2ca5bc1a5e54d835e62399ff07f1ded409abd8d24d5b479676ca14"
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
