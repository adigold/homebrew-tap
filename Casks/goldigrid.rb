cask "goldigrid" do
  version "0.2.26"
  sha256 "6c45d6e4c0ebb8df89456ae2e40e334fc1e2a9f527e9e5d3d28daf908ddcef20"

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
