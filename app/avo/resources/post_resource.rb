class PostResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  self.search_query = ->(params:) do
    scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  end
  self.search_query_help = "- search by id"


  field :id, as: :id
  field :title, as: :text
  field :body, as: :trix
  field :user, as: :belongs_to
end
