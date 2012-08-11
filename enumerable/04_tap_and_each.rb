{}.tap do |result|
  [:foo, :bar, :hoge, :piyo].each do |type| 
    records = SomeModel.where(type: type)
    result[type] = [].tap do |record_array|
      records.each do |record|
        r = record.to_hash
        record_array.push r
      end
    end
  end
end
