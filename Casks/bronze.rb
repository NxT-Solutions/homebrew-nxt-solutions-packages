cask "bronze" do
  version "0.2.0"

  on_arm do
    sha256 "c246f9177176c020491a6e7064ef393451596fe863e5f19235ffa27caf4b0b73"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.2.0/bronze-macos-arm64.pkg"
  end

  on_intel do
    sha256 "cc173e2e2dd6f44b1c7eabe51295fdb6f317d0d35fbf731f11e71a9139b4b6ab"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.2.0/bronze-macos-x86_64.pkg"
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
