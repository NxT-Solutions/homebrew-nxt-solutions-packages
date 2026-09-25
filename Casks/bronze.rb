cask "bronze" do
  version "0.1.0"
  sha256 "3560e0e554c934556fc1048d4a06f3d73ca11c81643ab445c10dec14ed6ec875"

  url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.1.0/bronze-macos.pkg"
  name "Bronze"
  desc "Local-first macOS selection-to-action queue"
  homepage "https://github.com/NxT-Solutions/Bronze"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  pkg "bronze-macos.pkg"

  uninstall pkgutil: "app.bronze.desktop"

  caveats <<~EOS
    Bronze ships an arm64 package. Intel/universal2 stays Proposed (ADR-002).
    This cask does not claim Apple notarization.
  EOS
end
