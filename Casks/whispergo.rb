cask "whispergo" do
  version "0.6.0"
  sha256 "ff7eb098154ab9c07840f343cfb9a950e6acc8654b11267f6c17a00d9e4b6b7f"

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
