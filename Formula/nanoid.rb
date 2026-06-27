require "language/node"

class Nanoid < Formula
  desc "Tiny (124 bytes), secure, URL-friendly, unique string ID generator for JavaScript"
  homepage "https://zelark.github.io/nano-id-cc/"
  url "https://github.com/ai/nanoid/archive/refs/tags/5.1.16.tar.gz"
  sha256 "b47a9ca71ad09bedaf1dbc8102e328a38a2906e314bff17c86a6d523a513e55d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
  end
end
