cask "goldigrid" do
  version "0.2.14"
  sha256 "e58a1f7bbf49d049b8314de4f9744dc014c6e432963f68e11c107ea060ed5d81"

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
