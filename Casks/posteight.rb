cask "posteight" do
  version "0.2.0"
  sha256 "6981b9932660e97aaf5d7fa458cf542253700d7c6be9e14e5faa9ffe9434ef93"

  url "https://github.com/hmjlon/posteight/releases/download/v#{version}/Posteight-#{version}.dmg"
  name "Posteight"
  desc "Private sticky notes for your Mac"
  homepage "https://github.com/hmjlon/posteight"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Posteight.app"

  zap trash: [
    "~/Library/Application Support/Posteight",
    "~/Library/Preferences/com.younjiyoung.posteight.plist",
  ]
end
