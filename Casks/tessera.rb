cask "tessera" do
  version "0.23.0"
  sha256 "08d664fd26d8b006c7af6c3a40ba2a989a53ec4d06044e0f79241c09637441e2"

  url "https://github.com/tedyno/Tessera/releases/download/v#{version}/Tessera-#{version}.dmg"
  name "Tessera"
  desc "Native database client for PostgreSQL, MySQL, MariaDB and SQLite"
  homepage "https://github.com/tedyno/Tessera"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Tessera.app"

  zap trash: [
    "~/Library/Application Support/io.github.tedyno.tessera",
    "~/Library/Caches/io.github.tedyno.tessera",
    "~/Library/Preferences/io.github.tedyno.tessera.plist",
    "~/Library/Saved Application State/io.github.tedyno.tessera.savedState",
  ]
end
