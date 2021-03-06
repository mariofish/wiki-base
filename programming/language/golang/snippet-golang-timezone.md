# Snippet: Golang Timezone

```go
package main

import (
	"fmt"
	"time"
)

func main() {
	loc, _ := time.LoadLocation("Asia/Shanghai")
	t := time.Now().In(loc)
	fmt.Println(t)
}
```
