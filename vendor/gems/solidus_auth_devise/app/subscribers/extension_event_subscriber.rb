module ExtensionEventSubscriber
  include Spree::Event::Subscriber

  event_action :extension_event

  def extension_event(e)
    Rails.logger.info "extension event triggered"
    EventResponse.text += "\nmodified by ExtensionEventSubscriber"
  end
end
