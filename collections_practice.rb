require 'pry'

def begins_with_r(array)
  for i in 0...array.length do
    if array[i][0].downcase != 'r'
      return false
    end
  end
  true
end

def contain_a(array)
  words_with_s = []
  for i in 0...array.length do
    if array[i].downcase.include?('a')
      words_with_s << array[i]
    end
  end
  words_with_s
end

def first_wa(array)

  for i in 0...array.length do
    if array[i][0..1].downcase == "wa"
      return array[i]
    end
  end

  
end

def remove_non_strings(array)
    new_array = []
    array.each do |x|
      if x.class == String
        new_array << x
      end
    end
    
    new_array
end

def count_elements(array)
  array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end

def merge_data(data_1, data_2)
  data_1[0].values.map.with_index {|v, i| data_2[i].merge(v)}
end

def find_cool(array)
    array.select do |item| 
    item.has_value?('cool')
  end
end

# def organize_schools(array)

# def