#!/bin/sh
# Run this in Termux. Assumes Node + npm installed.
echo "Installing dependencies..."
npm install
echo "Generating Prisma client..."
npx prisma generate || true
echo "Applying schema to SQLite (prisma db push)"
npx prisma db push
echo "Seeding bluebook..."
node seed.js || true
echo "Starting server..."
node index.js
