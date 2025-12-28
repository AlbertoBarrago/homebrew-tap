class Wir < Formula
  desc "What Is Running - Port and Process Inspector"
  homepage "https://github.com/AlbertoBarrago/Wir"
  url "https://github.com/AlbertoBarrago/Wir/releases/download/v1.0.4/wir-1.0.4.tar.gz"
  sha256 "64aabd408e8b19e7925ca50a47fe50b1b45c6f361476a87a644bd86b64dcbd94"
  version "1.0.4"
  license "MIT"

  def install
    bin.install "wir"
  end

  test do
    system "#{bin}/wir", "--help"
  end
end
