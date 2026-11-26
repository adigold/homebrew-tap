# Homebrew cask for Norns for Mac. Goes in a public tap repo named homebrew-tap
# (github.com/adigold/homebrew-tap), so people can run:
#   brew install adigold/tap/norns-for-mac
# The DMG is served by the website (site/download). Update version and sha256 each release
# (shasum -a 256 build/release/Norns-<version>.dmg).
cask "norns-for-mac" do
  version "0.2.1"
  sha256 "b46808079cbf203b7fca66bab0ad1d5aff5ca2c5f480f325b9ee4c395f95f6f6"

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
