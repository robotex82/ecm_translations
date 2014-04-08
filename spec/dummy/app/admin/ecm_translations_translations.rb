ActiveAdmin.register Ecm::Translations::Translation do
  menu :parent => Proc.new { I18n.t('ecm.translations.active_admin.menu') }.call

  form do |f|
    f.inputs do
      f.input :locale, :as => :select, :collection => I18n.available_locales.map(&:to_s)
      f.input :key
    end

    f.inputs do
      f.input :value
      f.input :interpolations
    end

    f.inputs do
      f.input :is_proc
    end

    f.actions
  end
end
