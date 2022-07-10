class UserResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  self.description = "Esse é o dashboard de usuários"
  self.search_query = ->(params:) do
    scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  end

  field :id, as: :id
  field :name, as: :text, as_label: true
  field :email, as: :text
  # add fields here
end
