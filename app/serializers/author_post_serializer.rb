class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  def short_content
    "#{object.content[0..39]}..." if object.content.length > 40
  end
end
