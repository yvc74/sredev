defmodule Sre.PageView do
  use Sre.Web, :view

  alias Number.Currency

  def format_currency(value) do
    value
    |> Currency.number_to_currency(precision: 0)
  end

  def hero_photo state do
    case state do
      "CA" -> "/images/marketing-heros/desktop/CA-san-diego.jpg"
      "HI" -> "/images/marketing-heros/desktop/HI-honolulu.jpg"
      _ -> "/images/marketing-heros/desktop/CA-san-diego.jpg"
    end
  end

  def get_mock_listing do
    %{
      id: 97_508,
      status: "Active",
      pool_features: "None",
      association_name: nil,
      living_area: 996,
      zip_code: "96734",
      longitude: -157.747605,
      mls_office_name: "Keller Williams Honolulu",
      units_in_building: nil,
      association_fee_2: nil,
      state: "HI",
      garage_spaces: nil,
      original_entry_timestamp: "2016-07-19T14:35:13.590000Z Etc/UTC",
      street_dir_suffix: nil,
      association_fee_2_frequency: nil,
      is_active: true,
      url: "516-halela-kailua-hi-96734-a9f3cc05",
      association_fee_2_includes: nil,
      street_number: "516",
      city: "Kailua",
      street_suffix: "Street",
      parcel_number: "1-4-3-061-072-0000",
      price: "830000",
      latitude: 21.398601,
      tax_assessed_value: "709300.00",
      rets_id: "10545084",
      lot_features: "Clear",
      unit_features: nil,
      utilities: "Cable,Connected,Internet,Public Water,Sewer Fee,Telephone",
      half_baths: 0,
      flooring: "Ceramic Tile,Hardwood",
      raw_status: "Active",
      street_name: "Halela",
      feed_id: 3,
      has_association: nil,
      public_remarks: "Uber cute and remodeled beach cottage is situated in a walled-in. Offers 7/26/2016!",
      mls: "HI Central",
      photos: [],
      assessment_improvement_value: "145500.00",
      model: nil,
      year_built: "1957",
      association_fee_total: nil,
      view: "Mountain",
      virtual_tour: nil,
      roof: "Asphalt Shingle",
      parking_features: "2",
      type: "Single Family",
      year_remodeled: "1992",
      association_fee_frequency: nil,
      exterior_square_footage: "12",
      tax_year: "2016",
      inclusions: "AC Split,Auto Garage Door Opener,Blinds,Book Shelves",
      association_fee_includes: nil,
      unit_number: nil,
      square_footage: 1120,
      association_fee: nil,
      bedrooms: 3,
      mls_listing_id: "201618873",
      baths: 2,
      tax_amount: "183.54",
      street_dir_prefix: nil,
      groups: []
    }
  end
end
