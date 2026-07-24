cask "whispergo" do
  version "0.4.0"
  sha256 "8ef9226b3b66fff2db4dc5dabc7a372ea4a48a91665b2befbd98f3f1633a5b7d"

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
