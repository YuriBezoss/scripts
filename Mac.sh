#!/bin/bash

echo "removing evaluation key"
rm ~/.IntelliJIdea15/config/eval/idea15.evaluation.key
# for mac go to: /Users/username/Library/Preferences/IntelliJIdea2016.3/eval/idea163.evaluation.key

echo "resetting evalsprt in options.xml"
sed -i '/evlsprt/d' ~/.IntelliJIdea15/config/options/options.xml
# for mac go to: /Users/lzhoucs/Library/Preferences/IntelliJIdea2016.3/options/options.xml

echo "resetting evalsprt in prefs.xml"
sed -i '/evlsprt/d' ~/.java/.userPrefs/prefs.xml
# for windows, delete HKEY_CURRENT_USER\Software\JavaSoft\Prefs\jetbrains\idea
# for mac
defaults delete com.apple.java.util.prefs 2> /dev/null

for f in ~/Library/Preferences/jetbrains.*.plist; do
    if [[ -f $f ]]; then
        fn=${f##*/}; key=${fn%.plist}
        echo delete $key from pref and file $f
        defaults delete "${fn%.plist}" 2>/dev/null && rm "$f"
    fi
done