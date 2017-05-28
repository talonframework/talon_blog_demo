defmodule AdminLte.Web.DatatableView do
  use Talon.Web, which: :component_view, theme: "admin_lte", module: AdminLte.Web
  use Talon.Components.Datatable, __MODULE__

end
