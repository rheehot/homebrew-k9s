# This file was generated by GoReleaser. DO NOT EDIT.
class K9s < Formula
  desc "Kubernetes CLI To Manage Your Clusters In Style!"
  homepage "https://k9ss.io"
  version "0.11.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/derailed/k9s/releases/download/0.11.2/k9s_0.11.2_Darwin_x86_64.tar.gz"
    sha256 "efff2056d519c0664fb895794ffcd4589f27ea9baedea8dbbd82d3721e4374fa"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/derailed/k9s/releases/download/0.11.2/k9s_0.11.2_Linux_x86_64.tar.gz"
      sha256 "3955ee895f5359568bc17225b19b68fea71d8bd7b82cb603f755020d43064d4d"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/k9s/releases/download/0.11.2/k9s_0.11.2_Linux_arm64.tar.gz"
        sha256 "e3f5b6e1900290c0a23fb4cd3c67b7fd9dac14c38e38200a1f6e9f91214bd92c"
      else
        url "https://github.com/derailed/k9s/releases/download/0.11.2/k9s_0.11.2_Linux_armv6.tar.gz"
        sha256 "55a92b6762862bdbe7d0de5038a94c889b094549987815f062de7a88925f4db1"
      end
    end
  end

  def install
    bin.install "k9s"
  end

  test do
    system "k9s version"
  end
end
