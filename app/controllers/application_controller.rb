class ApplicationController < ActionController::Base
  def check_events
    EventResponse.text = "text from controller"
    Spree::Event.fire(:app_event)
    Spree::Event.fire(:extension_event)

    text_from_events = EventResponse.text
    includes_solidus_subscribers = Spree::Event.subscribers.include?(Spree::MailerSubscriber)
    text = EventResponse.text
    text += "\nSpree::Event.subscribers includes Solidus core subscribers" if includes_solidus_subscribers

    render plain: text
  end
end
