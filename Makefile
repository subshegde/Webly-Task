# Declare targets that are not actual files
.PHONY: clean pg d b-i b-a rf build-ios build-android refresh

# Clean the build
clean:
	flutter clean

# Get pub dependencies
pg:
	flutter pub get

# List connected devices
d:
	flutter devices

# Build for iOS
b-i build-ios:
	flutter build ios

# Build for Android APK
b-a build-android:
	flutter build apk

# Clean and get pub packages
rf refresh:
	flutter clean && flutter pub get
