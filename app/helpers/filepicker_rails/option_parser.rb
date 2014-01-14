module FilepickerRails
  class OptionParser
    def self.set_data_options(url, mimetype, options)
      options[:data] ||= {}
      container = options.delete(:container)
      services = options.delete(:services)
      save_as = options.delete(:save_as_name)

      options[:data]['fp-url'] = url
      options[:data]['fp-apikey'] = ::Rails.application.config.filepicker_rails.api_key
      options[:data]['fp-mimetype'] = mimetype
      options[:data]['fp-option-container'] = container if container
      options[:data]['fp-option-services'] = Array(services).join(",") if services
      options[:data]['fp-option-defaultSaveasName'] = save_as if save_as
      options
    end
  end
end