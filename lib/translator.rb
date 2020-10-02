# require modules here

def load_library(file)
  # code goes here
  emoticons = YAML.load_file(file)
  puts emoticons
  emoticons.map do |key, val|
    updated_element = {}
    lang_map = {}
    lang_map[:english] = val[0]
    lang_map[:japanese] = val[1]
    updated_element[key] = lang_map
    updated_element
  end
  emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end