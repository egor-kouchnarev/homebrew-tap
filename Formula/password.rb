class Password < Formula
  desc "A password generator written in C"
  homepage "https://github.com/egor-kouchnarev/homebrew-password"
  url "https://github.com/egor-kouchnarev/homebrew-password/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "87b0b85e9beaf582b725d0571f7b04e97b885beb40ad2ba13dcb2a612b9b0fe9"
  license "MIT"

  depends_on "make" => :build

  def install
    system "make"
    bin.install "password"
  end

  test do
    system "#{bin}/password", "32"
  end
end
