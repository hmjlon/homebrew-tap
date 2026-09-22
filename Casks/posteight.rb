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

  # 공증 전까지는 brew 로 깔아도 첫 실행이 막힌다. 앱이 안 열릴 때까지 아무 안내도
  # 못 받는 일이 없도록, 설치 직후 떼어 내는 방법을 여기서 알려 준다.
  caveats <<~EOS
    Posteight is not notarized by Apple yet, so macOS blocks its first launch.
    Clear the quarantine flag before opening it:

      xattr -dr com.apple.quarantine /Applications/Posteight.app

    This is needed again after every `brew upgrade`: Posteight is signed ad-hoc, so
    its signature changes with each build and macOS cannot tell the new version is
    the app you already approved.
  EOS
end
