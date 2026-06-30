class Dossier < Formula
  desc "Generate self-contained, agent-readable HTML dossiers"
  homepage "https://github.com/mrbagels/dossier"
  url "https://github.com/mrbagels/dossier/archive/refs/tags/v0.6.2.tar.gz"
  sha256 "4b883bc204f0a086b18867c5d1a531030be57cb688fd390a99c4efd6b1524526"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    output = shell_output("#{bin}/dossier --help")
    assert_match "dossier build", output
  end
end
