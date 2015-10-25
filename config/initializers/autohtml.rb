AutoHtml.add_filter(:image).with(:width => 400, :height => 400) do |text, options|

  text.gsub(/(?<!src=")https?:\/\/.+?\.(jpg|jpeg|bmp|gif|png)(\?\S+)?/i) do |match|
    width = options[:width]
    height= options[:height]
    %|<img src="#{match}" alt="" width="#{width}" height="#{height}" />|
  end
end
