class EquicordInstaller < Formula
  desc "Installer for Equicord"
  homepage "https://github.com/Equicord/Equicord"
  url "https://github.com/Equicord/Equilotl/archive/refs/tags/v2.2.6.tar.gz"
  sha256 "d7a43f9162e8f4a6dac0e6177925f2572faa316304942d6212abd314831ef131"
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
