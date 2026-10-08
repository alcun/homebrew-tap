cask "heyra" do
  version "0.3.10"
  sha256 "f7ab9b53ffce9fece7ff42755463c3a4fe4c54eeae4277a0807ccf32c626ce0a"

  url "https://github.com/alcun/heyra-desktop/releases/download/v#{version}/Heyra.zip"
  name "Heyra"
  desc "Hold fn, talk, let go: push-to-talk dictation that runs locally"
  homepage "https://github.com/alcun/heyra-desktop"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Heyra.app"

  zap trash: "~/Library/Application Support/Heyra"
end
