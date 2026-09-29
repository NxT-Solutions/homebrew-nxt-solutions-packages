cask "bronze" do
  version "0.2.2"

  on_arm do
    sha256 "79a6f9d26fba5983b1c245ba4f593d40284e5f477b49be5a1cc7739e09130641"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.2.2/bronze-macos-arm64.pkg"
  end

  on_intel do
    sha256 "692badf58524a0ba77e536d9d680ea4b82bf398c2d82a688c9e79a8ad7e9284e"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.2.2/bronze-macos-x86_64.pkg"
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
