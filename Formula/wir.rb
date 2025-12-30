class Wir < Formula
  desc "What Is Running - Port and Process Inspector"
  homepage "https://github.com/AlbertoBarrago/Wir"
  url "https://github.com/AlbertoBarrago/Wir/releases/download/v1.0.6/wir-1.0.6.tar.gz"
  sha256 "36739a4573f498cd23307157c1682b60c531b477caa7f3b66a00e5724fb1d2f1"
  version "1.0.6"
  license "MIT"

  def install
    bin.install "wir"
  end

  test do
    system "#{bin}/wir", "--help"
  end
end
