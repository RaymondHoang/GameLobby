# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store
{
  key: '_GameLobby_session',
  :domain =>        nil,  
  :expire_after =>  nil,
  :secure =>        false,
  :httponly =>      true
}