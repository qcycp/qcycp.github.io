---
title: flask_login
abbrlink: 69b994cd
date: 2021-08-26 09:34:46
categories:
tags:
---
```python
#declaration
from flask_login import LoginManager
login_manager = LoginManager()

#init
app = Flask(__name__)
login_manager.init_app(app)

#usage
@login_manager.user_loader
def load_user(id):
    #logger.info("load_user: id = " + id)
    try:
        return User.User.query.get(int(id))
    except:
        logger.error(traceback.format_exc())
        return None

@auth_bp.route('/auth/login', methods=['POST'])
def login():
    params = request.form or request.get_json()
    try:
        username = params['username']
        password = params['password']
        remember = True
    except:
        logger.error(traceback.format_exc())
        return error_result(ErrorCode.ERROR_INVALID_PARAM)

    user = User.query.filter_by(username=username).first()
    if not user:
        return error_result(ErrorCode.ERROR_USER_NOT_EXIST)

    if user.check_password(password):
        login_user(user, remember=remember)
        return success_result()
    else:
        return error_result(ErrorCode.ERROR_PASSWORD_ERROR)

@auth_bp.route('/auth/logout')
def logout():
    logout_user()
    return success_result()
```