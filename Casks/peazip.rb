cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.6.0"
  sha256 arm:   "ed96ba770465d2c6718f7396803b22aa472c17c6346a1a9eb358edcf90239547",
         intel: "7ab22c71909e223b18d740d6882a46478dad9aaa5269e744283df7911ba7678a"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.#{arch}.dmg",
      verified: "github.com/peazip/PeaZip/"
  name "PeaZip"
  desc "Free Zip / Unzip software and Rar file extractor"
  homepage "https://peazip.github.io/"

  app "peazip.app"

  zap trash: "~/Library/Saved Application State/com.company.peazip.savedState"
end
