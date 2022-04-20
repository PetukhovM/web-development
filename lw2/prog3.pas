PROGRAM PrintHelloName(INPUT, OUTPUT);
USES
  DOS;
VAR
  Name: STRING;
BEGIN {PrintHelloName}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Name := GetEnv('QUERY_STRING');
  IF Name = ''
  THEN
    WRITELN('Hello Anonymous!')
  ELSE
    IF COPY(Name, 1, 5) = 'name='
    THEN
      BEGIN
        DELETE(Name, POS('&', Name), 100);
        WRITELN('Hello dear, ', COPY(Name, 6), '!')
      END
END. {PrintHelloName}
