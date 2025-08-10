cask "peazip" do
  version "10.6.0"
  sha256 "ed96ba770465d2c6718f7396803b22aa472c17c6346a1a9eb358edcf90239547"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.aarch64.dmg",
      verified: "github.com/peazip/PeaZip/"
  name "PeaZip"
  desc "Free Zip / Unzip software and Rar file extractor"
  homepage "https://peazip.github.io/"

  app "peazip.app"

  zap trash: "~/Library/Saved Application State/com.company.peazip.savedState"
end
