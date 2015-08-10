class Post < ActiveRecord::Base
    has_many :comments
    has_many :ideas
    has_many :feedbacks
    has_many :crowdfundings
    belongs_to :user
    acts_as_votable
    acts_as_taggable
    accepts_nested_attributes_for :feedbacks, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :ideas, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :crowdfundings, reject_if: :all_blank, allow_destroy: true
    validates_presence_of :title
    has_attached_file :image, styles: { medium: "300x300>" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    
    def self.search(search)
        where("name LIKE ?", "%#{search}%") 
        where("content LIKE ?", "%#{search}%")
    end
end
