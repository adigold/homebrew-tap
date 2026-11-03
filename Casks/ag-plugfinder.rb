cask "ag-plugfinder" do
  version "1.0.11"
  sha256 "0e40fcb8cd44b0ed114c6f5a47fcfff4e201b1f3ce1f4ce55beaa87ecb39ddda"

  url "https://github.com/adigold/InPlug-releases/releases/download/v#{version}/InPlug.dmg"
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
