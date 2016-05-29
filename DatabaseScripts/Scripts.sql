﻿IF (OBJECT_ID('Post') IS NOT NULL)
BEGIN
  DROP TABLE Post;
END;

CREATE TABLE Post (
  PostId INT IDENTITY PRIMARY KEY,
  Text NVARCHAR(MAX) NULL,
  CreationDate DATETIME NOT NULL
);

INSERT INTO Post (Text, CreationDate)
  VALUES ('Test1', GETDATE());
INSERT INTO Post (Text, CreationDate)
  VALUES (NULL, GETDATE());