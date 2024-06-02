class Password < Formula
  desc "An on-device, command-line random password generator"
  homepage "https://github.com/egor-kouchnarev/homebrew-password"
  url "https://github.com/egor-kouchnarev/homebrew-password/archive/refs/tags/v0.3.1-alpha.tar.gz"
  sha256 "f80d9b4a5b7704f93c5067fbded394ed91026c4cfa610a50a820637db9a14af3"
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
