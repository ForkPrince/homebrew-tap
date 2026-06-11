cask "clop@mirror" do
  version "2.10.6"
  sha256 "51d39b737a61121b15a439a73d193466d6bb65d4e15823b9a4025b42ec01a9f7"

  url "https://github.com/SoBloxsy/Clop/releases/download/#{version}/Clop.app.zip"
  name "Clop"
  desc "Image, video and clipboard optimiser"
  homepage "https://lowtechguys.com/clop/"

  auto_updates true
  conflicts_with cask: "clop"
  depends_on macos: :ventura

  app "Clop.app"

  zap trash: [
    "~/Library/Application Scripts/com.lowtechguys.Clop",
    "~/Library/Application Scripts/com.lowtechguys.Clop.FinderOptimiser",
    "~/Library/Application Support/Clop",
    "~/Library/Caches/Clop",
    "~/Library/Containers/com.lowtechguys.Clop.FinderOptimiser",
    "~/Library/Daemon Containers/54F7B6C1*/Data/com.apple.kvs/ChangeTokens/NoEncryption/Clop/*.com.lowtechguys.Clop",
    "~/Library/HTTPStorages/com.lowtechguys.Clop",
    "~/Library/HTTPStorages/com.lowtechguys.Clop.binarycookies",
    "~/Library/Preferences/com.lowtechguys.Clop.plist",
  ]
end
