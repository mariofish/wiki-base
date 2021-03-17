# Ruby Env Setup

### Install Ruby

```shell
brew install ruby
```

### Install nokogiri

```shell
brew install libxml2
gem install nokogiri -- --with-xml2-include=/usr/local/Cellar/libxml2/2.9.4/include/libxml2 --use-system-libraries
```

### Gem remove all

```shell
gem uninstall -aIx
```

### Gem Source

```shell
gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/
bundle config mirror.https://rubygems.org https://gems.ruby-china.com
```

### Install libexif

```shell
brew install libexif
CPATH=$(brew --prefix libexif)/include gem install exif
```
