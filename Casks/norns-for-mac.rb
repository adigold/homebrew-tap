# Homebrew cask for Norns for Mac. Goes in a public tap repo named homebrew-tap
# (github.com/adigold/homebrew-tap), so people can run:
#   brew install adigold/tap/norns-for-mac
# The DMG is served by the website (site/download). Update version and sha256 each release
# (shasum -a 256 build/release/Norns-<version>.dmg).
cask "norns-for-mac" do
  version "0.1.4"
  sha256 "1bff0fc4e0a8a80305a96b433c8a444e90429a9f4bcc6b69a41eabe75f0727d4"

  url "https://norns4mac.netlify.app/download/Norns-#{version}.dmg"
  name "Norns for Mac"
  desc "The monome norns sound computer and its community scripts, as a Mac app"
  homepage "https://norns4mac.netlify.app"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Norns.app"

  zap trash: [
    "~/Library/Application Support/Norns for Mac",
    "~/Library/Norns",
  ]
end
