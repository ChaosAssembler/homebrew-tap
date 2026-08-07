require "language/node"

class Nanoid < Formula
  desc "Tiny (124 bytes), secure, URL-friendly, unique string ID generator for JavaScript"
  homepage "https://zelark.github.io/nano-id-cc/"
  url "https://github.com/ai/nanoid/archive/refs/tags/6.0.1.tar.gz"
  sha256 "7277814b8c3174f7c74699eddce15797b18cfd9b6b1e9573c68a7c19d4b2aa6e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
  end
end
