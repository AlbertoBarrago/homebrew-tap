class JavaManager < Formula
  desc "Switch between JDKs registered with macOS"
  homepage "https://github.com/AlbertoBarrago/java-manager"
  url "https://github.com/AlbertoBarrago/java-manager/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "4b2c0fc0997cf64738c423798d87b5b12392c20cdc5599c90e1680c5fd9e92cf"
  license "MIT"

  depends_on :macos

  def install
    bin.install "java_manager"
  end

  def caveats
    <<~EOS
      Enable shell integration by adding one of these lines to your shell configuration:

        Zsh:  eval "$(java_manager init zsh)"
        Bash: eval "$(java_manager init bash)"

      Restart the shell after updating its configuration.
    EOS
  end

  test do
    assert_match "java_manager()", shell_output("#{bin}/java_manager init zsh")
    assert_match "requires shell integration", shell_output("#{bin}/java_manager use 21 2>&1", 2)
  end
end
