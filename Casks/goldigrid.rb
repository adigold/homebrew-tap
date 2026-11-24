cask "goldigrid" do
  version "0.2.15"
  sha256 "c3fb6f6b6a251617ba9217c198514b1991767c1a751d2d9305244e61d60b69a5"

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
