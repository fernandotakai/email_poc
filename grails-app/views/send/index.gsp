<html>
  <head>
    <title>Send Email</title>
  </head>

  <style type="text/css">    label,input {
	display: block;
	width: 150px;
	float: left;
	margin-bottom: 10px;
    }

    label {
	text-align: right;
	width: 75px;
	padding-right: 20px;
    }

    br {
	clear: left;
    }
    
.submitbutton{
        margin-left: 120px;
	margin-top: 5px;
	width: 90px;
    }
  </style>

  <body>
    <p><span style="color: blue;">${flash.message}</span></p>
    
    <g:form action="send" method="POST">
      <label for="subject">Subject:</label>
      <input type="text" id="subject" name="subject" /><br />
      
      <label for="to">To:</label>
      <input type="text" id="to" name="to" /><br />

      <label for="message">Message:</label>
      <textarea id="message" name="message"></textarea><br />

      <input type="submit" class="submitbutton" value="Send" />
    </g:form>
  </body>
</html>
