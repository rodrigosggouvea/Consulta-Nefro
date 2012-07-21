module ApplicationHelper

	module ActionView::Helpers::TagHelper
    def form_item(options = {},  &block)
      opts = {
        :class => 'field'
      }.merge(options)
      opts = handle_classes(opts)

      content_tag :div, opts, &block
    end

    def handle_classes(html_options)
      html_options[:class] += " #{html_options.delete(:add_class)}" if html_options[:add_class]
      html_options
    end
  end
  
	class PublicoFormBuilder < ActionView::Helpers::FormBuilder

    include ActionView::Helpers::TagHelper

    def attribute_path(field)
      "activerecord.attributes.#{self.object.class.to_s.underscore}.#{field}"
    end

    def date_text_field(method, options = {})
      options[:class] = "date_field" unless options[:class]
      options = handle_classes(options)

      super(method, options)
    end
  end
end
