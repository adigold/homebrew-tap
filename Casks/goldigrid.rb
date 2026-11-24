cask "goldigrid" do
  version "0.2.0"
  sha256 "68ef798768aa394c8dae3982144459e82c5a0b36dadf7deacf1a4029aae0dbe7"

  url "https://goldigrid.com/download/GoldiGrid-#{version}-macos.zip"
  name "GoldiGrid"
  desc "Run many coding agents side by side in one window"
  homepage "https://goldigrid.com/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "GoldiGrid.app"

  zap trash: "~/Library/Application Support/GoldiGrid"
end
