require "pry"
def reformat_languages(languages)
  new_hash = {}
  style_array =[]
  languages.each do |style, hash|
    hash.each do |language, another_hash|
      style_array << style
      new_hash[language] = {
        :type => another_hash[:type],
        :style => style_array
      }
    end
  end
  new_hash
end
