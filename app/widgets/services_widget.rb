class ServicesWidget < Apotomo::Widget
  append_view_path "app/views"

  def cloud
    @tags = Service.tag_counts_on(:tags)
    render
  end

  def latest
    @services = Service.moderated.order("created_at DESC").first(5)
    render
  end

end
