
# Let’s get started by installing gqlgen and initializing our project. 
# We can fetch the library using the following command
go get github.com/99designs/gqlgen

# Next, add gqlgen to your project’s tools.go.
printf '// +build tools\npackage tools\nimport _ "github.com/99designs/gqlgen"' | gofmt > tools.go
go mod tidy

# Then initialize gqlgen config and generate the models.
go run github.com/99designs/gqlgen init

# Update schema and regenarate
# go run github.com/99designs/gqlgen generate

# Finally, start the GraphQL server.
# go run server.go