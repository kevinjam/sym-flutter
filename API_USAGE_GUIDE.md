# SYM Medication Management API - Usage Guide

## Overview
The SYM API provides comprehensive medication tracking and management functionality for patients and doctors. This guide covers how to use the API, fix common issues, and test endpoints.

## Quick Start

### 1. Start the Backend Server
```bash
cd backend
npm install
npm start
```

The server will run on `http://localhost:9000`

### 2. Test Public Endpoints
These endpoints don't require authentication and can be used to verify the API is working:

- **Health Check**: `GET http://localhost:9000/api/health`
- **CORS Test**: `GET http://localhost:9000/api/cors-test`
- **Test Routes**: `GET http://localhost:9000/api/test-routes`
- **Public Health**: `GET http://localhost:9000/api/public/health`
- **API Version**: `GET http://localhost:9000/api/public/version`

### 3. Swagger UI Documentation
Access the interactive API documentation at:
```
http://localhost:9000/api-docs
```

## Authentication

### Register a User
```bash
POST /api/auth/register
Content-Type: application/json

{
  "email": "patient@example.com",
  "password": "password123",
  "firstName": "John",
  "lastName": "Doe",
  "role": "patient",
  "phoneNumber": "+1234567890",
  "dateOfBirth": "1990-01-01",
  "gender": "male"
}
```

### Login
```bash
POST /api/auth/login
Content-Type: application/json

{
  "email": "patient@example.com",
  "password": "password123"
}
```

### Using the Token
Include the JWT token in the Authorization header for protected endpoints:
```
Authorization: Bearer <your_jwt_token>
```

## Fixing Swagger UI "Insufficient Permissions" Error

The Swagger UI shows "Insufficient permissions" because most endpoints require authentication. Here's how to fix this:

### Option 1: Use Postman Collection (Recommended)
1. Import the `SYM_API_Postman_Collection.json` file into Postman
2. Use the authentication flow to get a token
3. Test all endpoints with proper authentication

### Option 2: Add Authentication to Swagger UI
1. In Swagger UI, click the "Authorize" button (lock icon)
2. Enter your JWT token in the format: `Bearer <your_token>`
3. Click "Authorize"
4. Now you can test protected endpoints

### Option 3: Test Public Endpoints First
Use these public endpoints to verify the API is working:
- `GET /api/public/health`
- `GET /api/public/version`
- `GET /api/health`
- `GET /api/cors-test`

## Postman Collection Usage

### 1. Import the Collection
1. Open Postman
2. Click "Import" → "File" → Select `SYM_API_Postman_Collection.json`
3. The collection will be imported with all endpoints organized by category

### 2. Set Up Environment Variables
The collection uses these variables:
- `base_url`: `http://localhost:9000`
- `auth_token`: Your JWT token (auto-filled after login)
- `user_id`: User ID (auto-filled after registration/login)
- `medication_id`: Medication ID for testing
- `symptom_id`: Symptom ID for testing

### 3. Authentication Flow
1. **Register a Patient**: Run "Register Patient" request
   - This automatically saves the token and user ID
2. **Login**: Run "Login" request (alternative to registration)
   - This also saves the token and user ID

### 4. Test Endpoints
After authentication, you can test:
- **Patient Endpoints**: Get medications, report symptoms, etc.
- **Doctor Endpoints**: Manage patients, prescribe medications
- **Medication Endpoints**: CRUD operations on medications
- **Notification Endpoints**: Manage notifications

## API Endpoints Overview

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login user
- `GET /api/auth/profile` - Get user profile
- `PUT /api/auth/profile` - Update user profile
- `POST /api/auth/fcm-token` - Update FCM token
- `DELETE /api/auth/fcm-token` - Remove FCM token
- `POST /api/auth/refresh` - Refresh token

### Patient Endpoints
- `GET /api/patient/medications` - Get patient's medications
- `POST /api/patient/medications/:id/take` - Mark medication as taken
- `POST /api/patient/medications/:id/miss` - Mark medication as missed
- `POST /api/patient/symptoms` - Report a symptom
- `GET /api/patient/symptoms` - Get patient's symptoms
- `GET /api/patient/adherence` - Get adherence summary
- `GET /api/patient/schedule` - Get medication schedule

### Doctor Endpoints
- `GET /api/doctor/patients` - Get all patients
- `GET /api/doctor/patients/:id` - Get patient details
- `POST /api/doctor/medications/prescribe` - Prescribe medication
- `POST /api/doctor/medications/:id/stop` - Stop medication
- `GET /api/doctor/symptoms` - Get symptoms for doctor
- `POST /api/doctor/symptoms/:id/resolve` - Resolve symptom
- `GET /api/doctor/adherence/:id` - Get patient adherence

### Medication Endpoints
- `GET /api/medication` - Get all medications
- `GET /api/medication/categories` - Get medication categories
- `GET /api/medication/:id` - Get medication details
- `POST /api/medication` - Create medication
- `PUT /api/medication/:id` - Update medication
- `PATCH /api/medication/:id/approve` - Approve medication
- `DELETE /api/medication/:id` - Delete medication

### Notification Endpoints
- `GET /api/notification` - Get notifications
- `POST /api/notification/:id/read` - Mark notification as read
- `POST /api/notification/read-all` - Mark all as read
- `GET /api/notification/unread-count` - Get unread count
- `DELETE /api/notification/:id` - Delete notification

## Testing Symptom Reporting

### 1. Register/Login as Patient
```bash
POST /api/auth/register
{
  "email": "test@example.com",
  "password": "password123",
  "firstName": "Test",
  "lastName": "Patient",
  "role": "patient"
}
```

### 2. Report a Symptom
```bash
POST /api/patient/symptoms
Authorization: Bearer <your_token>
Content-Type: application/json

{
  "name": "Headache",
  "description": "Severe headache in the morning",
  "severity": "moderate",
  "category": "neurological",
  "duration": "hours"
}
```

### 3. Get Symptoms
```bash
GET /api/patient/symptoms
Authorization: Bearer <your_token>
```

## Common Issues and Solutions

### 1. "Insufficient permissions" in Swagger UI
**Solution**: Use Postman collection or add authentication to Swagger UI

### 2. "Validation error" with medication endpoints
**Solution**: The validation has been updated to allow the `isApproved` field. For creating medications, omit the `isApproved` field as it defaults to `false`. For updating medications, you can include `isApproved: true` to approve them.

### 3. CORS errors
**Solution**: The API is configured to allow requests from common development origins

### 4. 404 errors
**Solution**: Check that the server is running and the endpoint URL is correct

### 5. Authentication errors
**Solution**: Ensure you're using a valid JWT token in the Authorization header

### 6. Database connection errors
**Solution**: Ensure MongoDB is running and the connection string is correct

## Development Tips

### 1. Environment Variables
Create a `.env` file in the backend directory:
```env
MONGODB_URI=mongodb://localhost:27017/sym_medication_app
JWT_SECRET=your_jwt_secret_here
NODE_ENV=development
PORT=9000
```

### 2. Database Setup
```bash
# Start MongoDB (if using local installation)
mongod

# Or use MongoDB Atlas (cloud)
# Update MONGODB_URI in .env file
```

### 3. Testing with curl
```bash
# Health check
curl http://localhost:9000/api/health

# Register user
curl -X POST http://localhost:9000/api/auth/register \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","password":"password123","firstName":"Test","lastName":"User","role":"patient"}'

# Login
curl -X POST http://localhost:9000/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","password":"password123"}'
```

## Mobile App Integration

The mobile app uses the same API endpoints. Key integration points:

1. **Authentication**: Use the same login/register endpoints
2. **Symptom Reporting**: Use `POST /api/patient/symptoms`
3. **Medication Management**: Use patient medication endpoints
4. **Push Notifications**: Use FCM token endpoints

## Support

For issues or questions:
1. Check the server logs for detailed error messages
2. Use the Postman collection for testing
3. Verify database connectivity
4. Check authentication token validity

The API is designed to be RESTful and follows standard HTTP conventions for status codes and error handling. 