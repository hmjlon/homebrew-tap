cask "posteight" do
  version "0.2.0"
  sha256 "6981b9932660e97aaf5d7fa458cf542253700d7c6be9e14e5faa9ffe9434ef93"

  url "https://github.com/hmjlon/posteight/releases/download/v#{version}/Posteight-#{version}.dmg"
  name "Posteight"
  desc "Floating sticky notes that stay out of screen shares"
  homepage "https://github.com/hmjlon/posteight"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Posteight.app"

  # 앱은 샌드박스라 노트도 설정도 컨테이너 안에 있다. 아래 두 경로는 샌드박스
  # 이전 설치에만 남아 있는 것이라, 컨테이너가 빠지면 zap 이 아무것도 지우지 못한다.
  zap trash: [
    "~/Library/Application Support/Posteight",
    "~/Library/Containers/com.younjiyoung.posteight",
    "~/Library/Preferences/com.younjiyoung.posteight.plist",
  ]
end
