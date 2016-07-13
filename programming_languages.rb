def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |lang_style, lang_name|
    lang_name.each do |lang_type, lang_func|
      new_hash[lang_type] = lang_func
      new_hash[lang_type][:style] = []
      #new_hash[lang_type][:style] << lang_style
      #*new_hash[lang_type][:style] #can this work...?
    end
  end
  languages.each do |lang_style, lang_name|
    lang_name.each do |lang_type, lang_func|
      new_hash[lang_type][:style] << lang_style
    end
  end
  return new_hash
end
