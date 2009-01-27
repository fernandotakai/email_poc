class SendController {

    def mailService

    def index = { 
      println "Index"
    }

    def send = {
    	try {
	  if(!params.to && !params.message){
	    flash.message = "Please, enter all parameters"
	    redirect action:index
	  }

	  def email_to       = params.to
	  def email_message  = params.message
	  def email_subject  = params.subject

	  mailService.sendMail {     
	    to email_to
	    subject email_subject     
	    body email_message 
	  }

	  flash.message = "Message sent!"

  	  redirect action:index
	} catch (Exception e){
	  e.printStackTrace()
	  flash.message = "Ocurred an error!"
	  redirect action:index
	}
    }
}
