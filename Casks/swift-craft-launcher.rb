cask "swift-craft-launcher" do
  version "1.2.3"

  arch arm: "arm64", intel: "x86-64"

  on_arm do
    sha256 "b0a399b9697cdfa42e3662285e78d15f9d171524a99eef78b5eaae74225cce57"
  end

  on_intel do
    sha256 "2dab12f0ded4a729ca39478f847a208cc747fb6f15bb283947e002a916ccaaae"
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
