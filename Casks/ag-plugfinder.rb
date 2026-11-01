cask "ag-plugfinder" do
  version "0.9.28"
  sha256 "52f9acad63f9715a082886dfac5a6a904f1f7e4942da76ba8b8e0c9663da3fb1"

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
