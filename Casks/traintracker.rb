cask "traintracker" do
  version "1.0.0"
  sha256 "34aca3f9d0c29a1575161079c010e4d06c38d6e6523736f76efb717282d89edf"

  url "https://github.com/PhilRoli/traintracker/releases/download/v#{version}/TrainTracker-#{version}.app.zip"
  name "TrainTracker"
  desc "Menu bar app for tracking Austrian trains"
  homepage "https://github.com/PhilRoli/traintracker"

  app "TrainTracker.app"

  zap trash: [
    "~/Library/Preferences/traintracker.plist",
  ]

  caveats do
    <<~EOS
      TrainTracker is ad-hoc signed (not notarized). On first launch, right-click
      the app in Finder and choose "Open" to bypass Gatekeeper, or run:
        xattr -dr com.apple.quarantine /Applications/TrainTracker.app
    EOS
  end
end
