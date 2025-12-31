class Wir < Formula
  desc "What Is Running - Port and Process Inspector"
  homepage "https://github.com/AlbertoBarrago/Wir"
  url "https://github.com/AlbertoBarrago/Wir/releases/download/v1.0.8/wir-1.0.8.tar.gz"
  sha256 "bc0e7082134da2180d838ae5445d2aee7ff3650fbe3c1b72d08378cfcb1304a5"
  version "1.0.8"
  license "MIT"

  def install
    bin.install "wir"
  end

  test do
    system "#{bin}/wir", "--help"
  end
end
