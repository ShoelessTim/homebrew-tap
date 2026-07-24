cask "razerstream" do
  version "1.5.5"
  sha256 "da6358b3a001626d83250390d423dd9fd02fece801329580c7f8470fd96d8cba"

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
