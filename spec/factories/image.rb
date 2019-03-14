FactoryBot.define do

  factory :image do
      id                      {1}
      image                   {"https://tech-master.s3.amazonaws.com/uploads/curriculums/images/Rails1-4/sample.jpg"}
      item_id                 {1}
  end

end
