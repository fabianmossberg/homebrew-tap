# Rendered by .github/workflows/release.yml and pushed to fabianmossberg/homebrew-tap.
class Fabpix < Formula
  desc "Search, preview and download stock photos from Pexels in your terminal"
  homepage "https://github.com/fabianmossberg/fabpix"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.1.0/fabpix-darwin-arm64.tar.gz"
      sha256 "221fb285a5ffb7bcda3d0f4425d47853ec33efb9699ee3e09f9cd171e550dd1e"
    end
    on_intel do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.1.0/fabpix-darwin-x64.tar.gz"
      sha256 "8dadc638a8ab7fd7d42b294909158c897eaf3370e012c1ce93f21a3fcdbf25c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.1.0/fabpix-linux-arm64.tar.gz"
      sha256 "5aa84afacd5453be962a1ea9da718f9e4b322d6c87dad6da03bed4e278f808cb"
    end
    on_intel do
      url "https://github.com/fabianmossberg/fabpix/releases/download/v0.1.0/fabpix-linux-x64.tar.gz"
      sha256 "4381cbd665e9c29e301fc023df54bb0d91d48773c8ba35b3687017a7aa27fc2c"
    end
  end

  def install
    bin.install "fabpix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fabpix --version")
  end
end
