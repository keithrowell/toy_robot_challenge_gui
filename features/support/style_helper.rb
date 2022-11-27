module StyleHelper
  def computed_style selector, pseudo = nil, value
    page.evaluate_script(
      "window.getComputedStyle(document.querySelector('#{selector}'), '#{pseudo}').getPropertyValue('#{value}')"
    )
  end

  def map_alert_color_name_to_css_rgb palette_color
    case palette_color
    when 'alert_critical'
      'rgba(255, 0, 0, 1)'
    when 'alert_high'    
      'rgba(255, 0, 0, 1)'
    when 'alert_medium'  
      'rgba(251, 196, 0, 1)'
    when 'alert_low'     
      'rgba(27, 159, 255, 1)'
    end
    
  end
end