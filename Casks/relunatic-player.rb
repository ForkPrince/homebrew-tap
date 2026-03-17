cask "relunatic-player" do
  version "1.2.0"
  sha256 "7d5d508a064aee9361171df4821ba817fcd6fcc6a21abbe82291f96ded43f21d"

  url "https://github.com/Prince527GitHub/Re-Lunatic-Player/releases/download/v#{version}/Re.Lunatic.Player.dmg"
  name "Re:Lunatic Player"
  desc "Gensokyo Radio app continuation of Lunatic Player"
  homepage "https://github.com/Prince527GitHub/Re-Lunatic-Player"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Re-Lunatic Player.app"
end
