```
class MySqlAlchemy(SQLAlchemy):
    def apply_driver_hacks(self, app, info, options):
        options.update({"isolation_level": "READ COMMITTED"})
        super(MySqlAlchemy, self).apply_driver_hacks(app, info, options)
```