class Passphrase < Formula
  desc "An on-device, command-line random passphrase generator"
  homepage "https://github.com/egor-kouchnarev/homebrew-passphrase"
  url "https://github.com/egor-kouchnarev/homebrew-passphrase/archive/refs/tags/v0.3.1-alpha.tar.gz"
  sha256 "d7ccd94020b7ff911e067d8ae55f82662ef3c261ed6e5cca23dacb4e676d9eff"
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
