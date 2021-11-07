class FlattenArray
  def self.flatten(arr)
    arr.flatten.select {|x| !x.nil?}
  end
end