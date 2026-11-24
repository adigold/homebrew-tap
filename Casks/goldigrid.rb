cask "goldigrid" do
  version "0.2.8"
  sha256 "38e5476121fca6b4bfc85b80c19afe44a466867eda3fb1df3424c00f9c1c3ad6"

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
