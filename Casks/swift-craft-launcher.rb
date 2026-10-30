cask "swift-craft-launcher" do
  version "1.3.7"

  arch arm: "arm64", intel: "x86-64"

  on_arm do
    sha256 "fd293d0b2cd5f1bb590b87e685bb1255abedd7ca9f80d821652740e5a4d59a7d"
  end

  on_intel do
    sha256 "819dfa460bbbb72f263568b08d89bdb6ded52e69e775f79f41fd73654248d07d"
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
