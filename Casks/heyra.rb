cask "heyra" do
  version "0.2.0"
  sha256 "2fc4e6a0b05dfd228c5790da7566831baaf43cff4d63ffddf2a624eff433e4ba"

  url "https://github.com/alcun/heyra-desktop/releases/download/v#{version}/Heyra.zip"
  name "Heyra"
  desc "Hold fn, talk, let go: push-to-talk dictation that runs locally"
  homepage "https://github.com/alcun/heyra-desktop"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Heyra.app"

  # Signed but not notarized yet, so lift the download quarantine that would
  # make macOS refuse to open it.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Heyra.app"]
  end

  zap trash: "~/Library/Application Support/Heyra"
end
