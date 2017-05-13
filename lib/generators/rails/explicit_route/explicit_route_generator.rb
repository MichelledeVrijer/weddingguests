class Rails::ExplicitRouteGenerator < Rails::Generators::NamedBase
  def create_explicit_routes
    route "delete '/#{plural_name}/:id'       => '#{plural_name}#destroy'\n"

    route "put    '/#{plural_name}/:id'       => '#{plural_name}#update'\n"
    route "patch  '/#{plural_name}/:id'       => '#{plural_name}#update'"
    route "post   '/#{plural_name}'           => '#{plural_name}#create'"

    route "get    '/#{plural_name}/:id'       => '#{plural_name}#show', as: '#{singular_table_name}'\n"
    route "get    '/#{plural_name}/:id/edit'  => '#{plural_name}#edit', as: 'edit_#{singular_table_name}'"
    route "get    '/#{plural_name}/new'       => '#{plural_name}#new', as: 'new_#{singular_table_name}'"

    route "get    '/#{plural_name}'           => '#{plural_name}#index'\n"
  end
end
