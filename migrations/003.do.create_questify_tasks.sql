CREATE TABLE questify_tasks (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  task_name TEXT NOT NULL,
  task_desc TEXT NOT NULL,
  quest_id INTEGER REFERENCES questify_quests(id) ON DELETE SET NULL,
  user_id INTEGER REFERENCES questify_users(id) ON DELETE SET NULL,
  completed BOOLEAN DEFAULT FALSE NOT NULL,
  date_created TIMESTAMP DEFAULT now() NOT NULL,
  date_modified TIMESTAMP
);