cask "bronze" do
  version "0.2.5"

  on_arm do
    sha256 "1a15ccfb82a6cbc1321fa265a724d6ef414800d5c9e31016f77e9cfe43b6a00e"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.2.5/bronze-macos-arm64.pkg"
  end

  on_intel do
    sha256 "72239142468caa270b3582ceeae32b4e091ba97347c5014613f0cc53b46be8be"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.2.5/bronze-macos-x86_64.pkg"
  end

  name "Bronze"
  desc "Local-first macOS selection-to-action queue"
  homepage "https://github.com/NxT-Solutions/Bronze"

  depends_on macos: :sonoma

  on_arm do
    pkg "bronze-macos-arm64.pkg"
  end

  on_intel do
    pkg "bronze-macos-x86_64.pkg"
  end

  uninstall pkgutil: "app.bronze.desktop"

  caveats <<~EOS
    Bronze ships named arm64 and Intel packages (ADR-002 Accepted).
    This cask does not claim Apple notarization.
  EOS
end
