PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  DOS;
BEGIN{SarahRevere}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('QUERY_STRING'));
  IF GetEnv('QUERY_STRING') = 'lanterns=1'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF GetEnv('QUERY_STRING') = 'lanterns=2'
    THEN
      WRITELN('The British are coming by sea.')
    ELSE
      WRITELN('Sarah didn''t say')
END. {SarahRevere}