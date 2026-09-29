cask "bronze" do
  version "0.2.4"

  on_arm do
    sha256 "1e5d73714a7240a52efb6db4b3409195c99e60057d5e91789a45a32095fcaa73"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.2.4/bronze-macos-arm64.pkg"
  end

  on_intel do
    sha256 "9800d1fd0721f21119c57df97f72a99391b2ccfb287e7f33b644c4707506f0b9"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.2.4/bronze-macos-x86_64.pkg"
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
