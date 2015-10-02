require 'test_helper'

class ClassSectionsControllerTest < ActionController::TestCase
  setup do
    @class_section = class_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_section" do
    assert_difference('ClassSection.count') do
      post :create, class_section: { name: @class_section.name }
    end

    assert_redirected_to class_section_path(assigns(:class_section))
  end

  test "should show class_section" do
    get :show, id: @class_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_section
    assert_response :success
  end

  test "should update class_section" do
    patch :update, id: @class_section, class_section: { name: @class_section.name }
    assert_redirected_to class_section_path(assigns(:class_section))
  end

  test "should destroy class_section" do
    assert_difference('ClassSection.count', -1) do
      delete :destroy, id: @class_section
    end

    assert_redirected_to class_sections_path
  end
end
