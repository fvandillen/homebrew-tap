# Florian van Dillen's Homebrew tap

Install [DiskInsight](https://github.com/fvandillen/diskinsight), a native macOS
disk usage analyser with a directory tree, file-type breakdown, and cushion treemap.

```bash
brew install --cask fvandillen/tap/diskinsight
open -a DiskInsight
```

Or add the tap first:

```bash
brew tap fvandillen/tap
brew install --cask diskinsight
```

Requires **macOS 14 (Sonoma) or later** and **Apple Silicon**.
The cask installs `DiskInsight.app` and the `diskinsight` command-line tool:

```bash
diskinsight --scan ~/Downloads --top=20
brew upgrade --cask diskinsight
brew uninstall --cask diskinsight
```

DiskInsight is ad-hoc signed, not Apple-notarized. If macOS blocks its first
launch, attempt to open it, then approve it in **System Settings > Privacy &
Security > Open Anyway**. Only approve a download you trust. Grant **Full Disk
Access** for complete scans, or use limited-access mode.

Release archives are hosted in the application repository; the cask verifies
their SHA-256 checksum. See [the release guide](https://github.com/fvandillen/diskinsight/blob/main/docs/releasing.md)
for updating the version and checksum.

This tap and DiskInsight are [MIT licensed](LICENSE).
