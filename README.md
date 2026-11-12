# CUBOT Android

An English-language Android app inspired by the official CUBOT website. The app opens a locally bundled, responsive mobile storefront with product categories, featured devices, About and Support sections.

## Build with Codemagic

The repository includes a `codemagic.yaml` workflow named `cubot-android`. It bootstraps Gradle 8.9 and builds an installable debug APK without requiring a signing key.

APK output: `app/build/outputs/apk/debug/app-debug.apk`

## App details

- Application ID: `com.cubot.mobile`
- Android entry point: `app/src/main/java/com/cubot/mobile/MainActivity.java`
- Local mobile interface: `app/src/main/assets/index.html`
- Build workflow: `codemagic.yaml`

Product names and feature summaries in the sample storefront are illustrative. Check the official CUBOT website for current specifications and availability.
