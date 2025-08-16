cask "tablift" do
  version "2.0"
  sha256 "10e8a0a7ae8ad81b68ec6f7fdac535de81b2469986baa09489f05a7fdb0dd9c6"

  url "https://github.com/turtle-key/TabLift/releases/download/v#{version}/TabLift.dmg",
      verified: "github.com/turtle-key/TabLift/"
  name "Tablift"
  desc "Utility that auto-restore minimized app windows"
  homepage "https://tablift.mihai.sh/"

  app "TabLift.app"
  No tablift settings found.
  Instead of a zap stanza, include the following comment:
  # No zap stanza required
end
