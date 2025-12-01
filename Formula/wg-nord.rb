class WgNord < Formula
  desc "WireGuard configuration generator for NordVPN"
  homepage "https://github.com/n-thumann/wg-nord"
  license "MIT"

  on_intel do
    url "https://github.com/n-thumann/wg-nord/releases/download/v1.0.0/wg-nord-1.0.0-x86_64-apple-darwin.tar.gz"
    sha256 "080f2ce40a601ff333f60a075028114e8edb7518a3dfafc0635c1adf978cde7e"
  end

  on_arm do
    url "https://github.com/n-thumann/wg-nord/releases/download/v1.0.1/wg-nord-1.0.1-aarch64-apple-darwin.tar.gz"
    sha256 "15692aed22681cafbeb3d8a414be265e530824458cfc1d3c877a33422858a68d"
  end

  def install
    bin.install "wg-nord"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wg-nord --version")
  end
end
