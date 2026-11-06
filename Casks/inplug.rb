cask "inplug" do
  version "1.0.48"
  sha256 "5ba2e952279ccf8426d21182111046204bc9aaa622809fd88c9087dc579fb4c5"

  url "https://github.com/inplugapp/InPlug-releases/releases/download/v#{version}/InPlug.dmg"
  name "InPlug"
  desc "Find any plugin by how it looks and add it to Logic Pro or Ableton Live in one keystroke"
  homepage "https://inplug.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "InPlug.app"

  zap trash: [
    "~/Library/Application Support/AG PlugFinder",
    "~/Library/Preferences/com.adigoldstein.AGPlugFinder.plist",
  ]
end
