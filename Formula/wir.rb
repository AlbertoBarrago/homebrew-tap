class Wir < Formula
  desc "What Is Running - Port and Process Inspector"
  homepage "https://github.com/AlbertoBarrago/Wir"
  url "https://github.com/AlbertoBarrago/Wir/releases/download/v1.0.7/wir-1.0.7.tar.gz"
  sha256 "5525c71b46f91dde594f4479d8cea92f608632d09f88f27b0dcb2b8d9332263c"
  version "1.0.7"
  license "MIT"

  def install
    bin.install "wir"
  end

  test do
    system "#{bin}/wir", "--help"
  end
end
