module ApplicationHelper
  def currency_euro (item)
    number_to_currency(item, :unit => "$", :separator => ",", :delimiter => "")
  end
end
