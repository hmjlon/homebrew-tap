cask "posteight" do
  version "0.1.0"
  sha256 "33cf79eae8d3b1d0efa0f385c33e71dbdc241b31cd4972f08b2a15fcaf6909ee"

  url "https://github.com/hmjlon/posteight/releases/download/v#{version}/Posteight-#{version}.dmg"
  name "Posteight"
  desc "Private sticky notes for your Mac"
  homepage "https://github.com/hmjlon/posteight"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Posteight.app"

  zap trash: [
    "~/Library/Application Support/Posteight",
    "~/Library/Preferences/com.younjiyoung.posteight.plist",
  ]
end
