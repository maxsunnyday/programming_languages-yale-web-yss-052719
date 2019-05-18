require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, hash|
    hash.each do |language, another_hash|
      if new_hash.keys.include?(language)
        "hi"
      else
        style_array = []
        style_array << style
        new_hash[language] = {
          :type => another_hash[:type],
          :style => style_array
        }
      end
    end
  end
  new_hash
end
