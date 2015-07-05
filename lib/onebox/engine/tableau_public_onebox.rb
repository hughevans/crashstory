module Onebox
  module Engine
    class TableauPublicOnebox
      include Engine

      matches_regexp /^https?:\/\/public.tableau.com\/shared\/.*$/

      def to_html
        "<iframe src=\"#{@url.split('?')[0]}?:showVizHome=no&:embed=true\" style=\"border-width:0\" frameborder=\"0\" scrolling=\"no\" width=\"100%\" height=\"400px\"></iframe>"
      end
    end
  end
end
