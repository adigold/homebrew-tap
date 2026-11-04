cask "ag-plugfinder" do
  version "1.0.12"
  sha256 "c224eee69b50edb80c98c3c21ce02bf74d61a17e2496dc20b0da80b4df22e706"

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
