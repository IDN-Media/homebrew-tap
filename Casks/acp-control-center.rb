cask "acp-control-center" do
  version "0.1.0"
  sha256 "ba130c146520bd2802a7d3e760a870bf176459a6c23d1888281f5e45dc0107ad"

  url "https://github.com/IDN-Media/acp-control-center/releases/download/v#{version}/ACPControlCenter-#{version}-macos.zip"
  name "ACP Control Center"
  desc "Menu bar utility for the Agent Client Protocol (ACP) with Kiro CLI integration"
  homepage "https://github.com/IDN-Media/acp-control-center"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Unsigned build (no Developer ID certificate yet). Gatekeeper may block
  # first launch. If so, clear the download attributes once:
  #   xattr -dr com.apple.quarantine /Applications/ACPControlCenter.app
  #   xattr -dr com.apple.provenance /Applications/ACPControlCenter.app
  # Verify the published sha256 on the GitHub Release page, or rebuild from
  # source, before trusting the binary.
  app "ACPControlCenter.app"
end
