class SbomUtility < Formula
  desc "Utility that provides an API platform for validating, querying and managing BOM data"
  homepage "https://github.com/CycloneDX/sbom-utility"
  url "https://github.com/CycloneDX/sbom-utility/archive/refs/tags/v0.19.2.tar.gz"
  sha256 "e1f49f1c69d231f19a16085a56ad187700cf712287412182442d6f1b000fd77e"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end
