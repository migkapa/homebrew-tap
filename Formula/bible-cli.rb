class BibleCli < Formula
  desc "Fast, playful Bible CLI built in Rust"
  homepage "https://github.com/migkapa/bible-cli"
  url "https://github.com/migkapa/bible-cli/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "f1485de2a03e4f49d65038ebfdbe49532b919fac4abc307411eac7ec9511b1f7"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "bible-cli", shell_output("#{bin}/bible --version")
  end
end
