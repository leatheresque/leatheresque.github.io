require 'httparty'

module Jekyll
  class DevToPosts < Liquid::Tag
    def initialize(tag_name, params, tokens)
      super
      @username, @limit = params.split(' ')
      @limit = @limit.to_i || 5 # default to 10 if limit is not specified
    end

    def render(context)
      response = HTTParty.get("https://dev.to/api/articles?username=#{@username}&per_page=#{@limit}")
      articles = response.parsed_response
      
      html = ""
      articles.each do |article|
        id = article['id']
        title = article['title']
        url = article['url']

        article_response = HTTParty.get("https://dev.to/api/articles/#{id}")
        article_details = article_response.parsed_response

        content = article_details['body_markdown'][0..99] # excerpt up to 100 characters
        html += "<h3><a href='#{url}' target='_blank'>#{title}</a></h3><p>#{content}...</p>"
      end

      return html
    end
  end
end

Liquid::Template.register_tag('dev_to_posts', Jekyll::DevToPosts)