module Sway
  module Extensions
    YAML = ['yml', 'yaml']
    JSON = ['json']
    CSV  = ['csv']
    ALL  = self.constants.inject([]) {|all, const_symbol| all << const_get(const_symbol)}.flatten
  end
end
