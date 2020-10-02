# require modules here
require "yaml"

def load_library(file)
  # code goes here
  emoticons = YAML.load_file(file)
  new_emoticons = {}
  emoticons.each do |key, val|
    updated_element = {}
    lang_map = {}
    lang_map[:english] = val[0]
    lang_map[:japanese] = val[1]
    updated_element[key] = lang_map
    new_emoticons.push(updated_element)
  end
  puts new_emoticons
  new_emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end