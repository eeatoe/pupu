# frozen_string_literal: true

class Pupu::Ui::Modal::Component < Pupu::BaseComponent
  renders_one :actions

  def initialize(title:, close_path: nil, open: false, **attributes)
    @title = title
    @close_path = close_path
    @attributes = attributes
    @attributes[:open] = open
  end
end
