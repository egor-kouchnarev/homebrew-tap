class Passphrase < Formula
  desc "A command-line random passphrase generator"
  homepage "https://github.com/egor-kouchnarev/homebrew-passphrase"
  url "https://github.com/egor-kouchnarev/homebrew-passphrase/archive/refs/tags/v0.3.0-alpha.tar.gz"
  sha256 "50ee58eb5c53570a1e24cd600643abd748b9d7517084dc370a24b7bf42932df0"
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
