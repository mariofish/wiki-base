# Snippet: Golang Time

## Timezone

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

## Time Parse

Layout should follow this date time: `Mon, 02 Jan 2006 15:04:05 -0700`

e.g.:
```go
t, err := time.Parse("2006-01-02 15:04:05 -0700", input)
```

<https://yourbasic.org/golang/format-parse-string-time-date-example/>
