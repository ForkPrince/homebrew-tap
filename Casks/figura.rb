cask "figura" do
  version "1.4.2"
  sha256 "2d22bd05adaf62714c05ae6bb4b82f7610941177dd3024dde7c252ae454da266"

  url "https://github.com/nuance-dev/figura/releases/download/v#{version}/Figura.app.zip"
  name "Figura"
  desc "Free macOS native app to remove image backgrounds locally"
  homepage "https://github.com/nuance-dev/figura"

  app "Figura.app"
end
