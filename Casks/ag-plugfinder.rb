cask "ag-plugfinder" do
  version "1.0.7"
  sha256 "ead78ece7383259b0dcb6263441716f233f1849beaf81b78c363870f7b6504cc"

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
