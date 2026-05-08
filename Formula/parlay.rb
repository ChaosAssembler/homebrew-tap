class Parlay < Formula
  desc "Enrich SBOMs with data from third party services"
  homepage "https://github.com/snyk/parlay/releases"
  url "https://github.com/snyk/parlay/releases/download/v0.11.0/parlay-0.11.0.tar.gz"
  sha256 "4937b0550c6da2252ff163d26652657ea11a3fd791c889b628ed568aed9c1f48"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "make", "test"
  end
end
