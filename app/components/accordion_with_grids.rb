class AccordionWithGrids < Netzke::Base
  client_class do |c|
    c.layout = "accordion"
  end

  component :clerks

  component :bosses

  def configure(c)
    c.active_tab = 0
    c.prevent_header = true
    c.items = [ { :title => "I'm just a simple Ext.Panel" }, :clerks, :bosses ]
    super
  end
end
