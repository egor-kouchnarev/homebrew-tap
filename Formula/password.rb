class Password < Formula
  desc "A password generator written in C"
  homepage "https://github.com/egor-kouchnarev/homebrew-password"
  url "https://github.com/egor-kouchnarev/homebrew-password/archive/refs/tags/v0.3.0-alpha.tar.gz"
  sha256 "5523a27cf8610cd9270b95ec20c054cfdf2b9eab40edef9963e450a4a97c084e"
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
