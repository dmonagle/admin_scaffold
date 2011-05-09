class <%= controller_class_name %>Controller < ApplicationController
  helper :simple_page
  helper :sortable_column
  helper_method :sort_column, :sort_direction
  respond_to :html, :xml, :json
  
  # GET <%= route_url %>
  def index
    @<%= plural_table_name %> = <%= class_name %>.order(sort_column + " " + sort_direction)
    @<%= plural_table_name %> = @<%= plural_table_name %>.where('<%=attributes.first.name%> LIKE ?', "%#{params[:search]}%") unless params[:search].nil?
    @<%= plural_table_name %>.page_size = 10
    @page = params[:page] || 1
    respond_with(@<%= plural_table_name %>)
  end

  # GET <%= route_url %>/:id
  def show
    respond_with(@<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>)
  end

  # GET <%= route_url %>/new
  def new
    respond_with(@<%= singular_table_name %> = <%= orm_class.build(class_name) %>)
  end

  # GET <%= route_url %>/:id/edit
  def edit
    respond_with(@<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>)
  end

  # POST <%= route_url %>
  def create
    @<%= singular_table_name %> = <%= orm_class.build(class_name, "params[:#{singular_table_name}]") %>
    @<%= orm_instance.save %>
    respond_with(@<%= singular_table_name %>)
  end

  # PUT <%= route_url %>/:id
  def update
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    @<%= orm_instance.update_attributes("params[:#{singular_table_name}]") %>
    respond_with(@<%= singular_table_name %>)
  end

  # DELETE <%= route_url %>/:id
  def destroy
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    respond_with(@<%= orm_instance.destroy %>)
  end
  
  private
  
  def sort_column
    <%=class_name%>.column_names.include?(params[:sort_column]) ? params[:sort_column] : "<%=attributes.first.name%>"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:sort_direction]) ? params[:sort_direction] : "asc"
  end
end
