cask "tessera" do
  version "0.20.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

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
