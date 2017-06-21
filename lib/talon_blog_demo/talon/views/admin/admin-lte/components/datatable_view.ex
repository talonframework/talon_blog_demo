defmodule TalonBlogDemo.Admin.AdminLte.Web.DatatableView do
  use TalonBlogDemo.Talon.Web, which: :component_view, theme: "admin/admin-lte", module: TalonBlogDemo.Admin.AdminLte.Web
  use Talon.Components.Datatable, __MODULE__

end
