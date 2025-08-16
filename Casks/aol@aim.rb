cask "aol@aim" do
  version "0.0.4"
  sha256 "e98fdec42388275391af9bbd0d2ca4b08d6d67f8c7fedfccd0d5c93a8659157c"

  url "https://github.com/mk6i/aim-for-macos/releases/download/v#{version}/AIM_5.1.3036_for_MacOS.zip"
  name "AIM"
  desc "AOL Instant Messenger for modern MacOS."
  homepage "https://github.com/mk6i/aim-for-macos"

  app "AOL Instant Messenger.app"

  # No zap stanza required
end
