cask "goldigrid" do
  version "0.2.5"
  sha256 "de8fdb64e19f0b58e33dcc78f6e2c81870266b7b7f075c8ac145c00cadf8bda7"

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
