require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get services_url
    assert_response :success
  end

  test "should get new" do
    get new_service_url
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post services_url, params: { service: { duration_day: @service.duration_day, duration_km: @service.duration_km, electrical: @service.electrical, electronic: @service.electronic, engine: @service.engine, general_repair: @service.general_repair, heating_cooling: @service.heating_cooling, last_serviced: @service.last_serviced, last_serviced_km: @service.last_serviced_km, major_repair: @service.major_repair, next_service: @service.next_service, next_service_km: @service.next_service_km, steering_suspension: @service.steering_suspension, undercar: @service.undercar } }
    end

    assert_redirected_to service_url(Service.last)
  end

  test "should show service" do
    get service_url(@service)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_url(@service)
    assert_response :success
  end

  test "should update service" do
    patch service_url(@service), params: { service: { duration_day: @service.duration_day, duration_km: @service.duration_km, electrical: @service.electrical, electronic: @service.electronic, engine: @service.engine, general_repair: @service.general_repair, heating_cooling: @service.heating_cooling, last_serviced: @service.last_serviced, last_serviced_km: @service.last_serviced_km, major_repair: @service.major_repair, next_service: @service.next_service, next_service_km: @service.next_service_km, steering_suspension: @service.steering_suspension, undercar: @service.undercar } }
    assert_redirected_to service_url(@service)
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete service_url(@service)
    end

    assert_redirected_to services_url
  end
end
