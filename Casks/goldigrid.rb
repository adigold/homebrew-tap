cask "goldigrid" do
  version "0.2.16"
  sha256 "bc04455a13afd6015cd12fbe8047d8c3db3031b346810d8d95d78fffaf3d36a4"

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
