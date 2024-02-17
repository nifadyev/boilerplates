#! /bin/bash

# sudo dnf install android-tools

# Write list of apps to file
# adb shell "pm list packages" | sed 's/^package://' > installed_apps.txt

# Find F-Droid apps and write them in txt file
while read -r app; do
    suggested_version_code="$(curl --silent "https://f-droid.org/api/v1/packages/${app}" | jq -r ".suggestedVersionCode")"
    if [[ "$suggested_version_code" != null ]]; then
        echo "F-Droid app found: ${app}"
        echo "${app}_${suggested_version_code}" >> fdroid_apps.txt
    fi
done < installed_apps.txt

# Download APKs
while read -r app; do
    echo "Downloading ${app}"
    curl --silent "https://f-droid.org/repo/${app}.apk" --output "apks/${app}.apk"
done < fdroid_apps.txt

# Install APKs via ADB
while read -r app; do
    echo "Installing ${app}"
    adb install "apks/${app}.apk"
done < fdroid_apps.txt