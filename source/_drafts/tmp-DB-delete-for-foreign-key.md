---
title: tmp_DB_delete_for_foreign_key
abbrlink: 2430a043
tags:
---
database on delete fot foreign key
===

There are five options for`ON DELETE`, and`ON UPDATE`that can apply to the`FOREIGN KEY`. These are called`<referential actions>`, directly from the SQL:2011 spec

> *   `ON DELETE CASCADE`: if a row of the referenced table is deleted, then all matching rows in the referencing table are deleted.
> *   `ON DELETE SET NULL`: if a row of the referenced table is deleted, then all referencing columns in all matching rows of the referencing table to be set to null.
> *   `ON DELETE SET DEFAULT`: if a row of the referenced table is deleted, then all referencing columns in all matching rows of the referencing table to be set to the column’s default value.
> *   `ON DELETE RESTRICT`: it is prohibited to delete a row of the referenced table if that row has any matching rows in the referencing table.
> *   `ON DELETE NO ACTION`**(the default)**: there is no referential delete action; the referential constraint only specifies a constraint check.