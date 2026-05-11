class EquicordInstaller < Formula
  desc "Installer for Equicord"
  homepage "https://github.com/Equicord/Equicord"
  url "https://github.com/Equicord/Equilotl/archive/refs/tags/v2.2.2.tar.gz"
  sha256 "f91c71271cdccca38dbe20a6dfd5d7178333e046886b425e9a3e2f5bc176ee7e"
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
