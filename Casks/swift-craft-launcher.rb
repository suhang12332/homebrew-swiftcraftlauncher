cask "swift-craft-launcher" do
  version "1.3.3"

  arch arm: "arm64", intel: "x86-64"

  on_arm do
    sha256 "d4a225eaee0c305c545b961c955cb1bfb1cc217ee6efe7d56eb2d8e531db2f0c"
  end

  on_intel do
    sha256 "af21856d2bc2116d0b9bea3a6b0b5f9606f52f7b5d59440d1ca8ee96499cf748"
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
