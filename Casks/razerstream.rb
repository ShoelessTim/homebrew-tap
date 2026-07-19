cask "razerstream" do
  version "1.4.73"
  sha256 "347bcef6ec6a9806271d09cc4bfe90a496069a925460d120df9e76908acc24ae"

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
