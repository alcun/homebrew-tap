cask "heyra" do
  version "0.5.1"
  sha256 "231468fd20aa48c4ea2fac9f9ad2ade8e8c43313b66f6974a9ccde1e8288c3c0"

  url "https://github.com/alcun/heyra-desktop/releases/download/v#{version}/Heyra.zip"
  name "Heyra"
  desc "Hold fn, talk, let go: push-to-talk dictation that runs locally"
  homepage "https://github.com/alcun/heyra-desktop"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Heyra.app"

  zap trash: "~/Library/Application Support/Heyra"
end
