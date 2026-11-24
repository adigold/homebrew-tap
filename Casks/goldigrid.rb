cask "goldigrid" do
  version "0.2.10"
  sha256 "378528c7c49bdbc18d5871e76e68d47a6e26bcfdcefe8b7b20d237f7235a4acf"

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
