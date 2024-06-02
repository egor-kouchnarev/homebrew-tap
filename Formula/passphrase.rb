class Passphrase < Formula
  desc "A passphrase generator written in C"
  homepage "https://github.com/egor-kouchnarev/homebrew-passphrase"
  url ""
  sha256 ""
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