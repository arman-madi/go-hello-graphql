package datasource

import (
	"encoding/json"
	"fmt"
	"os"

	"github.com/arman-madi/go-hello-graphql/graph/model"
)


func Foods() []*model.Food {
	var f struct{Foods []*model.Food}

	if b,err := os.ReadFile("sample_foods.json"); err != nil {
		fmt.Printf("couldn't read file sample_foods.json: %v", err)

	} else if err = json.Unmarshal(b, &f); err != nil {
		fmt.Printf("couldn't unmarshal JSON: %v", err)
	}
	
	return f.Foods
}