cask "relunatic-player" do
  version "1.2.1"
  sha256 "347644adf6dcc501be1fff36f941d319ea18500661251e6890ac38d3833969ec"

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
