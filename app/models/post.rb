class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validates :content, length: { minimum: 100 }
   
    


    # def is_clickbait
    #     included = false
    #     @@phrases.each { |phrase| included = true if self.title && self.title.downcase =~ phrase }
    #     if not included
    #         errors.add(:title, "You need a more exciting title")
    #     end
    # end

    # @@phrases = [/won't believe/, /secret/, /top \d/, /guess/]
end
