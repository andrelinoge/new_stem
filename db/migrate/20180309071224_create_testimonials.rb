class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Testimonial.create_translation_table!({
          author: :string, 
          position: :string, 
          content: :text
        })
      end

      dir.down do
        Testimonial.drop_translation_table!
      end
    end
  end
end