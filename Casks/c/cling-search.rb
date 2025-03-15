cask "cling-search" do
  version "1.2"
  sha256 "e7eccd22e780c8339b1a706e58ba46de59758d021ffd86c7d859f66ad1111382"

  url "https://files.lowtechguys.com/releases/Cling-#{version}.dmg"
  name "Cling"
  desc "Instant fuzzy find any file"
  homepage "https://lowtechguys.com/cling"

  livecheck do
    url "https://files.lowtechguys.com/cling/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Cling.app"

  uninstall quit:       "com.lowtechguys.Cling",
            login_item: ["com.lowtechguys.Cling", "Cling.app"]

  zap trash: [
    "~/Library/Application Scripts/com.lowtechguys.Cling",
    "~/Library/Caches/Cling",
    "~/Library/Caches/com.lowtechguys.Cling",
    "~/Library/HTTPStorages/com.lowtechguys.Cling",
    "~/Library/Preferences/com.lowtechguys.Cling.plist",
    "~/Library/Saved Application State/com.lowtechguys.Cling.savedState",
  ]
end
