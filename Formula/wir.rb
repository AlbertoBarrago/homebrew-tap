class Wir < Formula
  desc "What Is Running - Port and Process Inspector"
  homepage "https://github.com/AlbertoBarrago/Wir"
  url "https://github.com/AlbertoBarrago/Wir/releases/download/v1.1.0/wir-1.1.0.tar.gz"
  sha256 "c79a5e224cdbec7fcfc6791a634f6b5d23ea79d7688e403e1b64a7193de6c1b2"
  version "1.1.0"
  license "MIT"

  def install
    bin.install "wir"
  end

  test do
    system "#{bin}/wir", "--help"
  end
end
