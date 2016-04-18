
CREATE TABLE photos (
  id INTEGER PRIMARY KEY,
  item_id INTEGER NOT NULL,

  path TEXT NOT NULL,
  mimetype TEXT NOT NULL,
  checksum TEXT NOT NULL,
  orientation INTEGER NOT NULL DEFAULT 1,
  exif TEXT,

  FOREIGN KEY (id) REFERENCES images(id) ON DELETE CASCADE,
  FOREIGN KEY (item_id) REFERENCES items(id) ON DELETE CASCADE
) WITHOUT ROWID;


CREATE TABLE selections (
  id INTEGER PRIMARY KEY,
  photo_id INTEGER NOT NULL,

  quality TEXT NOT NULL DEFAULT 'default',

  x NUMERIC NOT NULL DEFAULT 0,
  y NUMERIC NOT NULL DEFAULT 0,
  pct BOOLEAN NOT NULL DEFAULT FALSE,

  FOREIGN KEY (id) REFERENCES images(id) ON DELETE CASCADE,
  FOREIGN KEY (photo_id) REFERENCES photos(id) ON DELETE CASCADE,
  FOREIGN KEY(quality) REFERENCES image_qualities(quality)
    ON UPDATE CASCADE
    ON DELETE SET DEFAULT
) WITHOUT ROWID;


CREATE TABLE image_scales (
  id INTEGER PRIMARY KEY,
  x NUMERIC,
  y NUMERIC,
  factor NUMERIC,
  fit BOOLEAN NOT NULL DEFAULT FALSE,
  FOREIGN KEY (id) REFERENCES selections(id) ON DELETE CASCADE
) WITHOUT ROWID;

CREATE TABLE image_rotations (
  id INTEGER PRIMARY KEY,
  angle NUMERIC,
  mirror BOOLEAN NOT NULL DEFAULT FALSE,
  FOREIGN KEY (id) REFERENCES selections(id) ON DELETE CASCADE
) WITHOUT ROWID;


CREATE TABLE image_qualities (
  quality TEXT PRIMARY KEY
) WITHOUT ROWID;

INSERT INTO image_qualities VALUES
  ('default'), ('color'), ('gray'), ('bitonal');

