
echo 'Running rebuild.sh'
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
echo 'Done rebuild.sh'