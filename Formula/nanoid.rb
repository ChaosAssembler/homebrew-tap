require "language/node"

class Nanoid < Formula
  desc "Tiny (124 bytes), secure, URL-friendly, unique string ID generator for JavaScript"
  homepage "https://zelark.github.io/nano-id-cc/"
  url "https://github.com/ai/nanoid/archive/refs/tags/6.0.2.tar.gz"
  sha256 "125e12f6df739a77eb7a171b3c7dc05df57245a92d0ff21f953a4b294a414a74"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
  end
end
