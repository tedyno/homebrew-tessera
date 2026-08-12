cask "tessera" do
  version "0.26.0"
  sha256 "3f4bd3ffa1b22f661bb447abc5d8d1c9c0afa2793fece4126fb2bd6cd4263764"

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
