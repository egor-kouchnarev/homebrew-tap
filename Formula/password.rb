class Password < Formula
  desc "A password generator written in C"
  homepage "https://github.com/egor-kouchnarev/homebrew-password"
  url "https://github.com/egor-kouchnarev/homebrew-password/archive/refs/tags/v0.2.0-alpha.tar.gz"
  sha256 "dba1ecc3df4fa0d4b19e805ac744b6f656a222cbace51bc7c7727b84f52a57ca"
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
