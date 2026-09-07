# Rendered by .github/workflows/release.yml and pushed to fabianmossberg/homebrew-tap.
class Fabpix < Formula
  desc "Search, preview and download stock photos from Pexels in your terminal"
  homepage "https://github.com/fabianmossberg/fabpix"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.1.1/fabpix-darwin-arm64.tar.gz"
      sha256 "0df68fa9ae29025ae5847c3f8d19ba88f05eec9a2990cf7157616b58b69b731a"
    end
    on_intel do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.1.1/fabpix-darwin-x64.tar.gz"
      sha256 "bedbd1128e3c8118a554a81194b0de04f2801f48386ba21975f70073a9debc9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.1.1/fabpix-linux-arm64.tar.gz"
      sha256 "ddfe440f6c2ab4d16ff5cbd33072b12dd92263570cd409d26665b8ff17c1f25b"
    end
    on_intel do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.1.1/fabpix-linux-x64.tar.gz"
      sha256 "204730fc3a21ecc4ffc9c44722654429b971e6c9b8040f4d2c78d6ee6c1a4f7b"
    end
  end

  def install
    bin.install "fabpix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fabpix --version")
  end
end
