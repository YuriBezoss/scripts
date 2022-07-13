for product in PhpStorm WebStorm DataGrip IntelliJIdea CLion PyCharm GoLand RubyMine; do
  echo "Resetting evaluation period for $product..." 
  
  rm ~/Library/Application\ Support/JetBrains/$product*/eval/*.evaluation.key 
  
  rm ~/Library/Application\ Support/JetBrains/$product*/options/other.xml
done

rm ~/Library/Preferences/jetbrains.* 

rm ~/Library/Preferences/com.apple.java.util.prefs.plist

echo "Done."