cask "tessera" do
  version "0.28.0"
  sha256 "9d940ea261d5b45083b4f241093c3a44baab8d8d0e1bdba020d3f40772722a1e"

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
