public with sharing class SalesIOController {

    public SalesIOController() {}

    public String emailAddress { get; set; }
    public String emailBody { get; set; }
    public String emailSubject { get; set; }
     
    public String smsNumber { get; set; } 
    public String smsBody { get; set; }

    public String callNumber { get; set; } 

    private static final String account = 'twilioaccountid';
    private static final String token = 'twilioaccounttoken';
    private static final String myTwilioNumber = 'twilionumber';

   public String userName {
    get
    {
        return UserInfo.getName();
    } 
    set;}

    public String userId {
    get
    {
        return UserInfo.getUserId();
    } 
    set;}

    public PageReference makeCall()
    {
        TwilioRestClient client = new TwilioRestClient(account, token);

        Map<String,String> params = new Map<String,String> {
        'To'   => callNumber,
        'From' => myTwilioNumber,
        'Url'  => 'http://twimlets.com/holdmusic?Bucket=com.twilio.music.ambient'
        };
        TwilioCall call = client.getAccount().getCalls().create(params);
        return null;
    }

    public PageReference sendSMS()
    {
        
        TwilioRestClient client = new TwilioRestClient(account, token);

        Map<String,String> params = new Map<String,String> {
        'To'   => smsNumber,
        'From' => myTwilioNumber,
        'Body' => smsBody};
        TwilioSMS sms = client.getAccount().getSMSMessages().create(params);
       
       return null;
    }

    public PageReference sendMail()
    {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {emailAddress};
        mail.setToAddresses(toAddresses);
        mail.setReplyTo(emailAddress);
        mail.setSenderDisplayName('SalesIO');
        mail.setSubject(emailSubject);
        mail.setPlainTextBody(emailBody);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        return null;
    }

    public List<Data> getData(){
        List<Data> data = new List<Data>();

        data.add(new Data('Jan', 30, 90, 55));
        data.add(new Data('Feb', 44, 15, 65));
        data.add(new Data('Mar', 25, 32, 75));
        data.add(new Data('Apr', 74, 28, 85));
        data.add(new Data('May', 65, 51, 95));
        data.add(new Data('Jun', 33, 45, 99));
        data.add(new Data('Jul', 92, 82, 30));
        data.add(new Data('Aug', 87, 73, 45));
        data.add(new Data('Sep', 34, 65, 55));
        data.add(new Data('Oct', 78, 66, 56));
        data.add(new Data('Nov', 80, 67, 53));
        data.add(new Data('Dec', 17, 70, 70));
        
        return data;
    }

    public class Data {
        public String name { get; set; }
        public Integer data1 { get; set; }
        public Integer data2 { get; set; }
        public Integer data3 { get; set; }
        public Data(String name, Integer data1, Integer data2, Integer data3) {
            this.name = name;
            this.data1 = data1;
            this.data2 = data2;
            this.data3 = data3;
        }
    }
    
    public Opportunity camp {get;set;}
    
    public SalesIOController(ApexPages.StandardController std){
        camp = (Opportunity)std.getRecord();
        
    }
    
    public List<PieWedgeData> getPieData() {
        List<PieWedgeData> data = new List<PieWedgeData>();
        List<AggregateResult> opps = [SELECT SUM(Amount) monthlyRevenue, COUNT(Name) numOppsClosedWon,
                  CALENDAR_MONTH(CloseDate) theMonth
             FROM Opportunity
             GROUP BY CALENDAR_MONTH(CloseDate)];
        
        for(AggregateResult ar : opps){
            String month = String.valueOf(ar.get('theMonth')); //this comes out as a number, not a word value
            Integer revenue = Integer.valueOf(ar.get('monthlyRevenue'));
            data.add(new PieWedgeData(month, revenue));
        }
        return data;
    }
    
    public class PieWedgeData {
        public String name { get; set; }
        public Integer data { get; set; }

        public PieWedgeData(String name, Integer data) {
            this.name = name;
            this.data = data;
        }
    }
}
