# require modules here
require "yaml"

def load_library(file)
  # code goes here
  emoticons = YAML.load_file(file)
  new_emoticons = {}
  emoticons.each do |key, val|
    lang_map = {}
    lang_map[:english] = val[0]
    lang_map[:japanese] = val[1]
    new_emoticons[key] = lang_map
  end
  puts new_emoticons
  new_emoticons
end

def get_japanese_emoticon(file, emoticonName)
  # code goes here
  emoticons = load_library(file)
  if !emoticons.has_key?[emoticonName] 
    return "key does not exist"
  end
  emoticons[emoticonName][:japanese]
end

def get_english_meaning(file, japEmoticon)
  # code goes here
  emoticons = load_library(file)
  emoticons.each |emoticonName, emoticonLangHash| {
    if emoticonLangHash[:japanese] == japEmoticon
      return emoticonName
    end
  }
  return nil
end