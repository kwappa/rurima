# Somemodel.conditions => Array or nil
# target => given parameter (must be symbol)

result = []
records = SomeModel.where(some_flag: true)

records.each do |r|
  if !r.conditions
    records << r
  elsif r.conditions.include?(target)
    records << r
  end
end
