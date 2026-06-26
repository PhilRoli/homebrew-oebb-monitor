class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/philroli/oebb-monitor"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor-cli/releases/download/v0.2.2/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "5e9bbe03c3e816400525475e0ecedfdbde0b5feb7aeede8de16d1aead1921b39"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor-cli/releases/download/v0.2.2/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a202380547844cee7e2749d57316f85f4fc13a11a549e0b8f6e0898d579941be"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
