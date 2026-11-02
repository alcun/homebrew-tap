cask "heyra" do
  version "0.6.0"
  sha256 "62638860209cffed0f68f231f095fe6835172a5611cf4da0f737746bc2bd48b0"

  url "https://github.com/alcun/heyra-desktop/releases/download/v#{version}/Heyra.zip"
  name "Heyra"
  desc "Hold fn, talk, let go: push-to-talk dictation that runs locally"
  homepage "https://github.com/alcun/heyra-desktop"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Heyra.app"

  zap trash: "~/Library/Application Support/Heyra"
end
