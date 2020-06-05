require 'test_helper'
#get error likethat
#Traceback (most recent call last):
#/usr/bin/ruby2.5: No such file or directory -- /usr/bin/bundle (LoadError)
#         run  bundle exec spring binstub --all
#Traceback (most recent call last):
#/usr/bin/ruby2.5: No such file or directory -- /usr/bin/bundle (LoadError)
#install the spring and bundle to debug but failed
class EventMailerTest < ActionMailer::TestCase
  
  setup do
    @user = users(:one)
    @mail_hash = {event: events(:one),user: @user}
  end
  
  test 'to, from' do
    mail = EventMailer.with(@mail_hash).event_reminder
    assert_equal ["#{@user.email}"] , mail.to
    assert_equal ['thinqtvstaff@gmail.com'], mail.from
  end
end
