# Ownership and Borrowing

Video Tutorial: <https://www.youtube.com/watch?v=lQ7XF-6HYGc>

And here are some notes from the video:

## Stack v.s. Heap

### Stack

- Fast memory creation and retrieval
- Memory is automatically captured by the program after variables go out of scope
- Fixed size variables

### Heap

- Flexibility
- Memory that can grow size (Vector, HashMap, String, etc)
- Runtime performance cost
- Memory that can live beyond scope that created it
- Memory is automatically recaptured when the last OWNER goes out of scope

## Ownership

- Rust
  - Every piece of data in memory has an owner only.
  - Allocate a Heap value to another variable remove ownership of the first variable.
  - Heap allocated memory is cleaned up automatically when the last "owner" of the memory goes out of scope.
- Other Languages
  - Two variables can point to the same memory.
  - Parellel and Concurrency issues such as "race condition".

## Solution

```rust
fn main() {
    let heap_f64: Box<f64> = Box::new(2.);
    heap_procedure(heap_f64);
    println!("In main heap {}", heap_f64);
}

fn heap_procedure(param: Box<f64>) {
    param += 9.
    println!("In heap procedure {}", param);
}
```

For a Heap variable, passing it as a parameter of function means transfer its ownership to the new parameter variable.
And when the inner function is over, it is cleaned up automatically. Thus, it failed compiling.

Now, let do the borrowing:

```rust
fn main() {
    let heap_f64: Box<f64> = Box::new(2.);
    heap_procedure(&heap_f64);
    // or just simply clone:
    //   heap_procedure(heap_f64.clone());
    println!("In main heap {}", heap_f64);
}

fn heap_procedure(param: &Box<f64>) {
    param += 9.
    println!("In heap procedure {}", param);
}
```

## Why this is necessary?

- Eliminates memory issues (null pointers, dangling pointers, data races)
- Eliminates Garbage Collector
- Parallel processing is a blaze!

---

Thanks Doug Milford for this awesome video!
