cask "flclash" do
    version "0.8.69"
    sha256 "76c3c02ec4f0f4566e15efaeeb5032889a7ee2c0f60a7b5efffe8d578334eefa"

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
  
    uninstall quit: "com.follow.clash",
              delete: [
                "~/Library/LaunchAgents/FlClash.plist",
              ]

    zap trash: [
      "~/Library/Application Support/com.follow.clash",
      "~/Library/Caches/com.follow.clash",
      "~/Library/Logs/FlClash",
      "~/Library/Preferences/com.follow.clash.plist",
    ]
  end
