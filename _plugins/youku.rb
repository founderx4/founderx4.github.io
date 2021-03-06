class YouKu < Liquid::Tag
  Syntax = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/

  def initialize(tagName, markup, tokens)
    super

    if markup =~ Syntax then
      @id = $1

      if $2.nil? then
          @width = 800
          @height = 420
      else
          @width = $2.to_i
          @height = $3.to_i
      end
    else
      raise "在\"Youku\"标签中未提供视频ID或提供的ID不合法。 Illgeal ID presented."
    end
  end

  def render(context)
    #<iframe height="498" width="800" src="http://player.youku.com/embed/XMjQ3NzcwMjA0OA==" frameborder="0"  allowfullscreen></iframe>
    # "<iframe height=498 width=510 src="http://player.youku.com/embed/XNTc2ODk1NjI0" frameborder=0 allowfullscreen></iframe>"
    "<iframe height=\"#{@height}\" width=\"#{@width}\" src=\"http://player.youku.com/embed/#{@id}\" frameborder=\"0\" style=\"max-width:100%;\" allowfullscreen></iframe>"
  end

  Liquid::Template.register_tag "youku", self
end