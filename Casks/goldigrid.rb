cask "goldigrid" do
  version "0.2.1"
  sha256 "bdd5de2f0503594f50577a7eda3e26fa92c040e06407e068d23bb5cac2f45dc5"

  url "https://goldigrid.com/download/GoldiGrid-#{version}-macos.zip"
  name "GoldiGrid"
  desc "Run many coding agents side by side in one window"
  homepage "https://goldigrid.com/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "GoldiGrid.app"

  zap trash: "~/Library/Application Support/GoldiGrid"
end
