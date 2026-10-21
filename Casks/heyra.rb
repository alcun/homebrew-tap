cask "heyra" do
  version "0.3.11"
  sha256 "4d57d99946435a3fecb01ed3428a844c61d1a5297cb91349906059549bd4f46a"

  url "https://github.com/alcun/heyra-desktop/releases/download/v#{version}/Heyra.zip"
  name "Heyra"
  desc "Hold fn, talk, let go: push-to-talk dictation that runs locally"
  homepage "https://github.com/alcun/heyra-desktop"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Heyra.app"

  zap trash: "~/Library/Application Support/Heyra"
end
