cask "inplug" do
  version "1.0.37"
  sha256 "7fa38dcca00c8c30e3e839105e8b5ed3fadd832fb733d3e8cbbd5eaa1c9a2b7d"

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
