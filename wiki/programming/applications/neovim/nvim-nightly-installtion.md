# Neovim Nightly Installation

## On macOS

### i386

```bash
brew tap jason0x43/homebrew-neovim-nightly
brew install neovim-nightly
```


### M1

```bash
brew install neovim --build-from-source
brew pin neovim
```

When you need upgrade:

```bash
brew unpin neovim
brew reinstall neovim --build-from-source
brew pin neovim
```
