# Ruboty::Magi

A ruboty handler to deliberate on the world using the Magi System.
The Magi System is a trio of supercomputers designed by Dr. Naoko Akagi.

See more info at http://wiki.evageeks.org/Magi

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-magi'
```

## Usage
```
> ruboty magi <option> <message>
```

### Examples
```
> ruboty magi
MELCHIOR-1:[承認] BALTHASAR-2:[承認] CASPER-3:[否定]

> ruboty magi 今日休んでもいいですか？
MELCHIOR-1:[否定] BALTHASAR-2:[否定] CASPER-3:[否定]

> ruboty magi -c
MELCHIOR-1:[可決] BALTHASAR-2:[保留] CASPER-3:[否決]

> ruboty magi -p
MELCHIOR-1:[はい] BALTHASAR-2:[いいえ] CASPER-3:[いいえ]

> ruboty magi -s
[承認][否定][否定]

> ruboty magi -sp
[はい][いいえ][はい]

> ruboty magi -sc
[可決][保留][否決]
```

### Modes
#### default
Answer Pattern: ```[承認] | [否定]```

#### complex
Answer Pattern: ```[可決] | [否決] | [保留]```

#### plain
Answer Pattern: ```[はい] | [いいえ]```

### Formats
#### default
```
MELCHIOR-1:[] BALTHASAR-2:[] CASPER-3:[]
```

#### simple
```
[][][]
```

## Contributing

1. Fork it ( https://github.com/cignoir/ruboty-magi/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## License

[MIT License](http://opensource.org/licenses/MIT)

