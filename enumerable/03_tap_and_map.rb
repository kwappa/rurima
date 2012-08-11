# @option is parsed query parameter
# e.g. { 'foo' => 'bar', 'hoge' => 'piyo'

{}.tap do |hash|
  @option.map do |k, v|
    hash[k.to_s.camelize(:lower)] = v
  end
end
