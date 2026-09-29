cask "bronze" do
  version "0.2.1"

  on_arm do
    sha256 "6fefd99cbd4429e8f0c9bdf315bde527b03f7d04ab9a00c0fce9990cef2e9899"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.2.1/bronze-macos-arm64.pkg"
  end

  on_intel do
    sha256 "fb4c53287ae27098d3235a5c0b9490451e9caa1a70d2183a02b599ae1321ca98"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.2.1/bronze-macos-x86_64.pkg"
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
