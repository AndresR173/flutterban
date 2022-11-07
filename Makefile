generate:
	flutter packages pub run build_runner build --delete-conflicting-outputs

watch:
	flutter packages pub run build_runner watch --delete-conflicting-outputs

app-ios:
	flutter build ipa --release

app-android:
	flutter build apk  --release

android-release:
	flutter build appbundle --release

app-web:
	flutter build web --web-renderer html