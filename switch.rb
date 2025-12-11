class Switch < Formula
  desc "The kubectx for operators."
  homepage "https://github.com/academician/kubeswitch"
  version "v0.9.4-academician.0"
  url "https://github.com/academician/kubeswitch/releases/download/v0.9.4-academician.0/switch.sh"
  sha256 "sha256:661609a860ac75377423656c878e904d8b0ba4fd5613717e43d6499ad76e233b"

  depends_on "academician/switch/switcher"

  def install
    prefix.install "switch.sh"
  end

  test do
    system "#{bin}/switch", "-h"
  end
end
