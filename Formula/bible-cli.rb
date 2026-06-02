class BibleCli < Formula
  desc "Fast, playful Bible CLI built in Rust"
  homepage "https://github.com/migkapa/bible-cli"
  url "https://github.com/migkapa/bible-cli/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "c097284d4921c70fcd71b7ff8ca88afc01457f31cb5005f71b77bae382de89ff"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "bible-cli", shell_output("#{bin}/bible --version")
  end
end
