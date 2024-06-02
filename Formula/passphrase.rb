class Passphrase < Formula
  desc "A passphrase generator written in C"
  homepage "https://github.com/egor-kouchnarev/homebrew-passphrase"
  url "https://github.com/egor-kouchnarev/homebrew-passphrase/archive/refs/tags/v0.2.0-alpha.tar.gz"
  sha256 "d25e94ce9f14068977be22891aa5b624980ca50e12f3769cc17c5427ef7472fb"
  license "MIT"

  depends_on "make" => :build

  def install
    system "make"
    bin.install "passphrase"
  end

  test do
    system "#{bin}/passphrase", "6"
  end
end
