cask "goldigrid" do
  version "0.2.27"
  sha256 "345e365d34d49559a12bf9e5bc6a1395a3fed50c9a74862bb607fb3e6f380cfe"

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
