cask "drop-app" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "f6b5cd8b63c476d93cfeb17579e58b7eb5a1d47f50418d159fa58d14c042eecd",
         intel: "d561d65345e1aa93d26c079f4ab4475b6f9b8afe838183f2d68f4ec53874f7d0"

  url "https://github.com/Drop-OSS/drop-app/releases/download/v#{version}/Drop.Desktop.Client_#{version}_#{arch}.dmg",
      verified: "github.com/Drop-OSS/drop-app/"
  name "Drop Desktop Client"
  desc "Desktop companion app for Drop"
  homepage "https://droposs.org/"

  app "Drop Desktop Client.app"
  No drop-app settings found.
  Instead of a zap stanza, include the following comment:
  # No zap stanza required
end
