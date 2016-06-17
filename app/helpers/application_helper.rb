module ApplicationHelper
   def gravatar_for(chef, options = {size: 80})
     gravatar_id = Digest::MD5::hexdigest(chef.email.downcase)
     size = options[:size]
     gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
  image_tag(gravatar_url, alt: chef.chefname, class: "gravatar")
   end
end

