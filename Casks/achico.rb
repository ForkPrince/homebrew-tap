cask "achico" do
  version "3.2.1"
  sha256 "f8d298f819a67aa1b02216d5487ba8fca8cad2c35f37135bb079eb61c95ac65f"

  url "https://github.com/nuance-dev/achico/releases/download/v#{version}/Achico.app.zip"
  name "Achico"
  desc "Minimal free macOS local file compressor app"
  homepage "https://github.com/nuance-dev/achico"

  app "Achico.app"
end

No achico settings found.
Instead of a zap stanza, include the following comment:
# No zap stanza required
