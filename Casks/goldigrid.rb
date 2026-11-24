cask "goldigrid" do
  version "0.2.18"
  sha256 "48f3e3b58946d996686156b30c3630799f57a31d2e96a0e9f24776d046473b24"

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
