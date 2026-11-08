cask "fingertip" do
  version "1.1.0"
  sha256 "79ced9788e7a10e03f397aba457db4039f4197e261b19283d920a0d38a1a0260"

  url "https://github.com/rockykusuma/Fingertip/releases/download/v#{version}/Fingertip-#{version}.dmg"
  name "Fingertip"
  desc "Pointing hand, annotations and spotlight for presenting your screen"
  homepage "https://rockykusuma.github.io/Fingertip/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Fingertip.app"

  uninstall quit: "in.rockykusuma.fingertip"

  zap trash: "~/Library/Preferences/in.rockykusuma.fingertip.plist"
end
