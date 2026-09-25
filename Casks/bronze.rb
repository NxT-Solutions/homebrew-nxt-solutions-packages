cask "bronze" do
  version "0.1.0"

  on_arm do
    sha256 "e8d9d8352bff479f79758b6d6f87b08ec363ca248f22b126efdab584609ff64e"

    url "https://github.com/NxT-Solutions/Bronze/releases/download/v0.1.0/bronze-macos-arm64.pkg"
  end

  on_intel do
    sha256 "e5bb0c80cd9a8b0e8782a6772b8493c1b44570e1149f9e01801ffa5c570f8287"

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
