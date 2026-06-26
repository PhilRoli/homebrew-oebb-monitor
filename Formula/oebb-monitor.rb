class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/philroli/oebb-monitor"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor-cli/releases/download/v0.2.4/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a2b48b1237064e7593162c8ad25b857bf71a26793adf3a8d4e01cc6a8bdd9d6a"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor-cli/releases/download/v0.2.4/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "af6939badfabe76ec32bd5e6cc63065719ca933c8a9c708cd4cd683f365b2022"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
