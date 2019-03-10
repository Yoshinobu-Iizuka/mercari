FactoryBot.define do
  factory :user do
    id                    {1}
    nickname              {""}
    comment               {""}
    password              {1}
    first_name            {""}
    family_name           {""}
    first_name_kana       {""}
    family_name_kana      {""}
    postal_code           {1}
    prefecture            {""}
    city                  {""}
    address_first         {""}
    address_second        {""}
    telephone             {1}
    mail                  {""}
    year                  {1}
    month                 {1}
    day                   {1}
  end

end
