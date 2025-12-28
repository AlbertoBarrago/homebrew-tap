class Wir < Formula
  desc "What Is Running - Port and Process Inspector"
  homepage "https://github.com/AlbertoBarrago/wir"
  url "https://github.com/AlbertoBarrago/wir/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "92d5b186c6db99b441450b5e2bb70362ab0729627481550b0095ac0162ed9a07"
  license "MIT"
  head "https://github.com/AlbertoBarrago/wir.git", branch: "main"

  depends_on :macos

  def install
    system "make"
    bin.install "wir"
  end

  test do
    assert_match "wir version 1.0.0", shell_output("#{bin}/wir --version")
  end
end
