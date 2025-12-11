class Switcher < Formula
  desc "Providing the binary executable for the 'switch' script."
  homepage "https://github.com/academician/kubeswitch"
  version "v0.9.4-academician.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/academician/kubeswitch/releases/download/v0.9.4-academician.0/switcher_darwin_arm64"
      sha256 "d59ffca7501da3add687b9cf7c734b0847aec8687ad63b79ee629401e88da794"
    else
      url "https://github.com/academician/kubeswitch/releases/download/v0.9.4-academician.0/switcher_darwin_amd64"
      sha256 "5e6dbe81c19afd56e48049217f5c7c0342d0c00a4172d8cd87392f167532bf81"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/academician/kubeswitch/releases/download/v0.9.4-academician.0/switcher_linux_arm64"
      sha256 "52d3b63e441678ea297c2c5fe0ce04cc313bf777ef9712ed9bacd0edba886cb4"
    else
      url "https://github.com/academician/kubeswitch/releases/download/v0.9.4-academician.0/switcher_linux_amd64"
      sha256 "c7d0a0ff52f9fb81e669ab2c5f56f3071c59ba4d5a0f488e4452bc0785a078ff"
    end
  end

  def install
      if OS.mac?
        if Hardware::CPU.arm?
          bin.install "switcher_darwin_arm64"
          mv bin/"switcher_darwin_arm64", bin/"switcher"
        else
          bin.install "switcher_darwin_amd64"
          mv bin/"switcher_darwin_amd64", bin/"switcher"
        end
      elsif OS.linux?
        if Hardware::CPU.arm?
          bin.install "switcher_linux_arm64"
          mv bin/"switcher_linux_arm64", bin/"switcher"
        else
          bin.install "switcher_linux_amd64"
          mv bin/"switcher_linux_amd64", bin/"switcher"
        end
      end
  end

  test do
    system "#{bin}/switcher", "-h"
  end
end
