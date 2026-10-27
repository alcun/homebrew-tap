cask "alt-tabber" do
  version "0.2.0"
  sha256 "e31f4d8787992d0fb521ba7e32b5dd51ef187d1a34682cea3a5b90aa90d1981c"

  url "https://github.com/alcun/alt-tabber/releases/download/v#{version}/AltTabber.zip"
  name "alt-tabber"
  desc "Windows-style alt-tab window switcher, free with nothing to upgrade"
  homepage "https://github.com/alcun/alt-tabber"

  depends_on macos: :sonoma

  app "AltTabber.app"

  uninstall quit:       "io.github.alcun.alttabber",
            login_item: "AltTabber"

  zap trash: "~/Library/Preferences/io.github.alcun.alttabber.plist"
end
