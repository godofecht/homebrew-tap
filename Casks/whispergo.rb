cask "whispergo" do
  version "0.8.0"
  sha256 "8c757f7dea910d7e6f21c94c7494998a2a5c1e08c8f4a60d5f01c8fd506787ee"

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
