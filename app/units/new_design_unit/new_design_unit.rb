# coding: utf-8
module NewDesignUnit
  include Chanko::Unit

  active_if :always_true

  scope(:view) do
    function(:show_new_button) do
      render ab_test('change_download_button', 'show_red_button', 'show_green_button', 'show_blue_button')
    end
  end

  scope('AbtestController') do
    function(:track_button_click) do
      finished('change_download_button')
    end
  end
end
