class Dossier < Formula
  desc "Generate self-contained, agent-readable HTML dossiers"
  homepage "https://github.com/kylebegeman/dossier"
  url "https://github.com/kylebegeman/dossier/archive/refs/tags/v0.6.5.tar.gz"
  sha256 "6f637f9f3b91963e462e5b4d7088c366b1e2a421a4cda2eeb7df7924cb1b606b"
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
