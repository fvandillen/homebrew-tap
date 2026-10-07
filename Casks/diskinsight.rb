cask "diskinsight" do
  version "1.0.1"
  sha256 "957692a88dea6b3b3f2d6ac1347b41310a4f1a05eded6980d8c6f4762784a1ab"

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
      Grant Full Disk Access in System Settings to include protected user data.
    EOS
  end
end
