cask "heyra" do
  version "0.3.7"
  sha256 "6d454622d8cfbdbf0f4bd590b661568c2f48d858f28dd1430af2fce2f2a06c31"

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
