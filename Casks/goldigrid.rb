cask "goldigrid" do
  version "0.2.21"
  sha256 "ef84cfc705dbcb074fbfeb40ea2c45dd6f2977f6f5b840a97ef9445c66d9d126"

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
