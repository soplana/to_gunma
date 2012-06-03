# ToGunma

to_gunma

## Installation

Add this line to your application's Gemfile:

    gem 'to_gunma'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install to_gunma

## Usage

### to_gunma
---
    array = [1,2,3]
    array.to_gunma     #=> "Arrayは群馬県になりました。"
    array.to_s         #=> "[1, 2, 3]"
    array.include?(1)  #=> true
    
    array.to_gunma!    #=> "Arrayは群馬県になりました。"
    array.to_s         #=> "Arrayは群馬県になりました。"
    array.include?(1)  #=> "Arrayは群馬県になりました。"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
