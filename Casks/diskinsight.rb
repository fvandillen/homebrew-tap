cask "diskinsight" do
  version "1.0.0"
  sha256 "403d7e5632720018e5550a3a1c98b40ab81eb00df3ab0c1f3f5f8c8b07c1a917"

  url "https://github.com/fvandillen/diskinsight/releases/download/v#{version}/DiskInsight-#{version}-arm64.zip"
  name "DiskInsight"
  desc "Native macOS disk usage analyser with a cushion treemap"
  homepage "https://github.com/fvandillen/diskinsight"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "DiskInsight.app"
  binary "#{appdir}/DiskInsight.app/Contents/MacOS/DiskInsight", target: "diskinsight"

  caveats do
    <<~EOS
      DiskInsight is ad-hoc signed, not Apple-notarized.
      If macOS blocks first launch, use System Settings > Privacy & Security >
      Open Anyway after attempting to open the app. Only approve downloads you trust.
      Grant Full Disk Access in System Settings for complete disk scans.
    EOS
  end
end
