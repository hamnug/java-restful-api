# Contact API Spec

## Create Contact

Endpoint : POST /api/contacts

Request Header : 

- X-API-TOKEN : Token (Mandatory)

Request Body : 
```json
{
    "firstName" : "Muhammad Ilham",
    "lastName" : "Nugraha",
    "email" : "ilham@example.com",
    "phone" : "08889866865"
}
```

Response Body (Success) : 
```json
{
    "data" : {
        "id" : "random-string",
        "firstName" : "Muhammad Ilham",
        "lastName" : "Nugraha",
        "email" : "ilham@example.com",
        "phone" : "08889866865"
    }
}
```

Response Body (Failed) :
```json
{
    "error" : "Email or Phone format is invalid..."
}
``` 


## Update Contact

Endpoint : PUT /api/contacts/{idContact}

Request Header : 

- X-API-TOKEN : Token (Mandatory)

Request Body : 
```json
{
    "firstName" : "Muhammad Ilham",
    "lastName" : "Nugraha",
    "email" : "ilhamngrh633@gmail.com",
    "phone" : "08889866865"
}
```

Response Body (Success) : 
```json
{
    "data" : {
        "id" : "random-string",
        "firstName" : "Muhammad Ilham",
        "lastName" : "Nugraha",
        "email" : "ilham@example.com",
        "phone" : "08889866865"
    }
}
```

Response Body (Failed) :
```json
{
    "error" : "Email or Phone format is invalid..."
}
``` 


## Get Contact

Endpoint : GET /api/contacts/{idContact}

Request Header : 

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) : 
```json
{
    "data" : {
        "id" : "random-string",
        "firstName" : "Muhammad Ilham",
        "lastName" : "Nugraha",
        "email" : "ilham@example.com",
        "phone" : "08889866865"
    }
}
```

Response Body (Failed, 404) :
```json
{
    "error" : "Contact is not found"
}
``` 


## Search Contact

Endpoint : GET /api/contacts

Query Param : 

- name : String, contact first name or last name, using like query (optional)
- phone : String, contact phone, using like query (optional)
- email : String, contact email, using like query (optional)
- page : Integer, start from 0, default 0
- size : Integer, default 10

Request Header : 

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) : 
```json
{
    "data" : [
        {
            "id" : "random-string",
            "firstName" : "Muhammad Ilham",
            "lastName" : "Nugraha",
            "email" : "ilham@example.com",
            "phone" : "08889866865"
        }
    ], 
    "paging" : {
        "currentPage" : 0,
        "totalPage" : 10,
        "size" : 10
    }
}
```

Response Body (Failed) :
```json
{
    "error" : "Unauthorized"
}
``` 


## Remove Contact

Endpoint : DELETE /api/contacts/{idContact}

Request Header : 

- X-API-TOKEN : Token (Mandatory)

Response Body (Success) : 
```json
{
    "data" : "OK"
}
```

Response Body (Failed) :
```json
{
    "error" : "Contact is not found"
}
``` 