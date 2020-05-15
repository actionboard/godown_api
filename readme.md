## Godown test API
This API is to get data for godown

#### API's
`curl https://godown-test-api.herokuapp.com/`
This will give the response
`{"api":"Server is running"}`

`curl 'https://godown-test-api.herokuapp.com/godown?date=2020-05-15'`


This will give the response


{"data":[{"date":"2020-05-15","item":"Quinoa","count":87,"godown":"Godown 5"}...]}


**Note:** _Pass date in format 'yyyy-mm-dd'_


You can also get all data using offset. Default limit is 500

`curl 'https://godown-test-api.herokuapp.com/godown'`


This will return first 500 items


`curl 'https://godown-test-api.herokuapp.com/godown?offset=501'`


This will return next 500 items

