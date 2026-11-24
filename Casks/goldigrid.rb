cask "goldigrid" do
  version "0.2.23"
  sha256 "9c5a275d3740e6a7fa8a368b5b0e80db37bfe248799590839ccf06c2564bdf58"

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
