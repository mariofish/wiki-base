# Rust Lifetimes

Video Tutorial: <https://www.youtube.com/watch?v=1QoT9fmPYr8>

And here are some notes from the video:

## What are Lifetimes?

- Rust allows one and only one owner of memory
- Rust allows multiple references
- Lifetimes enforce a piece of memory is still valid for a reference

## Usage

### Function

```rust
fn test_ref_1<'a>(param_1: &'a Vec<i32>) -> &'a Vec<i32> {
    param_1
}

fn test_ref_2<'a, 'b>(param_1: &'a Vec<i32>, param_2: &'b Vec<i32>) -> &'a Vec<i32> {
    param_1
}

fn test_ref_3<'a, 'b: 'a>(param_1: &'a Vec<i32>, param_2: &'b Vec<i32>) -> &'a Vec<i32> {
    param_1
}
```

### Struct

```rust
struct SomeObject<'a, T> {
    some_data: Vec<T>,
    some_ref: &'a Vec<T>,
}
```

## When to use Lifetimes?

> Lifetimes don't apply because there are no reference inputs or output.

```rust
fn test_1(param_1: Vec<f64>) -> Vec<f64> {
    param_1
}
```

> Lifetimes aren't an issue because there is no reference output.

```rust
fn test_2(param_1: &Vec<f64>) -> Vec<f64> {
    param_1.clone()
}
```

> Lifetimes aren't an issue because there is no reference inputs.

```rust
fn test_3(param_1: Vec<f64>) -> &Vec<f64> {
    &param_1
}
```

> Lifetimes aren't sure for param_1 and param_2

```rust
fn test_4<'a>(param_1: &'a Vec<f64>, param_2: &'a Vec<f64>) -> &'a Vec<f64> {
    &param_1
}

fn test_5<'a, 'b>(param_1: &'a Vec<f64>, param_2: &'b Vec<f64>) -> &'a Vec<f64> {
    &param_1
}
```

## Static

- "Static" means a lifetime that lasts the entire program
- "Constants" are static by their nature
- Can also have static variables
