# Invoke: 'go run *.go' while excluding test files. Useful when there are multiple
# files in the main package.
function gorun
    go run (string match -v '*_test.go' -- ./* | string match '*.go')
end
