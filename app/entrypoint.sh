#!/bin/bash
set -e

# server.pidの消去(Rails特有の問題)
rm -f /myapp/tmp/pids/server.pid

# Dockerfile内のCMDで定義したコマンドを実行
exec "$@"