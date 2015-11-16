module CornerStones
  class Form
    module Fields
      class DateField < Base
        def self.handles?(name)
          !find_field(name).nil?
        end

        def self.handles_element?(element)
          element.tag_name == 'input' && element[:type] == 'date'
        end

        def self.find_field(name)
          first(:xpath, XPath::HTML.field(name))
        end

        def set(value)
          @field.set value
        end

        def get
          @field.value
        end
      end
    end
  end
end