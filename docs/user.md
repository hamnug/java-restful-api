# User API Spec

## Register User

Endpoint : POST /api/users/register

Request Body : 
```json
{
    "username" : "hamnug",
    "password" : "rahasia",
    "name" : "Muhammad Ilham Nugraha"
}
```

Response Body (Success) : 
```json
{
    "data" : "OK"
}
```

Response Body (Failed) :
```json
{
    "error" : "Username or Password must not blank"
}
``` 


## Login User

Endpoint : POST /api/auth/login

Request Body : 
```json
{
    "username" : "hamnug",
    "password" : "rahasia"
}
```

Response Body (Success) : 
```json
{
    "data" : {
        "token" : "TOKEN",
        "expiredAt" : 232323232323234 // miliseconds
    }
}
```

Response Body (Failed, 401) :
```json
{
    "error" : "Incorrect Username or Password"
}
``` 


## Get User

Endpoint : GET /api/users/current

Request Header : 

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) : 
```json
{
    "data" : {
        "username" : "hamnug",
        "name" : "Muhammad Ilham Nugraha"
    }
}
```

Response Body (Failed, 401) :
```json
{
    "error" : "Unauthorized"
}
``` 


## Update User

Endpoint : PATCH /api/auth/login

Request Header : 

- X-API-TOKEN : Token (Mandatory)

Request Body : 
```json
{
    "name" : "Muhammad Ilham Nugraha", // put if only want to update
    "password" : "new password" // put if only want to update
}
```

Response Body (Success) : 
```json
{
    "data" : {
        "username" : "hamnug",
        "name" : "Muhammad Ilham Nugraha"
    }
}
```

Response Body (Failed, 401) :
```json
{
    "error" : "Unauthorized"
}
``` 


## Logout User

Endpoint : DELETE api/auth/logout

Request Header : 

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) : 
```json
{
    "data" : "OK"
}
```