
RC Marketplace - Android-ready (Blue Book Edition)
--------------------------------------------------

How to run on Android (Termux):

1. Install Termux from F-Droid.
2. Install a code editor (Acode, Spck) and ZArchiver to extract the ZIP.
3. Extract this archive to a folder you can access from Termux (e.g. /storage/emulated/0/RC-Marketplace).
4. In Termux:
   termux-setup-storage
   cd /storage/emulated/0/RC-Marketplace/backend
   ./start.sh

The start script will:
 - npm install
 - npx prisma generate
 - npx prisma db push (creates SQLite schema)
 - seed bluebook entries
 - start the Express server on port 4000

Open your Android browser and visit: http://127.0.0.1:4000 (or use curl from Termux)
APIs:
 - GET /api/info
 - GET /api/items
 - POST /api/items (requires Authorization Bearer <token>)
 - POST /api/items/:id/renew (requires auth)
 - GET /api/bluebook?brand=&model=&category=
 - GET /api/bluebook/suggested-price/:itemId
 - POST /api/expire-check (run to mark expired items) or run npm run expire
