class Vexctl < Formula
  desc "A  tool to create, transform and attest VEX metadata"
  homepage "https://github.com/openvex/vexctl"
  url "https://github.com/openvex/vexctl/archive/refs/tags/v0.4.4.tar.gz"
  sha256 "c846b1288f837ebcbebef7817ec450e5b0a4b3d8f7b176717ae6f3198539d991"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "make" "test"
  end
end
