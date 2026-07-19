cask "razerstream" do
  version "1.5.1"
  sha256 "8e873cabe74c4827697832f602843d96763f561216086b51d34c873e215ff250"

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
