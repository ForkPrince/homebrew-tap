class WgNord < Formula
  desc "WireGuard configuration generator for NordVPN"
  homepage "https://github.com/n-thumann/wg-nord"
  license "MIT"

  on_intel do
    url "https://github.com/n-thumann/wg-nord/releases/download/v1.0.0/wg-nord-1.0.0-x86_64-apple-darwin.tar.gz"
    sha256 "080f2ce40a601ff333f60a075028114e8edb7518a3dfafc0635c1adf978cde7e"
  end

  on_arm do
    url "https://github.com/n-thumann/wg-nord/releases/download/v1.0.0/wg-nord-1.0.0-aarch64-apple-darwin.tar.gz"
    sha256 "de9d47a518f5df5274582cb9954c5d29d63a009226aaa1ef216a41a08f7f1495"
  end

  def install
    bin.install "wg-nord"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wg-nord --version")
  end
end
