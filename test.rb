require 'falconide'
class Test

 begin
    	email=Falconide::Email.new
 	email.setApiKey("<Apikey>") #Unique Api Key
 	email.setemaildetails(Falconide::EmailDetails.new)
 	email.setEmailContent("<Emailcontent>"); #Set Email Content
	email.setFrom("<FromAddress>"); #Set From Address
	email.setFromName("<FromnName>"); #Set From Address
	email.setReplyToId("<EmailID>"); #Setid to be sent 
	email.setSubject("Falcon Java SDK - Sample Email 0.2"); #Set Subject of the mail
	email.setSettings(Falconide::Settings.new)
	
	metadata=Falconide::MetaData.new
	metadata.addCC("sachin.vernekar@netcore.co.in", "ccAPI"); #Set cc if required
	metadata.addSubstitue("NAME", "Bhas");    #replace [NAME] in content with Bhas
	#Code For Tabular Data
	table1=Falconide::Table.new
    	row1=Falconide::Row.new
	row1.addColumnData("col1", "var1");
	row1.addColumnData("col2", "var2");
	row1.addColumnData("col3", "var3");
	row1.addColumnData("col4", "var4");
	table1.addrow(row1);
	row2=Falconide::Row.new
	row2.addColumnData("col1", "val3");
	row2.addColumnData("col2", "val4");
	table1.addrow(row2);
	metadata.createTable("table1",table1);
	#Ends Tabular Data
	metadata.setxapiheader("API123");  # Set X-APIHEADER 
	email.addrecipient("vernekar.sachin21@gmail.com", metadata); # Set emailid to be sent

	data =Falconide::MetaData.new
	data.addCC("bhaswanth.g@synube.com", "ccAPI2");
	data.addSubstitue("NAME", "Boss");
	table2=Falconide::Table.new
    	row3=Falconide::Row.new
	row3.addColumnData("col11", "val11");
	row3.addColumnData("col21", "val21");
	table2.addrow(row3);
	row4=Falconide::Row.new
	row4.addColumnData("col11", "val31");
	row4.addColumnData("col21", "val41");
	table2.addrow(row4);
	data.createTable("table2",table2)
	data.setxapiheader("API1");
	email.addrecipient("abcdefgh.123@gmail.com", data);
	
	email.enableClickTrack();
	email.enableOpenTrack();
	email.addFooter();
	email.addAttachment("test.pdf")  #to add attachment
	#email.addAttachmentId("1")      
    	#email.addAttachmentId("2")
    	#email.processEmail();
    	Falconide::api_key="<Apikey>" 
    	Falconide::send(email)
    	response=Falconide::response
    	puts response.message
    	#puts Falconide::Email.my_hash(email)
end
end
