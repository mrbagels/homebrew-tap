class Ledger < Formula
  desc "Repo-native change memory for humans and coding agents"
  homepage "https://github.com/kylebegeman/ledger"
  url "https://registry.npmjs.org/@kylebegeman/ledger/-/ledger-0.1.12.tgz"
  sha256 "15faf115209467e12b057eb11881a7f1aa035f27a34dac9bf38acf452b26ce99"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "--ignore-scripts"
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "ledger 0.1.12", shell_output("#{bin}/ledger version")
  end
end
