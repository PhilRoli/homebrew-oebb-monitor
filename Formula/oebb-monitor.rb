class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/philroli/oebb-monitor"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor-cli/releases/download/v0.2.1/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d2b98f68275547ebc3a42205352fa4b1b562630d3b6caf014755e5a93c6020d3"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor-cli/releases/download/v0.2.1/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "45e367494bfe48beab41f1fd1f0e197fe4b84bb69bef21af8d948a73030df83e"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
