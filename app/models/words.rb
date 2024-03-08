class Words < ApplicationRecord
  WORD_LIST = File.readlines('public/words.txt').map &:chomp
  def self.search(q)
    WORD_LIST
    .grep(/^#{q}/i)
  end
end
