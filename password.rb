class Password < Formula
  desc "A password generator written in C"
  homepage "https://github.com/egor-kouchnarev/homebrew-password"
  url "https://github.com/egor-kouchnarev/homebrew-password/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3748df3e4e3848df29291f5afbaa70778256fa6eecad91994dcfb3b087305437"
  license "MIT"

  depends_on "make" => :build

  def install
    system "make"
    system "make", "install", "DESTDIR=#{prefix}"
  end

  test do
    system "#{bin}/password", "--version"
  end
end
