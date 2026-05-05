class EquicordInstaller < Formula
  desc "Installer for Equicord"
  homepage "https://github.com/Equicord/Equicord"
  url "https://github.com/Equicord/Equilotl/archive/refs/tags/v2.1.9-pre3.tar.gz"
  sha256 "e55c0d779c1ba0a6aecf5b5cf28d62bfcd3c459cf8c260829ceb6b2df1d8210a"
  license "GPL-3.0-or-later"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X 'equicordinstaller/buildinfo.InstallerGitHash=#{tap.user}' -X 'equicordinstaller/buildinfo.InstallerTag=v#{version}'"
    tags = "static cli"
    system "go", "build", "-tags", tags, *std_go_args(ldflags:)
  end

  test do
    assert_match "Equicord Installer Cli v#{version} (#{tap.user})", shell_output("#{bin}/equicord-installer -version")
  end
end
