cask "goldigrid" do
  version "0.2.11"
  sha256 "6ab43763b2f9f644e967fbacb4cfcb6a846bb5f433610876ab4da2d325a718b8"

  url "https://goldigrid.com/download/GoldiGrid-#{version}.dmg"
  name "GoldiGrid"
  desc "Run many coding agents side by side in one window"
  homepage "https://goldigrid.com/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "GoldiGrid.app"

  zap trash: "~/Library/Application Support/GoldiGrid"
end
