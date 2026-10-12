# HostelNova — practical demo / viva checklist

## Recommended demo sequence
1. Sign in as Admin and point out the dashboard KPIs, notices, complaints and checklist.
2. Add a resident. Search and filter the directory. Explain server validation and JSON persistence.
3. Open Rooms & residence. Explain capacity, occupied beds and availability.
4. Raise a complaint; sign in as Warden to move it through Open → In Progress → Resolved.
5. Update a sample fee status and publish a notice.
6. Open Practical Lab and click through Practical 01–10. Each has a concept summary, live demo and a note explaining its use in the main app.
7. Sign out and sign in as Student. Show the role changes and restricted controls.
8. If configured, demonstrate the live MySQL and MongoDB connections.

## Fast viva answers

- **Why Node.js?** It lets us use JavaScript on the server to serve pages and implement APIs.
- **What is JSON?** A text format for structured data represented by objects, arrays, strings, numbers, booleans and null.
- **What is Local Storage?** Browser storage that keeps key/value strings across reloads for the same origin.
- **What is Geolocation API?** A browser API that can request coordinates after the user grants permission.
- **What is Bootstrap?** A CSS framework with a responsive grid and ready-made UI components.
- **What is Tailwind?** A utility-first CSS framework whose small classes can be composed into components.
- **What is a Vue directive?** A special template attribute that applies reactive or DOM behaviour; this lab demonstrates a custom directive.
- **What is CRUD?** Create, Read, Update and Delete.
- **MySQL vs MongoDB?** MySQL is relational and table-based; MongoDB stores document records in collections.
- **What is RBAC?** Role-Based Access Control: permissions depend on a user’s assigned role.
- **Why server-side role checks?** Hiding a button in the browser is not security; a user can still call an API directly, so the server must check permission.
- **Is this production-ready?** It is a full academic demonstration. Production use needs persistent database-backed users, secure configuration, validation, logging, rate limiting, CSRF protections and deployment-specific persistence.
