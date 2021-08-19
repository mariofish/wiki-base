# Alacritty

## Build Alacritty for M1 Mac

1. First, install rust with `rustup` and clone Alacritty source.
2. Checkout to tags you want to build with (e.g. v0.8.0):

    ```bash
    git checkout v0.8.0
    ```

3. Build with Cargo and release with `aarch64`:

    ```bash
    cargo build --release --target=aarch64-apple-darwin
    ```

4. Goto release folder and replace binary:

    ```bash
    cd ./target/aarch64-apple-darwin/release
    mv alacritty /Applications/Alacritty.app/Contents/MacOS
    ```
