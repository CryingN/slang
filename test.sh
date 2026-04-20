cd ./test
  if v run main.v; then
    echo "✅ Tests passed successfully"
  else
    echo "❌ Tests failed: $?"
    exit 1
  fi

