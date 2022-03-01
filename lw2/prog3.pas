PROGRAM PrintHelloName(INPUT, OUTPUT);
USES
  DOS;
BEGIN {PrintHelloName}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  IF GetEnv('QUERY_STRING') = ''
  THEN
    WRITELN('Hello Anonymous!')
  ELSE
    DELETE(GetEnv('QUERY_STRING'), 12{POS('&', GetEnv('QUERY_STRING'))}, 30);
  IF COPY(GetEnv('QUERY_STRING'), 1, 5) = 'name='
  THEN
    WRITELN('Hello dear, ', COPY(GetEnv('QUERY_STRING'), 6), '!')
END. {PrintHelloName}
