require 'test_helper'

class ServicesWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:services)
  end
  
  test "display" do
    render_widget :services
    assert_select "h1"
  end
end
