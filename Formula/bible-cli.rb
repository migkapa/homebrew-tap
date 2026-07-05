class BibleCli < Formula
  desc "Fast, playful Bible CLI built in Rust"
  homepage "https://github.com/migkapa/bible-cli"
  url "https://github.com/migkapa/bible-cli/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "bea0bd169228ed59f45518da3029f4909ccaefa5294932182889182b8978db9f"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "bible-cli", shell_output("#{bin}/bible --version")
  end
end
