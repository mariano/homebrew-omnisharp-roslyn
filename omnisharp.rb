class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.4/omnisharp-osx-arm64-net6.0.tar.gz"
  version "1.35.3"
  sha256 "b8bb260d8c9295e55fcba7a408ae4d8ac0f5748d3868b61d4eda9af222d76c36"
  conflicts_with "omnisharp-mono"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
