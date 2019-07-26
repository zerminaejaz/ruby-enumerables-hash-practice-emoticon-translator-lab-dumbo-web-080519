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
