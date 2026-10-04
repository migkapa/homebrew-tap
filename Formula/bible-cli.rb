class BibleCli < Formula
  desc "Fast, playful Bible CLI built in Rust"
  homepage "https://github.com/migkapa/bible-cli"
  url "https://github.com/migkapa/bible-cli/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "9e3ba8405d78261007958f024b43cbb2f6717cc8f246652abc9957d1df5a219f"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "bible-cli", shell_output("#{bin}/bible --version")
  end
end
