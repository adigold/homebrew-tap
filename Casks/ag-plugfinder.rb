cask "ag-plugfinder" do
  version "0.9.25"
  sha256 "51e884a5c67659e8f12d4f508f7d15deab4cb384d4071fc3819d3731e5b0bf73"

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
