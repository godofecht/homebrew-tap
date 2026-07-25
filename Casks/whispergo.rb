cask "whispergo" do
  version "0.9.2"
  sha256 "0a8d9d3fb15436992de053a002d63b7037d7f2c341bb178972d228d83177b8de"

  url "https://quilio.dev/downloads/WhisperGo-#{version}-macOS-arm64.dmg"
  name "WhisperGo"
  desc "Local push-to-talk dictation. Hold a key, speak, release"
  homepage "https://quilio.dev/whispergo"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "WhisperGo.app"

  zap trash: [
    "~/Library/Application Support/whispergo",
  ]

  caveats <<~EOS
    WhisperGo runs free for 14 days on first launch, no account needed.
    After that, a license unlocks dictation, sold at
    https://quilio.dev/whispergo.

    On first launch, grant Microphone, Accessibility, and Input
    Monitoring in System Settings, then relaunch the app.
  EOS
end
