cask "whispergo" do
  version "0.5.0"
  sha256 "99c37a14c5ddee5335aa5a041582770718b8b4e0cb799cff85b2c19562c01422"

  url "https://quilio.dev/downloads/WhisperGo-#{version}-macOS-arm64.zip"
  name "WhisperGo"
  desc "Local push-to-talk dictation. Hold a key, speak, release"
  homepage "https://quilio.dev/store"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "WhisperGo.app"

  zap trash: [
    "~/Library/Application Support/whispergo",
  ]

  caveats <<~EOS
    WhisperGo requires a license, sold at https://quilio.dev/store.
    The app installs and runs; dictation unlocks after activation.

    On first launch, grant Microphone, Accessibility, and Input
    Monitoring in System Settings, then relaunch the app.
  EOS
end
