# frozen_string_literal: true

class Pupu::ButtonComponent < ViewComponent::Base
  def initialize(text:, path: link_path, method: :get)
    @text = text
    @path = path
    @method = method
  end
end