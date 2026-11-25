cask "goldigrid" do
  version "0.2.29"
  sha256 "36fb095ce2a9500f97a76a1200b105f713a60e61d5ba2d5d581e6e0f1f07976d"

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
