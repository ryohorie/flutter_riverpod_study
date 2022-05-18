#!/bin/sh
cd `dirname $0`
.fvm/flutter_sdk/bin/flutter pub run build_runner build --delete-conflicting-outputs