# Snippet: Rails `this_year?` monkey patch

```ruby
module DateAndTime
  module Calculations
    def this_year?
      year == ::Date.current.year
    end
  end
end
```
