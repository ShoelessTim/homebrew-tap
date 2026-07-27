cask "razerstream" do
  version "1.7.0"
  sha256 "5cc995cff79ee89bdd5c659d80e5b810b1ef5dc6e8d2a0b95b3e79ff54ee10a5"

  url "https://github.com/ShoelessTim/RazerStream/releases/download/v#{version}/RazerStream-v#{version}.zip"
  name "RazerStream"
  desc "Control app for the Razer Stream Controller; community replacement for the retired Loupedeck software"
  homepage "https://github.com/ShoelessTim/RazerStream"

  depends_on macos: :sonoma

  app "RazerStream.app"

  zap trash: [
    "~/Library/Application Support/RazerStream",
  ]

  caveats <<~EOS
    Keystrokes and media keys need the macOS Accessibility permission;
    RazerStream shows a prompt on first use.
  EOS
end
