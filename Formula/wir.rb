class Wir < Formula
  desc "What Is Running - Port and Process Inspector"
  homepage "https://github.com/AlbertoBarrago/Wir"
  url "https://github.com/AlbertoBarrago/Wir/releases/download/v1.0.9/wir-1.0.9.tar.gz"
  sha256 "39d50cd96dc83b7e70cd726d6621325732100de8b18059b42e9fa2dd57b4d09f"
  version "1.0.9"
  license "MIT"

  def install
    bin.install "wir"
  end

  test do
    system "#{bin}/wir", "--help"
  end
end
