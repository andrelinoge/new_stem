module ApplicationHelper
  def submitting_message(form)
    if form.object.persisted?
      'Updating...'
    else
      'Creating...'
    end
  end

  def project_cover_url(project)
  	if project.page_cover.file.present?
  		project.page_cover_url
  	else
  		project.cover_url
  	end
  end

  def yes_no(value)
    if value
      'Yes'
    else
      'No'
    end
  end
end
