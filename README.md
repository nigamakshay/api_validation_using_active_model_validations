# README

Includes usage of -
  * ActiveModel validation on non-Active Record.
  * rescue_from to handle the raised exception

Steps:
  * Create project
    command - rails new api_validation_using_active_model_validations --api

  * Create controller
    command - rails g controller Data  

  * Add route in routes.rb  
    post 'data/save', to: 'data#save', as: 'save'

  * Create class ValidatorHelper.rb in app/helpers
    define the validation method - validate_data, creates RequestData object by passing in params and check if object is valid
    define rescue handler to handle the raised exception


  * Create non-active record model RequestData
    define validates for params, call permit to check if params are correct
    exception raised on validation failure is handled by ValidatorHelper's rescue_from



  
Post - http://localhost:3000/data/save/


Result -
{
    "error": {
        "unknown_parameters": [
            "first_name",
            "last_name",
            "age"
        ]
    }
}
