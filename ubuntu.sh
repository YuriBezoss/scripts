for product in PhpStorm WebStorm DataGrip IntelliJIdea CLion PyCharm GoLand RubyMine; do
  echo "Resetting trial evaluation for $product..."

  rm -f ~/.config/JetBrains/$product*/eval/*.evaluation.key

  rm -f ~/.config/JetBrains/$product*/options/other.xml
done

rm -rf ~/.java/.userPrefs/jetbrains

echo "Done."