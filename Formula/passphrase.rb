class Passphrase < Formula
  desc "A passphrase generator written in C"
  homepage "https://github.com/egor-kouchnarev/homebrew-passphrase"
  url "https://github.com/egor-kouchnarev/homebrew-passphrase/archive/refs/tags/v0.2.0-alpha.tar.gz"
  sha256 "7fdb894ad873c2942597aa2203c8a8377bae3ebabb219e53a1bfdd54e1d1688d"
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
