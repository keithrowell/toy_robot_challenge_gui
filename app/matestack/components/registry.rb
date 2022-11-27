module Components::Registry

  def markdown_content options
    Components::Markdown::Content.call nil, options
  end

  def markdown_text options
    Components::Markdown::Text.call nil, options
  end

end
