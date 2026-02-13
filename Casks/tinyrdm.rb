cask "tinyrdm" do
  arch arm: "arm64", intel: "intel"

  version "1.2.5"
  sha256 arm:   "0918611c8a96dbbda5a8e59c4c810659bca5033d82f780df865d4d1dfed25b8a",
         intel: "4415ff1bb28603c2bd18b57700ef6f515098bfd0d6b9b61f5aaccadc378a3c33"

  url "https://github.com/tiny-craft/tiny-rdm/releases/download/v#{version}/TinyRDM_#{version}_mac_#{arch}.dmg",
      verified: "github.com/tiny-craft/tiny-rdm/"
  name "Tiny RDM"
  desc "Modern and colorful Redis GUI client"
  homepage "https://redis.tinycraft.cc/"

  depends_on macos: ">= :big_sur"

  app "Tiny RDM.app"
end
