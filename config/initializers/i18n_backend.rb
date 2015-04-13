I18n.backend = I18n::Backend::Chain.new(I18n::Backend::ActiveRecord.new, I18n.backend) if I18n::Backend::ActiveRecord::Translation.table_exists?
