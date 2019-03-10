FactoryBot.define do

  factory :item do
    name                                   {"abe"}
    details                                {"kkk@gmail.com"}
    condition                              {"良い"}
    price                                  {2000}
    size                                   {"M"}
    shipping_charge_borne                  {"着払い"}
    shipping_method                        {"メルカリ便"}
    shipment_source_area                   {"東京"}
    estimated_shipping_date                {"2日後"}
    #user_id                                {1}
    #buyer_id                               {""}
    #brand_id                               {1}
    #category_id                            {1}
    #child_category_id                      {1}
    #grandchild_category_id                 {1}
  end

end
