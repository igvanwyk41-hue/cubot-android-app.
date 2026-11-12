#!/usr/bin/env bash
set -euo pipefail
GRADLE_VERSION="8.9"
GRADLE_HOME_DIR="${HOME}/.gradle/cubot-gradle-${GRADLE_VERSION}"
if [ ! -x "${GRADLE_HOME_DIR}/bin/gradle" ]; then
  mkdir -p "${GRADLE_HOME_DIR}"
  ARCHIVE="/tmp/gradle-${GRADLE_VERSION}-bin.zip"
  curl -fsSL "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" -o "${ARCHIVE}"
  unzip -q -o "${ARCHIVE}" -d "${GRADLE_HOME_DIR}"
  mv "${GRADLE_HOME_DIR}/gradle-${GRADLE_VERSION}" "${GRADLE_HOME_DIR}/dist"
fi
exec "${GRADLE_HOME_DIR}/dist/bin/gradle" "$@"
