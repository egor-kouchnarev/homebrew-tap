class Password < Formula
  desc "A password generator written in C"
  homepage "https://github.com/egor-kouchnarev/homebrew-password"
  url "https://github.com/egor-kouchnarev/homebrew-password/archive/refs/tags/v0.2.0-alpha.tar.gz"
  sha256 "4f9d60979f0b121a8bb558f62b467f810ca2aa0030ff718ec9f10ecf49fb8e5c"
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
