# To install:
#   brew tap dim-an/cod
#   brew install cod
#
# To remove:
#   brew uninstall cod
#   brew untap dim-an/cod

class cod < Formula
  version 'v0.1.0'
  desc "Cod"
  homepage "https://github.com/dim-an/cod"

  if OS.mac?
    url "https://github.com/dim-an/cod/releases/download/#{version}/cod-darwin-#{version}-amd64.tgz"
    sha256 "b15be6b16709d226c82c4490b01a0a64374be7056f2a136bc6a9362d16b09453"
  elsif OS.linux?
    url "https://github.com/dim-an/cod/releases/download/#{version}/cod-linux-#{version}-amd64.tgz"
    sha256 "d1a422828322cd59d747df4e21281a9c8e0345dfc6e5c0d3e73e3b780c32a2e0"
  end

  def install
    bin.install "cod"
  end

  def caveats
    <<~EOS
      ONE MORE STEP!

      Add the following to the end of your ~/.bashrc, ~/.zshrc, or ~/.config/fish/config.fish file.

      Bash:
        source <(cod init $$ bash)

      Zsh:
        source <(cod init $$ zsh)

      Fish:
        cod init %self fish | source
    EOS
  end
end
