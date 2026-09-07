# Rendered by .github/workflows/release.yml and pushed to fabianmossberg/homebrew-tap.
class Fabpix < Formula
  desc "Search, preview and download stock photos from Pexels in your terminal"
  homepage "https://github.com/fabianmossberg/fabpix"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.3.0/fabpix-darwin-arm64.tar.gz"
      sha256 "e71ee67d9efa912b8b9cd69b3e82e41033283e976da059e9e435cac1d42b375d"
    end
    on_intel do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.3.0/fabpix-darwin-x64.tar.gz"
      sha256 "d30dc49260d6bc22802186f55ab154f4c26566031fe1faf58f4fef31952d26ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.3.0/fabpix-linux-arm64.tar.gz"
      sha256 "76d76615d884c2f453d4e1db25c2a5a07fe5e3bcecc8cee06f416e04ec0a03c0"
    end
    on_intel do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.3.0/fabpix-linux-x64.tar.gz"
      sha256 "e65c5016cbb95479c501c4f7508d3fda2d46d99e3c3bba7ef1336f218a0994dc"
    end
  end

  def install
    bin.install "fabpix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fabpix --version")
  end
end
