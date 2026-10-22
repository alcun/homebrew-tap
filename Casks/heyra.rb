cask "heyra" do
  version "0.4.0"
  sha256 "8a829258193ce6b4de8a917f9dc61b865660eaca6673b099fa71158ee9369a6d"

  url "https://github.com/alcun/heyra-desktop/releases/download/v#{version}/Heyra.zip"
  name "Heyra"
  desc "Hold fn, talk, let go: push-to-talk dictation that runs locally"
  homepage "https://github.com/alcun/heyra-desktop"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Heyra.app"

  zap trash: "~/Library/Application Support/Heyra"
end
