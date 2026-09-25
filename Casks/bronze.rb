cask "bronze" do
  version "0.1.0"

  on_arm do
    sha256 "7001dfdd5054365dffceb9449d3807786c831149672a38cdde37d341dc4d1aca"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.1.0/bronze-macos-arm64.pkg"
  end

  on_intel do
    sha256 "63d567fa464c6b2f4fd32feed35f0622dd7e444648d9562e612a29f4fb38cefa"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.1.0/bronze-macos-x86_64.pkg"
  end

  name "Bronze"
  desc "Local-first macOS selection-to-action queue"
  homepage "https://github.com/NxT-Solutions/Bronze"

  depends_on macos: ">= :sonoma"

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
