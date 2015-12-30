# Spinner

Terminal Spinner for Crystal Programming Language

![All](/images/all.gif)

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  spinner:
    github: askn/spinner
```

## Usage


```crystal
require "spinner"

sp = Spin.new
sp.start
sleep 3
sp.stop
```

## Options

`delay`: `default = 0.1`

`chars`: you can choose charset from [CHARSET](src/spinner/charset.cr) `default = CHARSET[:pipe]`

## Contributing

1. Fork it ( https://github.com/askn/spinner/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [askn](https://github.com/askn) Aşkın Gedik - creator, maintainer
