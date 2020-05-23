class Bathhouse < ApplicationRecord
  enum status: {
    '通常営業' => 1,
    '営業予定' => 2,
    '営業休止/再開見込みなし' => 3,
    '自衛隊による支援' => 5,
    '不明' => 9
  }
end
