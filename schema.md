## Post
FIXME

### Attributes
| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **created_at** | *date-time* | when post was created | `"2012-01-01T12:00:00Z"` |
| **id** | *uuid* | unique identifier of post | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **title** | *string* | post title | `"Hello world"` |
| **updated_at** | *date-time* | when post was updated | `"2012-01-01T12:00:00Z"` |
### Post Create
Create a new post.

```
POST /posts
```


#### Curl Example
```bash
$ curl -n -X POST https://api.example.com/posts \
  -H "Content-Type: application/json" \

```


#### Response Example
```
HTTP/1.1 201 Created
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "title": "Hello world",
  "updated_at": "2012-01-01T12:00:00Z"
}
```

### Post Delete
Delete an existing post.

```
DELETE /posts/{post_id}
```


#### Curl Example
```bash
$ curl -n -X DELETE https://api.example.com/posts/$POST_ID \
  -H "Content-Type: application/json" \

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "title": "Hello world",
  "updated_at": "2012-01-01T12:00:00Z"
}
```

### Post Info
Info for existing post.

```
GET /posts/{post_id}
```


#### Curl Example
```bash
$ curl -n -X GET https://api.example.com/posts/$POST_ID

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "title": "Hello world",
  "updated_at": "2012-01-01T12:00:00Z"
}
```

### Post List
List existing posts.

```
GET /posts
```


#### Curl Example
```bash
$ curl -n -X GET https://api.example.com/posts

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
[
  {
    "created_at": "2012-01-01T12:00:00Z",
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "title": "Hello world",
    "updated_at": "2012-01-01T12:00:00Z"
  }
]
```

### Post Update
Update an existing post.

```
PATCH /posts/{post_id}
```


#### Curl Example
```bash
$ curl -n -X PATCH https://api.example.com/posts/$POST_ID \
  -H "Content-Type: application/json" \

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "title": "Hello world",
  "updated_at": "2012-01-01T12:00:00Z"
}
```


