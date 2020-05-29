module AppEventSubscriber
  include Spree::Event::Subscriber

  event_action :app_event

  def app_event(e)
    Rails.logger.info "app event triggered"
    EventResponse.text += "\nmodified by AppEventSubscriber"
  end
end
