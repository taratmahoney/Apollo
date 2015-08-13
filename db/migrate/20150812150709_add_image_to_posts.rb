class AddImageToPosts < ActiveRecord::Migration
  def change
      def self.up
        add_attachment :posts, :image
      end

        def self.down
          remove_attachment :posts, :image
        end
  end
end
