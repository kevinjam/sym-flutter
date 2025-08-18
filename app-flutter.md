
## Developer Prompt for Flutter App — “Patient-Facing Features”

**Contextual Instructions (High-Level):**
You are an expert Flutter developer (or a Flutter-aware AI assistant). Your task is to generate or guide the implementation of a cross-platform Flutter (iOS + Android) app that provides patient-facing features—specifically medication scheduling, symptom tracking (with links to medication), and persistent notifications. Write clean, maintainable Dart code using appropriate Flutter best-practices and packages (e.g., `provider` or `riverpod` for state management, `flutter_local_notifications` or `awesome_notifications` for scheduling/notifications, and local persistence (e.g., Hive or SQLite) with offline-first capability.)

---

### 1. **Medication–Schedule Integration**

**Goal:** Whenever a patient adds or modifies a medication, it must link to reminders/scheduling functionality.

**Requirements:**

* UI:

  * A form to **add/edit medication**, capturing fields: `name`, `dosage`, `schedule times (e.g., daily at HH:MM)`, optional **linked symptoms**.
* State/backend:

  * On save, store medication data and schedule to:

    * A local database (e.g., Hive/SQLite for offline support).
    * A remote backend API when online (with retry logic if offline).
* Scheduling logic:

  * Schedule local **push notifications** at specified times for each medication.
  * If saving schedule fails (e.g., network error), show immediate in-app error and **retry automatically** when connection resumes.

---

### 2. **Symptoms Tab (Tied to Medications)**

**Goal:** Patients search and log symptoms; results adapt based on currently taken medications.

**Flow Details:**

1. Patient navigates to Symptoms screen.
2. Search field suggests:

   * **Symptoms historically or clinically associated** with patient’s current medications via local DB or API.
   * An **“Other”** option allowing manual symptom entry.
3. Data model:

   * Each medication stores a list of `linkedSymptoms`.
   * Each symptom stores a list of `linkedMedications`.
4. Tapping a medication in UI should show its linked symptoms.
5. When patient selects/enters a symptom:

   * It’s logged with timestamp, associated medications, and persisted locally/remote.

**UI Behavior Example:**

* Patient searches “Headache”.
* If “Headache” is linked to **Medication Z**, show that suggestion.
* Otherwise, they can tap “Other” and type “Headache”.
* The system will then filter and suggest linked medications when viewing or editing that symptom.

---

### 3. **Push Notifications**

**Goal:** Reliable reminders for medication times and symptom follow-ups.

**Requirements:**

* Use a Flutter push-notification package (`flutter_local_notifications`, `awesome_notifications`, or similar).
* Schedule notifications for each medication time.
* Notifications must be **persistent** until the user dismisses or acts on them.
* Notification content should include:

  * Medication name.
  * Dosage.
  * (Optionally) Next scheduled time or prompt to log symptoms/check-in.

---

### 4. **Data Model (Local + Remote)**

Use this JSON-like structure as your schema blueprint:

```json
{
  "patientId": "12345",
  "medications": [
    {
      "id": "med-z1",
      "name": "Med Z1",
      "dosage": "10mg",
      "scheduleTimes": ["08:00", "20:00"],
      "linkedSymptoms": ["Nausea", "Headache"]
    }
  ],
  "symptoms": [
    {
      "id": "symp-nausea",
      "name": "Nausea",
      "linkedMedications": ["med-z1", "med-z2"]
    }
  ],
  "symptomLogs": [
    {
      "symptomId": "symp-nausea",
      "timestamp": "2025-08-14T09:15:00Z",
      "medications": ["med-z1"]
    }
  ]
}
```

**Implementation notes:**

* Generate unique IDs (UUIDs) for meds, symptoms, logs.
* Store locally first (offline support), then sync to backend.
* Maintain two-way links automatically (on linking symptom to medication, update both sides).

---

### 5. **Developer & Architecture Notes**

* Use clean architecture: separate **UI**, **state**, **repositories**, **services** (e.g., `MedicationRepository`, `NotificationService`, `SyncService`).
* Use offline-first patterns: write to local db, queue remote sync calls, retry when connected.
* Avoid hard-coding symptom lists—fetch from remote (or use local cache of common ones) and allow overrides.
* Ensure the notification scheduler reinitializes (reschedules) on app restart or device reboot.
* Write unit/integration tests for scheduling logic and data syncing.

---

### 6. **(Optional) AI-Assisted Symptom Suggestion Version**

If you’d like an enhancement where AI steps in for matching symptoms:

* Description:

  * When the local DB has no symptoms linked to a medication, call an AI system to suggest likely related symptoms.
  * E.g., “Given medication X, what common side-effects might a patient experience?”
* Implementation:

  * Write a system prompt for your AI call (e.g., to OpenAI):

    ```
    System: You’re a medical assistant. Given a medication name (and dosage), list 5 to 10 common symptoms or side-effects in everyday layman’s terms.
    ```
  * On the symptoms screen, if no symptoms are linked:

    * Invoke AI prompt.
    * Show suggestions labeled “Suggested” with ability to “Add” to patient's profile.
  * Persist any accepted suggestions to local DB (and link properly).

---

## &#x20;Final Prompt for Embedding or Sharing

```
## Flutter App Developer Task: Patient-Facing Medication + Symptom Tracking

Build a cross-platform Flutter app (iOS + Android) with these features:

1. **Medication Scheduler**
   - UI to add/edit medications (name, dosage, schedule times, linked symptoms).
   - Persist data locally (Hive/SQLite), sync with backend with retry logic.
   - Persist schedule and set up local notifications at specified times.
   - Show immediate error if scheduling fails; retry on reconnection.

2. **Symptoms Module**
   - Search interface that pulls symptoms linked to current medications; “Other” option for manual entry.
   - Bi-directional links: medications → linkedSymptoms, symptoms → linkedMedications.
   - UI to view medication’s linked symptoms.
   - Logging capability: record symptom + timestamp + associated meds.

3. **Push Notifications**
   - Use a Flutter notification plugin to deliver persistent reminders at scheduled times.
   - Include name, dosage, next schedule.

4. **Data Modeling & Offline Sync**
   - Use ID-anchored JSON structure (see example above).
   - Local-first persistence; queue changes and sync with backend when online.
   - Always maintain two-way symptom-medication linkage.

5. **Architecture & Robustness**
   - Clean separation of UI, state management, data services.
   - Support app and device restarts (reschedule notifications).
   - Avoid hard-coded symptom lists; cache and sync from remote.
   - Write tests for scheduling and syncing.

6. **(Optional AI Enhancement)**
   - If no linked symptoms exist, query an AI assistant to suggest common symptoms.
   - Present suggestions in UI; allow adding to local DB and linking.

Follow Flutter best practices, write idiomatic Dart code, and document your services and major methods. Thank you!
```

---

We have an existing backend located in /backend with all required APIs for patients, medications, symptoms, schedules, and notifications. Your task is to build a Flutter (Dart) app for iOS and Android that integrates seamlessly with this backend.
Backend Structure Overview
Here's the complete structure of your backend directory:

Root Files
server.js
 - Main application entry point (5.4KB)
package.json
 - Node.js dependencies and scripts
package-lock.json
 - Locked dependency versions
Dockerfile
 - Docker containerization config
docker-compose.yml
 - Multi-container Docker setup
.env
 - Environment variables (2.9KB)
env.example
 - Environment template
healthcheck.js
 - Health monitoring endpoint
README.md
 - Project documentation (11.9KB)
prompt.md
 - Project prompts/guidelines
Core Directories
config/ (3 files)
cron.js
 - Scheduled task configuration
firebase.js
 - Firebase service setup
swagger.js
 - API documentation config (8.3KB)
controllers/ (8 files)
authController.js
 - Authentication logic (10.3KB)
categoryController.js
 - Category management
doctorController.js
 - Doctor operations (11.2KB)
doctorPatientRequestController.js
 - Doctor-patient requests
dosageFormController.js
 - Medication dosage forms
medicationController.js
 - Medication management
notificationController.js
 - Push notifications
patientController.js
 - Patient operations (9.4KB)
models/ (8 files)
User.js
 - User data model
Category.js
 - Medication categories
DoctorPatientRequest.js
 - Request relationships
DosageForm.js
 - Dosage form definitions
Medication.js
 - Medication data model
Notification.js
 - Notification schema
PatientMedication.js
 - Patient-medication relationships
Symptom.js
 - Symptom tracking
routes/ (8 files)
auth.js
 - Authentication endpoints
category.js
 - Category routes
doctor.js
 - Doctor-specific routes
doctorPatientRequest.js
 - Request handling routes
dosageForm.js
 - Dosage form routes
medication.js
 - Medication routes (6.7KB)
notification.js
 - Notification routes
patient.js
 - Patient routes
middleware/ (2 files)
auth.js
 - Authentication middleware
validation.js
 - Input validation (6.6KB)
utils/ (6 files)
clearDatabase.js
 - Database cleanup utility
createPrescriptionForExistingPatient.js
 - Prescription creation
createTestPatientAndPrescription.js
 - Test data creation
notificationService.js
 - Notification service (11.9KB)
scheduler.js
 - Task scheduling (7KB)
seedCategoriesAndDosageForms.js
 - Database seeding
docs/ (2 files)
Documentation directory

tests/ (1 file)
Testing directory

This appears to be a medical/healthcare application backend with a well-organized MVC architecture, featuring user authentication, doctor-patient relationships, medication management, and notification systems. The structure follows Node.js best practices with clear separation of concerns.

Feedback submitted
