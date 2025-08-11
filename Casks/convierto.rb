cask "convierto" do
  version "1.0.1"
  sha256 "b6f1860e04648ec3357233dd4c80c137dc8925f51afbd33c40278e1508e60817"

  url "https://github.com/nuance-dev/convierto/releases/download/v#{version}/Convierto.app.zip"
  name "Convierto"
  desc "Native macOS file converter app"
  homepage "https://github.com/nuance-dev/convierto"

  app "Convierto.app"
end
