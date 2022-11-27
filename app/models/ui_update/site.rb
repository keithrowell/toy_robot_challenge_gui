module UiUpdate
  class Site < UiUpdate::Base

    def self.update
      self.sites.each do |site|
        send_update_for_site site
      end
    end

    def self.sites
      @sites = ::Site.all
    end

    def self.send_update_for_site site
      event_name = "update-site-loads-#{site.id}"
      payload = {}
      # payload[:]

      payload[:grid_load] = site.grid_load_sensor&.load.to_i
      payload[:solar_load] = site.solar_load_sensor&.load.to_i
      payload[:house_load] = site.house_load_sensor&.load.to_i
      payload[:battery_percentage] = site.battery_percentage_sensor&.percentage.to_i
      payload[:grid_to_house_load] = site.grid_to_house_load_sensor&.load.to_i
      payload[:solar_to_house_load] = site.solar_to_house_load_sensor&.load.to_i
      payload[:solar_to_grid_load] = site.solar_to_grid_load_sensor&.load.to_i
      payload[:solar_to_battery_load] = site.solar_to_battery_load_sensor&.load.to_i
      payload[:battery_to_house_load] = site.battery_to_house_load_sensor&.load.to_i

      puts "sending #{event_name} with payload #{payload}"

      ActionCable.server.broadcast('matestack_ui_core', {event: event_name, site_loads: payload})
    end

  end
end