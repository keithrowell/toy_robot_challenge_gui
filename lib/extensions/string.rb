require 'active_support/all'

class String
  def dehumanize
    self.underscore.parameterize.underscore
  end

  def dasherize
    s = self.dehumanize.parameterize.underscore
    s.gsub "_", "-"
  end

  def cssify
    dasherize
  end

  def hex_to_rgba alpha
    hex = self.gsub('#', '')
    rgb = hex.scan(/../).map { |color| color.hex }
    "rgba(#{rgb.join(',')}, #{alpha})"
  end

end
