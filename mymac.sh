sudo pmset -a standbydelay 86400
sudo pmset -a hibernatemode 7
#sudo pmset -a hibernatemode 25
sudo nvram SystemAudioVolume=" "
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
defaults write com.apple.CrashReporter DialogType -string "none"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
chflags nohidden ~/Library
defaults write com.apple.dashboard mcx-disabled -bool true
defaults write com.apple.dock dashboard-in-overlay -bool true
