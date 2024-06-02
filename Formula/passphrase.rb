class Passphrase < Formula
  desc "A passphrase generator written in C"
  homepage "https://github.com/egor-kouchnarev/homebrew-passphrase"
  url "https://github.com/egor-kouchnarev/homebrew-passphrase/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "74070eb4a04eb325234d0c5bdc5efe7b3de2fa094472909de14c0f9896c5190d"
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
