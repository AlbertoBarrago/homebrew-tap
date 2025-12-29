class Wir < Formula
  desc "What Is Running - Port and Process Inspector"
  homepage "https://github.com/AlbertoBarrago/Wir"
  url "https://github.com/AlbertoBarrago/Wir/releases/download/v1.0.5/wir-1.0.5.tar.gz"
  sha256 "12b6b5910a9b86048849dd6bada385b52282dec2ebfdbcaf3c84876efeb05a93"
  version "1.0.5"
  license "MIT"

  def install
    bin.install "wir"
  end

  test do
    system "#{bin}/wir", "--help"
  end
end
