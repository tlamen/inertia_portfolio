class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  # allow_browser versions: :modern
  include Panko

  private

  def serialize(resource, serializer_class)
    if resource.respond_to?(:length)
      Panko::ArraySerializer.new(resource, each_serializer: serializer_class).to_a
    else
      serializer_class.new.serialize(resource)
    end
  end
end
