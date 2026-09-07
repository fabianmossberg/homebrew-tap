# Rendered by .github/workflows/release.yml and pushed to fabianmossberg/homebrew-tap.
class Fabpix < Formula
  desc "Search, preview and download stock photos from Pexels in your terminal"
  homepage "https://github.com/fabianmossberg/fabpix"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.2.0/fabpix-darwin-arm64.tar.gz"
      sha256 "e5d9ff868ef700339162b38f689ca4d8f392e77064a8acc836bdb12f526f7fbf"
    end
    on_intel do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.2.0/fabpix-darwin-x64.tar.gz"
      sha256 "d2031aa86e831292e5ae08ffc38fec3bf42e5c1c78e216432e8956af9f18ab81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.2.0/fabpix-linux-arm64.tar.gz"
      sha256 "9048fd9feb3472612d10366d124827421d2e8cf432e1dda4f2a656796465a358"
    end
    on_intel do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.2.0/fabpix-linux-x64.tar.gz"
      sha256 "27e9816499c9ccf17da225ba736c104a505a22c109b04480b566e87d33352215"
    end
  end

  def install
    bin.install "fabpix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fabpix --version")
  end
end
