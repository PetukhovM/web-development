PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  DOS;
VAR
  Lanterns: STRING;
BEGIN{SarahRevere}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('QUERY_STRING'));
  Lanterns := GetEnv('QUERY_STRING');
  IF Lanterns = 'lanterns=1'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Lanterns = 'lanterns=2'
    THEN
      WRITELN('The British are coming by sea.')
    ELSE
      WRITELN('Sarah didn''t say')
END. {SarahRevere}
