class AddConsultRequestStaticPage < ActiveRecord::Migration[5.1]
  def change
    I18n.locale  = :en
    StaticPage.find_or_create_by(key: :consult_requests).update(
      title: 'Consult request',
      label: 'Consult request',
      content: 'Consult request',
      meta_description: '',
      meta_keys: ''
    )

    I18n.locale = :ua
    StaticPage.find_or_create_by(key: :consult_requests).update(
      title: 'Замовлення консультації',
      label: 'Замовлення консультації',
      content: 'Замовлення консультації',
      meta_description: "",
      meta_keys: ''
    )
  end
end
