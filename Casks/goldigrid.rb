cask "goldigrid" do
  version "0.2.13"
  sha256 "ff1b37ab5ce331065bc46924789d60fae85b5d388e31b9f08f7e1a9d0233f710"

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
