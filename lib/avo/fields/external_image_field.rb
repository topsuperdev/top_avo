module Avo
  module Fields
    class ExternalImageField < BaseField
      attr_reader :width
      attr_reader :height
      attr_reader :radius
      attr_reader :link_to_record

      def initialize(id, **args, &block)
        super(id, **args, &block)

        @link_to_record = args[:link_to_record].present? ? args[:link_to_record] : false

        @width = args[:width].present? ? args[:width] : 40
        @height = args[:height].present? ? args[:height] : 40
        @radius = args[:radius].present? ? args[:radius] : 0
      end

      def to_image
        value
      end
    end
  end
end
