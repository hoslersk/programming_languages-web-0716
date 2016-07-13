def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |lang_style, lang_name|
    lang_name.each do |lang_type, lang_func|
      new_hash[lang_name] = lang_type
      new_hash[lang_name][:style] = []
      new_hash[lang_name][:style] << lang_style
    end
  end
  return new_hash
end
