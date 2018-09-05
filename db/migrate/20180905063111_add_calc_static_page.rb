class AddCalcStaticPage < ActiveRecord::Migration[5.1]
  def change
    I18n.locale  = :en
    StaticPage.find_or_create_by(key: :calc).update(
      title: 'Сalculator',
      label: 'Сalculator',
      content: 'Сalculator',
      meta_description: 'Сalculator',
      meta_keys: 'Сalculator'
    )

    I18n.locale = :ua
    StaticPage.find_or_create_by(key: :about_us).update(
      label: 'Калькулятор',
      title: 'Калькулятор',
      content: "UA Калькулятор",
      meta_description: "UA Калькулятор"
    )
  end
end
