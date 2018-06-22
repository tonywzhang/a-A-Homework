class Map

  attr_reader :array

  def initialize
    @array = []
  end

  def set(key,value)
    match_idx = array.index{|arr| arr[0] == key}

    if match_idx != nil
      array[match_idx][1] = value
    else
      array << [key,value]
    end

    value
  end

  def get(key)
    array.each {|arr| return arr[1] if arr[0] == key}
  end

  def delete(key)
    key_to_delete = get(key)
    array.reject! {|arr| arr[0] == key_to_delete}
  end

  def show

  end

end
