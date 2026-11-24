cask "goldigrid" do
  version "0.2.8"
  sha256 "c588405b42ff77ea5215ce5138fbfebb27f35b4eaae7cc32d40eb3adc0631961"

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
