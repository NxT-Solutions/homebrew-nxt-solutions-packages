cask "bronze" do
  version "0.1.2"

  on_arm do
    sha256 "2a8c61637e5c3833e2254ec92fd1fdcf24ba15616a57114e693e185fe1d3b028"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.1.2/bronze-macos-arm64.pkg"
  end

  on_intel do
    sha256 "6d454718d56f74199ea111aa1ac55e13c3b2a785c72fdea5bb5223041dab223b"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.1.2/bronze-macos-x86_64.pkg"
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
