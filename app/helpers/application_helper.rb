module ApplicationHelper
  def submitting_message(form)
    if form.object.persisted?
      'Updating...'
    else
      'Creating...'
    end
  end
end
