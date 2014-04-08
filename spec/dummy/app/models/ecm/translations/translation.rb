class Ecm::Translations::Translation < ActiveRecord::Base
  self.table_name = 'ecm_translations_translations'

  # attributes
  attr_accessible :interpolations,
                  :is_proc,
                  :key,
                  :locale,
                  :value

  # validations
  validates :key, :presence => true,
                  :uniqueness => { :scope => [ :locale ] }
  validates :locale, :presence => true
end
