# module ApplicationHelper
# end


module ApplicationHelper
  def sort_indicator(column, current_sort, current_direction)
    return "" unless column == current_sort

    if current_direction == 'asc'
      '↑'  # Up arrow for ascending
    else
      '↓'  # Down arrow for descending
    end
  end
end
