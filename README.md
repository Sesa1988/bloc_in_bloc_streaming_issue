# bloc_in_bloc_stream_issue

## Open issue

<https://github.com/felangel/bloc/issues/3342>

## Steps to reproduce

- Start app
- Navigate on details after loading
- Click on "Get details"
- Go back to home
- Navigate to details again
- Click on "Get details"

## Result

- Exception is thrown. Its weird that it looks like that the details bloc throws the exception
