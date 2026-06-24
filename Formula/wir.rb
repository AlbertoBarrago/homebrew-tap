class Wir < Formula
  desc "What Is Running - Port and Process Inspector"
  homepage "https://github.com/AlbertoBarrago/Wir"
  url "https://github.com/AlbertoBarrago/Wir/releases/download/v1.0.10/wir-1.0.10.tar.gz"
  sha256 "387a0cead4c78e64e8288c01256668171b0de33875267b68d7f2537300c4e33a"
  version "1.0.10"
  license "MIT"

  def install
    bin.install "wir"
  end

  test do
    system "#{bin}/wir", "--help"
  end
end
