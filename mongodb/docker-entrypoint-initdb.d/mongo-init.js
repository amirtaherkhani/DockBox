// Create admin user for admin database
db = db.getSiblingDB("admin");
db.createUser({
  user: "admin",
  pwd: "fNMTiBJ6XrIT3nEr",
  roles: [
    {
      role: "userAdminAnyDatabase",
      db: "admin",
    },
  ],
});

// Create root user for admin database
db.createUser({
  user: "root",
  pwd: "fNMTiBJ6XrIT3nEr",
  roles: [
    {
      role: "root",
      db: "admin",
    },
  ],
});

db.createUser({
  user: "nextjs",
  pwd: "fNMTiBJ6XrIT3nEr",
  roles: [
    {
      role: "readWrite",
      db: "contentable_ai",
    },
  ],
});
