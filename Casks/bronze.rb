cask "bronze" do
  version "0.1.1"

  on_arm do
    sha256 "ec9e25655bc30cc72c691e88aecf271028c90dc77d3cc32511c3cb602419111c"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.1.1/bronze-macos-arm64.pkg"
  end

  on_intel do
    sha256 "585142865ad9465085e554b7c29ba1fbc7fa95115a147e24f91b2abcfc69e6e7"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.1.1/bronze-macos-x86_64.pkg"
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
