# homebrew-tap

[Posteight](https://github.com/hmjlon/posteight) 를 위한 Homebrew tap.

```bash
brew install --cask hmjlon/tap/posteight && xattr -dr com.apple.quarantine /Applications/Posteight.app
```

## 뒤에 붙은 xattr 은 무엇인가

Posteight 는 아직 Apple 공증을 받지 않았다. Homebrew 는 내려받은 앱에 격리 속성을
붙이고, macOS 는 그 속성이 붙은 공증되지 않은 앱의 첫 실행을 막는다. `xattr` 한 줄이
그 속성을 떼어 낸다. 앱을 처음 열기 전에 실행하면 된다.

`brew upgrade` 로 새 버전을 받을 때마다 다시 필요하다. ad-hoc 서명은 빌드마다 서명이
달라져서, macOS 는 새 버전이 이미 승인한 그 앱인지 알아보지 못한다.

## 터미널 대신 시스템 설정을 쓴다면

두 단계가 **연달아** 일어나야 한다.

1. Posteight 를 연다. 경고가 뜨고 실행이 거부된다.
2. **곧바로** 시스템 설정 > 개인정보 보호 및 보안 을 열고 보안 항목까지 내려간다.
3. **그래도 열기** 를 누르고 인증한다.

Apple 은 이 버튼을 차단된 실행 이후 **약 1시간 동안만** 보여 준다. 버튼이 보이지
않으면 Posteight 를 한 번 더 열고 바로 다시 들어간다. 앱을 Control-클릭해서 여는 예전
우회는 macOS 15 부터 없어졌다.

요구 사항: macOS 14 (Sonoma) 이상, Apple Silicon 전용.
