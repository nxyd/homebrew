cask "flclash" do
    version "0.8.69"
    sha256 "9f66791c9ccc482fa056ecc06e8e28959bc0687634c7536cfbfc7bc594540ca5"

    url "https://github.com/chen08209/FlClash/releases/download/v#{version}/FlClash-#{version}-macos-arm64.dmg"
    name "Flclash"
    desc "A multi-platform proxy client based on ClashMeta."
    homepage "https://github.com/chen08209/FlClash"

    auto_updates true
    livecheck do
      url :url
      strategy :github_latest
    end
  
    app "FlClash.app"
  
    uninstall quit: "com.follow.clash"

    zap trash: [
      "~/Library/Application Support/com.follow.clash",
      "~/Library/Caches/com.follow.clash",
      "~/Library/Logs/FlClash",
      "~/Library/Preferences/com.follow.clash.plist",
      "~/Library/LaunchAgents/FlClash.plist"
    ]
  end
