cask 'azure-data-studio' do
  version '1.13.0'
  sha256 'bba61d1ee62ede62b79508e752c2b8cb57fa6eaf0887663beffd334fd228e86a'

  # github.com/Microsoft/azuredatastudio was verified as official when first introduced to the cask
  url "https://github.com/Microsoft/azuredatastudio/releases/download/#{version}/azuredatastudio-macos-#{version}.zip"
  appcast 'https://github.com/Microsoft/azuredatastudio/releases.atom'
  name 'Azure Data Studio'
  homepage 'https://docs.microsoft.com/en-us/sql/azure-data-studio/'

  auto_updates true

  app 'Azure Data Studio.app'
  binary "#{appdir}/Azure Data Studio.app/Contents/Resources/app/bin/code", target: 'azuredatastudio'

  zap trash: [
               '~/Library/Application Support/azuredatastudio',
               '~/Library/Preferences/com.azuredatastudio.oss.helper.plist',
               '~/Library/Preferences/com.azuredatastudio.oss.plist',
               '~/Library/Saved Application State/com.azuredatastudio.oss.savedState',
             ]
end
