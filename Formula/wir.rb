class Wir < Formula
  desc "What Is Running - Port and Process Inspector"
  homepage "https://github.com/AlbertoBarrago/wir"
  url "https://github.com/AlbertoBarrago/wir/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "9d7da5ea7ef278671e665dc922e4ae880883dfe7c343fe4a1967108ad7db0822"
  version "1.1.0"
  license "MIT"

  def install
    system "make"
    bin.install "wir"
  end

  test do
    system "#{bin}/wir", "--version"
  end
end
