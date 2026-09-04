# homebrew-tap

[Posteight](https://github.com/hmjlon/posteight) 를 위한 Homebrew tap.

```bash
brew install --cask hmjlon/tap/posteight
```

## 처음 열 때

Posteight 는 아직 Apple 공증을 받지 않아 macOS 가 첫 실행을 한 번 막는다.
시스템 설정 > 개인정보 보호 및 보안 에서 **그래도 열기** 를 누르거나,
터미널에서 아래 한 줄을 실행한다.

```bash
xattr -dr com.apple.quarantine /Applications/Posteight.app
```

공증 전까지는 `brew upgrade` 로 새 버전을 받을 때마다 이 단계가 한 번씩 더
필요하다. ad-hoc 서명은 빌드마다 서명이 달라져서 Homebrew 가 이전에 승인한
앱과 같은 앱이라고 판단하지 못한다.

요구 사항: macOS 14 (Sonoma) 이상, Apple Silicon 전용.
