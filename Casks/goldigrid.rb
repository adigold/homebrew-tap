cask "goldigrid" do
  version "0.2.12"
  sha256 "d07afa95e8f1aa06af278d43905d2b9b9cdbd3a9b488857d83b787de24857ebf"

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
