# FALCONIDE RUBY SDK

The library allows you send transaction emails in falconide using ruby.

##Packages to be installed.

gem install falconide-0.0.1.gem

The package is present in the library

## Usage
```
require 'falconide'
class Test

 begin
    email=Falconide::Email.new
 	email.setApiKey("apikey")
 	email.setemaildetails(Falconide::EmailDetails.new)
 	email.setEmailContent("This is a Test Email from Falcon ruby SDK");
	email.setFrom("anything@m3m.in");
	email.setFromName("Anything");
	email.setReplyToId("anything@gmail.com");
	email.setSubject("Falcon Ruby SDK - Sample Email 0.2");
	email.setSettings(Falconide::Settings.new)
	metadata=Falconide::MetaData.new
	metadata.addCC("abc@gmail.com", "ccAPI");
	metadata.addSubstitue("NAME", "Bhas");
	table1=Falconide::Table.new
    	row1=Falconide::Row.new
	row1.addColumnData("col1", "val1");
	row1.addColumnData("col2", "val2");
	table1.addrow(row1);
	row2=Falconide::Row.new
	row2.addColumnData("col1", "val3");
	row2.addColumnData("col2", "val4");
	table1.addrow(row2);
	metadata.createTable("table1",table1);
	metadata.setxapiheader("API123");
	email.addrecipient("abc@gmail.com", metadata);

	data =Falconide::MetaData.new
	data.addCC("abc@msn.com", "ccAPI2");
	data.addCC("def@yahoo.com", "ccAPI21");

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
	email.addAttachment("C:/personal/Falconide_APIGuide_1.9.pdf")
	# email.addAttachmentId("1")
    	# email.addAttachmentId("2")
    	#email.processEmail();
    	Falconide::api_key="apikey";
    	Falconide::send(email)
    	response=Falconide::response
    	puts response.message
    	#puts Falconide::Email.my_hash(email)
end
end
```

