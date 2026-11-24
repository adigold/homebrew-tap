cask "goldigrid" do
  version "0.2.9"
  sha256 "bfc41b3395fdb4c1dfb7ae8fbc8aa217bb379161127760178828c5aaddef2644"

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
