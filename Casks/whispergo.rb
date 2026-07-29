cask "whispergo" do
  version "0.9.3"
  sha256 "bf68d32281dbf3e3d77419467954cee8aeb1ca8e50d276b73440a8ea984aab89"

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
