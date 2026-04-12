cask "librescore" do
  version "6.0.23"
  sha256 "f3f2ea40bd9d4ec018cb7688873865830dc1448bade8fd1776eaae71b3e807c6"

  url "https://github.com/LibreScore/app-librescore/releases/download/v#{version}/LibreScore.dmg"
  name "LibreScore"
  desc "Open source, serverless, offline-first alternative to MuseScore.com"
  homepage "https://github.com/LibreScore/app-librescore"

  app "LibreScore.app"
end
