cask "ag-plugfinder" do
  version "0.9.73"
  sha256 "6330e2ac79b2961ece24698e880e48b55eb86b10534cc51e55365fcfa692718f"

  url "https://github.com/adigold/AG-PlugFinder/releases/download/v#{version}/AG-PlugFinder.dmg"
  name "InPlug"
  desc "Find any plugin by how it looks and add it to Logic Pro in one keystroke"
  homepage "https://github.com/adigold/AG-PlugFinder"

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
