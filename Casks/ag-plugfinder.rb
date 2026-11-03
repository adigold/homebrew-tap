cask "ag-plugfinder" do
  version "0.9.70"
  sha256 "431718b0baeb04debff27279ba448b97b568e846808e23f804a1a94b6e795cbf"

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
