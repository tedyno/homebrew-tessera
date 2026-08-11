cask "tessera" do
  version "0.21.0"
  sha256 "67c29ef7a010a6f658a184cc8b89827ffc371081626f3a989397b7f37f42a4f8"

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
