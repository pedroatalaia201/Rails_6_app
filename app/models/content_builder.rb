class ContentBuilder < RailsAdminContentBuilder::ContentBuilder
    validates :content_builder_category, presence: true
    belongs_to :content_builder_category

    def category 
        content_builder_category.name
    end

    #This will retrun the first image save on content
    def cover
        html ||= Nokogiri::HTML.fragment(content)

        if html.css("img").present?
            html.css("img").first&.values&.first.to_s
        end
    end
    
    def date_published
        date_publish.strftime("%d/%m/%Y").to_s
    end
end