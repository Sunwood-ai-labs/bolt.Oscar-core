# start.ps1

# bindings.ps1 を実行してバインディング配列を取得
$bindings = & .\bindings.ps1

# 取得したバインディングを確認（デバッグ用）
Write-Host "Using bindings: $bindings"

# wrangler コマンドを実行し、バインディング配列を引数として渡す
wrangler pages dev ./build/client @bindings