require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

	test "layout links" do 
		get root_path
		assert_template 'static_pages/home'
		assert_select "a[href=?]", root_path
		assert_select "a[href=?]", help_path
		assert_select "a[href=?]", about_path
		assert_select "a[href=?]", contact_path
		assert_select "a[href=?]", "https://github.com/kz777"
		assert_select "a[href=?]", "https://about.me/asus7"
	end

end
