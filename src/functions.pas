unit functions;

interface

uses System.SysUtils;
function day_of_week: string;

implementation

function day_of_week: string;
begin
  case DayOfWeek(now) of
    1:
      result := 'یکشنبه';
    2:
      result := 'دوشنبه';
    3:
      result := 'سه شنبه';
    4:
      result := 'چهارشنبه';
    5:
      result := 'پنجشنبه';
    6:
      result := 'جمعه';
    7:
      result := 'شنبه';
  end;
end;

end.
