class ScreenshotWorker
  include Sidekiq::Worker

  def perform(url, slug)
    image_path = "/opt/ptc-rails/current/public/screenshots"

    image = `/opt/screenshot/app/make_screenshot.sh '#{url}'`

    if not image or image.empty?
      FileUtils.cp("#{image_path}/_na.png","#{image_path}/#{slug}.png")
    else
      f = File.new("#{image_path}/#{slug}.png", "wb")
      f.write(image)
      f.close
    end
  end

end
