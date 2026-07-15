cask "razerstream" do
  version "1.0.0"
  sha256 "68e18c4892d05b98716145d55757fb6d12e6840de683058886c810287df0b698"

  url "https://github.com/ShoelessTim/RazerStream/releases/download/v#{version}/RazerStream-v#{version}.zip"
  name "RazerStream"
  desc "Control app for the Razer Stream Controller; community replacement for the retired Loupedeck software"
  homepage "https://github.com/ShoelessTim/RazerStream"

  depends_on macos: ">= :sonoma"

  app "RazerStream.app"

  zap trash: [
    "~/Library/Application Support/RazerStream",
  ]

  caveats <<~EOS
    Keystrokes and media keys need the macOS Accessibility permission;
    RazerStream shows a prompt on first use.
  EOS
end
