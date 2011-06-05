ActionMailer::Base.smtp_settings = {  
      :address              => "smtp.gmail.com",  
      :port                 => 587,  
      :domain               => "gmail.com",  
     :user_name            => "sanchitgupta.sg007", #Your user name
      :password             => "qazwsxedc", # Your password
      :authentication       => "plain",  
      :enable_starttls_auto => true  
   }
