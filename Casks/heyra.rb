cask "heyra" do
  version "0.5.0"
  sha256 "b69d2cdb4d557d26b01ddc03cef05c6d0e8d9feaeba42e026d8ae6c11422dbc0"

  url "https://github.com/alcun/heyra-desktop/releases/download/v#{version}/Heyra.zip"
  name "Heyra"
  desc "Hold fn, talk, let go: push-to-talk dictation that runs locally"
  homepage "https://github.com/alcun/heyra-desktop"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Heyra.app"

  zap trash: "~/Library/Application Support/Heyra"
end
