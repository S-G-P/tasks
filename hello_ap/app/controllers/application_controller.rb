class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    t = Time.now
    str1 = "現在の時刻は"
    str2 = "ではないような…"
    str3 = str1 + t.strftime("現在時刻 %H時 %M分 %S秒") + str2
    render html:  str3 
    
  end
end
