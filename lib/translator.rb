require 'yaml'
require 'pp'

def load_library(path)
  pp YAML.load_file(path)
  result = {'get_meaning' => {}, 'get_emoticon' => {}}
  path.each{ |meaning, emoticon_arr|
    result['get_meaning'] = meaning
    result['get_emoticon'] = emoticon_arr[1]
  }
  result
end

def get_japanese_emoticon(western_emoticon)
  load_library.each{ |meaning, arr|
    if arr[0] == western_emoticon
      return arr[1]
    end
  }
end

def get_english_meaning(japanese_emoticon)
  # code goes here
end
