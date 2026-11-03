cask "ag-plugfinder" do
  version "0.9.74"
  sha256 "309db1305cb835a6bf5cebd6f0df4b57449c92919c7ebc1572180da41f6f6777"

  url "https://github.com/adigold/InPlug-releases/releases/download/v#{version}/AG-PlugFinder.dmg"
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
