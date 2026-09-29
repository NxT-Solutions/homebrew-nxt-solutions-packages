cask "bronze" do
  version "0.2.3"

  on_arm do
    sha256 "b76824fae337e02108117f32bdcb2653a7012e75eeab6a84493ac7672c714b8c"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.2.3/bronze-macos-arm64.pkg"
  end

  on_intel do
    sha256 "ff8eb3777899da1d7c12b1d74ecbaf1c27a18e94a60cec7bd34674dd9013d413"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.2.3/bronze-macos-x86_64.pkg"
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
