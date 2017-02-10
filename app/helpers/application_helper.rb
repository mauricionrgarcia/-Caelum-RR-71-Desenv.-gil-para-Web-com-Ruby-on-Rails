module ApplicationHelper
  def formatted_value(number)
    number_to_currency number,
    unit: "R$ ",
    separator: ",",
    delimiter: "."
  end
end
