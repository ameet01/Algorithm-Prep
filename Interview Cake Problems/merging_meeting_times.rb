

def merge_ranges(meetings)
  sorted_meetings = meetings.sort

  meetings = [sorted_meetings[0]]

  sorted_meetings[1..-1].each do |time|
    current_start = time[0]
    current_end = time[1]

    previous_start = meetings.last[0]
    previous_end = meetings.last[1]

    if current_start <= previous_end
      meetings.pop
      meetings << [previous_start, [current_end, previous_end].max]
    else
      meetings.push([current_start, current_end])
    end
  end

  meetings
end


p merge_ranges(  [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]])