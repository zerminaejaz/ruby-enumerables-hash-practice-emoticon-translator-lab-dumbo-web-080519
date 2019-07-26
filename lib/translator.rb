# require modules here
require 'yaml'
require 'pry'
def load_library(file_path)
  original = YAML.load_file(file_path)
  final_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  original.each do |meaning, emoticons|
    final_hash["get_meaning"][emoticons[1]] = meaning
    final_hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  result
end

def get_japanese_emoticon(file_path, english_emoticon)
  original = load_library(file_path)
  if original["get_emoticon"].include?(english_emoticon) 
    original["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, japanese_emoticon)
 library = load_library(file_path)
  if library["get_meaning"].include?(japanese_emoticon) 
    library["get_meaning"][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end