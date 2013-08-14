module SiteHelpers

  def page_title
    title = "Don Okuda"
    if data.page.title
      title << " | " + data.page.title
    end
    title
  end

  def page_description
    if data.page.description
      description = data.page.description
    else
      description = "Don Okuda is a Los Angeles based Graphic Designer and Front-End Developer."
    end
    description
  end

end
