class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/philroli/oebb-monitor"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor-cli/releases/download/v0.2.3/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "816209829e3af971d23cb482f114a3908bf1a93a4168e540f223b054f2ae0aa8"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor-cli/releases/download/v0.2.3/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "83eb5fc499efea81bed4636c11a7a84ca6f5c4c04feeafaa468982e9c6b8a2a6"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
