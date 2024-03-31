# Yosefa's Art
Yosefa's Art is a Ruby on Rails application that provides endpoints for managing admin authentication, creating, viewing, updating, and deleting paintings.

### Features
User authentication using JWT and Bcrypt.
CRUD operations for paintings.

### Installation
1. Clone the repository:

```bash
git clone https://github.com/bsimcha/Yosefa.git
cd Yosefa
```

2. Install dependencies:

```
bundle install
```

3. Set up the database:

```
rails db:create
rails db:migrate
```

4. Start the Rails server:

```
rails server
```

### Usage
The API is now accessible at http://localhost:3000.

### Authentication
Authentication is required for most endpoints. Include the JWT token in the Authorization header of your requests.

Example:

```
Authorization: Bearer YOUR_JWT_TOKEN
```

### Endpoints

 User
  
 * POST /signup: Create a new user.
 * POST /login: Authenticate and obtain a JWT token.
  
Painting
  * GET /paintings: Get a list of all paintings.
  * GET /paintings/:id: Get details of a specific painting.
  * POST /paintings: Create a new painting.
  * PUT /paintings/:id: Update a specific painting.
  * DELETE /paintings/:id: Delete a specific painting.
  
  
### Examples
Admin Signup

```
POST /signup
Content-Type: application/json

{
  "user": {
    "email": "user@example.com",
    "password": "password123"
  }
}
```

Admin Login

```
POST /login
Content-Type: application/json

{
  "user": {
    "email": "user@example.com",
    "password": "password123"
  }
}
```

Create Painting

```
POST /paintings
Content-Type: application/json
Authorization: Bearer YOUR_JWT_TOKEN

{
  "painting": {
    "description": "Pretty Painting",

  }
}
```
Create An Image for a Painting

```
POST /images
Content-Type: application/json
Authorization: Bearer YOUR_JWT_TOKEN

{
  "image": {
    "url": "http://.....",
    "painting_id": 1

  }
}
```

Get List of Paintings

```
GET /paintings
Authorization: Bearer YOUR_JWT_TOKEN
```

Update Painting

```
PUT /paintings/:id
Content-Type: application/json
Authorization: Bearer YOUR_JWT_TOKEN

{
  "painting": {
    "description": "Updated Painting Description"
  }
}
```

Delete Painting

```
DELETE /paintings/:id
Authorization: Bearer YOUR_JWT_TOKEN
```
### License
This project is licensed under the MIT License.
