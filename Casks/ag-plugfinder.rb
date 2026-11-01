cask "ag-plugfinder" do
  version "0.9.51"
  sha256 "9737c243a41283299d95c38a7fec3245ce0f966c3c2db4b18509a79092218e19"

  url "https://github.com/adigold/AG-PlugFinder/releases/download/v#{version}/AG-PlugFinder.dmg"
  name "AG PlugFinder"
  desc "Find any plugin by how it looks and add it to Logic Pro in one keystroke"
  homepage "https://github.com/adigold/AG-PlugFinder"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "AG PlugFinder.app"

  zap trash: [
    "~/Library/Application Support/AG PlugFinder",
    "~/Library/Preferences/com.adigoldstein.AGPlugFinder.plist",
  ]
end
