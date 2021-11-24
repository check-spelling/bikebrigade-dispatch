defmodule BikeBrigade.GeocoderTest do
  use BikeBrigade.DataCase

  alias BikeBrigade.Geocoder
  alias BikeBrigade.Geocoder.FakeGeocoder

  @address "1 Blue Jays Way"

  test "looks up address by a configured Geocoder.Adapter" do
    location = fixture(:location)
    FakeGeocoder.inject_address(@address, location)

    {:ok, ^location} = Geocoder.lookup(@address)
  end
end
