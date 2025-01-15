# GO Lang Web App demo



## GO Lang using


```
mkdir webapp
cd webapp
main.go

# RUN
go run main.go
# http://localhost:8080
```

## GO modules

 - Go modules using go.mod


```
# go mod init your_module_name
# examples:
go mod init example.com/myapp
go mod init example.com/simplewebapp

```

## GO build, install, run

 - Default directory: user/go/


```
# Build:
go build

# Install to bin folder:
go install

go build -o ./bin/myapp.exe

go run bin/myapp.exe

```
