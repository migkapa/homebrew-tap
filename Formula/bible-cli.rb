class BibleCli < Formula
  desc "Fast, playful Bible CLI built in Rust"
  homepage "https://github.com/migkapa/bible-cli"
  url "https://github.com/migkapa/bible-cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "e1c778139c0e2d7264add5dba38f4c307a13bd9a6116ca0beb81820efa12738a"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "bible-cli", shell_output("#{bin}/bible --version")
  end
end
