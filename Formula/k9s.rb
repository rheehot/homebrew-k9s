# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9ss.io"
  url "https://github.com/derailed/k9s/releases/download/0.4.2/k9s_0.4.2_Darwin_x86_64.tar.gz"
  version "0.4.2"
  sha256 "6efd64ac3ac7827f6dcbe3d9b95d104d1568e1093f7fe586b6265b0327d10ec6"

  def install
    bin.install "k9s"
  end

  test do
    system "k9s version"
  end
end
