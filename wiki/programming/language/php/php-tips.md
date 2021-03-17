# PHP Tips

> Based on PHP 5.2/5.4

### `array_merge`

- `array_merge` 后一个数组不能是 null

### `in_array`

- `in_array` 要 o(n)
- `isset` 是 hash 只要 o(1)

### `foreach`/`for`

- `foreach` 最快，`foreach` 尽量不要用引用
- `for` 后面的条件，如果是表达式，会每次都执行，因此较慢
  - 如果能把条件的表达式值先算出来，再 `for`，效率较高

### JSON vs Serialization

- `json_encode` `json_decode` 比 `serialize` `unserialize` 快太多了！
- `serialize` 可以带对象，而 JSON 不能，其他 JSON 完爆
- JSON 中文部分 UTF-8，序列化可以不是

### `array` (hashtable)

- php 存储的数组都是 `hashtable` 满了才扩容 按照 2 的次方数扩容

### class

- 任何两个 php 类之间都可以理解为是 friend
