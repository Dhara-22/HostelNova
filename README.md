# HostelNova — Hostel Management System + FSD Practical Lab

**HostelNova** is a full-stack hostel management project created to demonstrate the Nirma University Semester V Full Stack Development practicals. It combines a usable hostel operations app with a dedicated **Practical Lab 01–10** page that includes small, interactive demonstrations.

## Highlights

- **Overview dashboard:** resident, room occupancy, complaint and fee snapshots; notice board; persistent team checklist.
- **Resident directory:** search/filter, add residents, role-limited removal.
- **Rooms & residence:** room types, capacity, occupancy, annual fee, availability and room request workflow.
- **Maintenance & support:** raise complaints, priority, status workflow for wardens/admins.
- **Fees & payments:** payment register and status management (demo records only; no real payment gateway).
- **Notice board:** publish and view campus announcements.
- **Practical Lab 01–10:** individual concept notes and interactive mini-demos.
- **Role-based access:** admin, warden and student demo users; server-side session and role checks.
- **Persistent demo data:** records are stored in `data/db.json` so edits survive a server restart.
- **Responsive UI:** desktop sidebar, mobile navigation, responsive cards/tables.

## Tech stack mapped to the syllabus

| Practical | Concepts | Where to demonstrate |
|---|---|---|
| 1 | JavaScript in HTML, Node.js, JSON file, app title | Practical Lab 01; `server.js`; `data/db.json` |
| 2 | JSON objects/arrays, external JSON, nested arrays, to-do list | Practical Lab 02; dashboard checklist; JSON data file |
| 3 | Viewport, max-width, vw, media queries | Practical Lab 03; `public/index.html`; `public/styles.css` |
| 4 | Geolocation, Local Storage, Drag & Drop | Practical Lab 04 |
| 5 | Bootstrap CDN/offline concept, student registration form | Bootstrap 5 CDN in `public/index.html`; Practical Lab 05 |
| 6 | Tailwind CSS | Tailwind CDN with preflight disabled; Practical Lab 06 |
| 7 | Vue custom directive, dynamic list, human-readable date | Vue 3 and Practical Lab 07 |
| 8 | Node.js + MySQL create/read/update/delete/select distinct/drop | Optional MySQL endpoints in `server.js`; Practical Lab 08 |
| 9 | Role-based authentication and access control | Login, sessions and server middleware; Practical Lab 09 |
| 10 | MongoDB CRUD | Optional MongoDB endpoints in `server.js`; Practical Lab 10 |

> The uploaded practical list also contains Practical 11* for deployment and Git/GitHub. This is outside the requested 1–10 lab but is documented below as the deployment workflow.

## Requirements

- Node.js 18 or later
- npm
- A modern browser
- Optional for database practicals: MySQL and MongoDB installations/services

## Run locally on Windows / VS Code

1. Extract the project folder and open it in VS Code.
2. Open Terminal → New Terminal in the `HostelNova` project folder.
3. Install dependencies:

   ```bash
   npm install
   ```

4. Copy `.env.example` to `.env` if you want to configure the optional databases. The app can run without MySQL or MongoDB.
5. Start the server:

   ```bash
   npm start
   ```

6. Open **http://localhost:3000** in your browser.

For auto-restart while developing, run `npm run dev`.

## Demo sign-ins

| Role | Email | Password |
|---|---|---|
| Admin | `admin@hostelnova.demo` | `Admin@123` |
| Warden | `warden@hostelnova.demo` | `Warden@123` |
| Student | `student@hostelnova.demo` | `Student@123` |

The login page includes buttons that prefill each demo account. These credentials are for a local academic demonstration only. Change the session secret and replace the in-memory demo-user setup before any real deployment.

## Optional MySQL setup (Practical 8)

1. Start your local MySQL service and create a database user with permission to create databases/tables.
2. Copy `.env.example` to `.env` and set `MYSQL_HOST`, `MYSQL_PORT`, `MYSQL_USER`, `MYSQL_PASSWORD`, and `MYSQL_DATABASE`.
3. Restart the server.
4. Sign in as Admin → Practical Lab → Practical 08 → **Check connection** or **Create database & table**.
5. For viva, explain the matching SQL operations: `CREATE DATABASE`, `CREATE TABLE`, `INSERT`, `UPDATE`, `SELECT`, `SELECT DISTINCT`, `DELETE`, and `DROP TABLE`. A safe sample SQL file is provided in `practicals/mysql-demo.sql`.

## Optional MongoDB setup (Practical 10)

1. Start MongoDB locally or use a MongoDB deployment you control.
2. Set `MONGODB_URI` and `MONGODB_DATABASE` in `.env`.
3. Restart the server, sign in as Admin, and use Practical Lab → Practical 10.
4. Create a record, read records, update a selected record, or delete a record. The server uses the `practical_records` collection.

## Folder structure

```text
HostelNova/
├── server.js                 # Express server, sessions and API routes
├── package.json
├── .env.example
├── README.md
├── data/
│   └── db.json                # Persistent demo records
├── practicals/
│   ├── mysql-demo.sql         # Practical 8 query examples
│   └── viva-guide.md          # Quick demo and viva checklist
└── public/
    ├── index.html             # Application and Practical Lab views
    ├── styles.css             # Responsive visual design
    └── app.js                 # Vue app, UI interactions and API calls
```

## Important academic / production notes

- Bootstrap and Vue are loaded from public CDNs; Tailwind is loaded from its browser CDN for a straightforward lab demonstration. For a production deployment, use a build pipeline and pin dependencies.
- `data/db.json` is a simple teaching/demo persistence layer. It is not designed for concurrent production writes. Use MySQL/MongoDB or another database for real deployments.
- The payment screen tracks **sample fee records only**; it does not charge money.
- Geolocation asks for browser permission and may require HTTPS outside localhost.
- Demo accounts are defined in `server.js` to keep setup easy for a classroom demo. Replace this with a real user database, secure password lifecycle, rate limiting, CSRF protection, secure cookies, and a managed session store before production.
- Never expose a database password or production secret in GitHub.

## Deployment and GitHub (Practical 11*)

Push the project to a GitHub repository, set a strong `SESSION_SECRET` and any database environment variables in the hosting dashboard, then deploy the Node.js app to a host that supports a persistent Node server. A static-only host cannot run the Express API. If deploying to an ephemeral serverless environment, move JSON-file persistence to a managed database first.

## Authors

Add your project team names and roll numbers here before submission.
### Vue.js is served locally

Vue 3 is installed through npm and served by the Express app at `/vendor/vue/vue.global.prod.js`, so the interface does not depend on the unpkg CDN being reachable. After updating the project, run `npm install` and restart the server.


## Profile and accessibility settings
- Use the profile button at the top-right to open account settings or sign out.
- Profile settings support a display name, a local profile photo (maximum 2 MB), and four website text-size choices.
- The greeting uses the current time and the signed-in account's display name. The admin demo account is named `Hostel Admin`; you can change the display name in Profile & appearance.
- Profile photo, display name and text size are saved in the current browser using Local Storage.
