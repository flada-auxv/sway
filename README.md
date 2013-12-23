# Sway

This gem creates Hashie::Mash objects from JSON, YAML, CSV.

## Installation

Add this line to your application's Gemfile:

    gem 'sway', git: 'git://github.com/blp1526/sway.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install --source https://github.com/blp1526/sway/raw/master sway

## Usage

```ruby

# When JSON or YAML file.
foo = Sway::File.new('path_to_your_json_or_yaml_file')
foo.mash # if 'path_to_your_json_or_yaml_file' is hash.
foo.mashes # if 'path_to_your_json_or_yaml_file' is array.

# If csv, then you have to use option[:header] == :first_line
bar = Sway::File.new('path_to_your_csv_file', header: :first_line)
bar.mashes

# You can also do as below.
baz = Sway::JSON.new('json_string')
baz.mash # if 'json_string' is hash.
baz.mashes # if 'json_string' is array.

# If YAML string.
qux = Sway::YAML.new('yaml_string')
qux.mash # if 'yaml_string' is hash.
qux.mashes # if 'yaml_string' is array.

# If CSV string.
quux = Sway::CSV.new('csv_string', header: :first_line)
quux.mash
quux.mashes #=> nil

```
## Contributing

1. Fork it ( http://github.com/blp1526/sway/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
