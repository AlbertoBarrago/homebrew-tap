class Jm < Formula
  desc "Switch between JDKs registered with macOS"
  homepage "https://github.com/AlbertoBarrago/JM"
  url "https://github.com/AlbertoBarrago/JM/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "d533986e7a112c08028a496daf445868853a24e3cbf8c59d257ac7ab507e1342"
  license "MIT"

  depends_on :macos

  def install
    bin.install "jm"
  end

  def caveats
    <<~EOS
      Enable shell integration by adding one of these lines to your shell configuration:

        Zsh:  eval "$(jm init zsh)"
        Bash: eval "$(jm init bash)"

      Restart the shell after updating its configuration.
    EOS
  end

  test do
    assert_match "jm()", shell_output("#{bin}/jm init zsh")
    assert_match "requires shell integration", shell_output("#{bin}/jm use 21 2>&1", 2)
  end
end
