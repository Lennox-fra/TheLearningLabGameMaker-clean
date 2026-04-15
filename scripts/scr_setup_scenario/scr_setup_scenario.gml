function scr_setup_scenarios() {

var scenarios = [];

// Scenario 1 - Online Order Scam
var s1 = {};
s1.nodes = [];

s1.nodes[0] = {
    text: "Situation: you receive a message from a seller claiming there was a problem with your recent online order. They ask you to \"confirm your payment details\" through a link.",
    options: [
        "Open the link and update your details",
        "Reply to the message and ask what the issue is",
        "Ignore message and check official site"
    ],
    next: [1, 2, -1],
    money: [0, 0, 200],
    end_text: ["", "", "You caught the red flags early! Win £200"]
};

s1.nodes[1] = {
    text: "You open the link.",
    options: [
        "Enter full card details",
        "Enter only email and password",
        "Close the website quickly"
    ],
    next: [-1, -1, -1],
    money: [-150, -150, 0],
    end_text: [
        "Big loss, card details stolen. Your cash pot has been cleared.",
        "Account compromised. Lose £50.",
        "Near miss but no reward due to the risk."
    ]
};

s1.nodes[2] = {
    text: "There is a response with urgency \"update details now or your order will be sent back without refund!\"",
    options: [
        "Believe them and click the new link",
        "Ask for proof of the order",
        "Stop replying and block the email address"
    ],
    next: [-1, 3, -1],
    money: [-150, 0, 0],
    end_text: [
        "Big loss, card details stolen. Your cash pot has been cleared.",
        "",
        "Near miss but no reward due to the risk."
    ]
};

s1.nodes[3] = {
    text: "A response is given showing proof but there's spelling errors and other discrepancies.",
    options: [
        "Believe them and click the link",
        "Stop replying and block the email address"
    ],
    next: [-1, -1],
    money: [-150, 0],
    end_text: [
        "Big loss, card details stolen. Your cash pot has been cleared.",
        "Near miss but no reward due to the risk."
    ]
};

array_push(scenarios, s1);

// Scenario 2 - Romance Scam
var s2 = {};
s2.nodes = [];

s2.nodes[0] = {
    text: "Situation: You meet someone on a dating app. They're charming, message you every day, and quickly build emotional closeness. After a few weeks, they say they're stuck abroad and need money for an emergency (medical bill / flight / business problem).",
    options: [
        "Send them £200, then another £500.",
        "Ask for proof or suggest a video call",
        "Stop engaging and block"
    ],
    next: [-1, 1, -1],
    money: [-500, 0, 150],
    end_text: [
        "You lose £200, then another £500. The account disappears.",
        "",
        "Well done! Gain £150"
    ]
};

s2.nodes[1] = {
    text: "Leads to: Excuses, broken camera, inconsistent stories.",
    options: [
        "Believe excuses and send money",
        "Notice inconsistencies and stop replying"
    ],
    next: [-1, -1],
    money: [-500, 0],
    end_text: [
        "Cash loss - £500",
        "Near miss but no reward due to the risk."
    ]
};

array_push(scenarios, s2);

// Scenario 3 - Safe Account Transfer
var s3 = {};
s3.nodes = [];

s3.nodes[0] = {
    text: "Scenario 3: You receive a call claiming to be from your bank about \"suspicious activity\" on your account. The caller transfers you to someone claiming to be the police, who says your money is at risk and must be moved to a \"safe account\" immediately.",
    options: [
        "Follow their instructions and move your money to a different one of your own accounts",
        "Hear them out and then call your own bank",
        "Follow their instructions and move your money to the account they said"
    ],
    next: [-1, -1, -1],
    money: [0, 200, -150],
    end_text: [
        "Near miss. You lose nothing but you also gain nothing.",
        "Your bank assures you there is no threat. Win £200",
        "Lose £200"
    ]
};

array_push(scenarios, s3);

// Scenario 6 - Money Mule Job Scam
var s6 = {};
s6.nodes = [];

s6.nodes[0] = {
    text: "You receive a message advertising a flexible remote job. The role is described as a \"Finance Assistant\" or \"Payment Processing Agent.\" You are told you will receive money into your personal bank account and transfer it to company accounts, keeping a percentage as commission. The recruiter says it's completely legal and urgent.",
    options: [
        "Accept the job offer",
        "Ask why payments cannot go directly through the company",
        "Research the company before accepting"
    ],
    next: [1, 4, 7],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s6.nodes[1] = {
    text: "You are congratulated and sent onboarding documents that look professional. You are told your first payment will arrive shortly.",
    options: [
        "Receive money into your account and transfer it as instructed",
        "Ask what the source of the money is"
    ],
    next: [-1, 2],
    money: [-500, 0],
    end_text: [
        "A few days later, your bank contacts you about suspicious activity. The funds you moved were linked to fraud. Your account is frozen and under investigation. You lose access to your money. Financial loss and potential criminal record. Lose £500",
        ""
    ]
};

s6.nodes[2] = {
    text: "The recruiter says it is from \"international clients\" and reassures you it is legal.",
    options: [
        "Accept the explanation and continue",
        "Decide to stop and block them"
    ],
    next: [-1, -1],
    money: [-500, -150],
    end_text: [
        "Your bank flags the activity and Your account is frozen and under investigation. You lose access to your money. Financial loss and potential criminal record. Lose £500.",
        "You avoid further involvement, but the initial transfer is still investigated. Lose £150 for the close call."
    ]
};

s6.nodes[4] = {
    text: "The recruiter says the company has \"temporary banking restrictions\" and needs your help urgently.",
    options: [
        "Feel pressured and agree to help",
        "Refuse and decline the offer"
    ],
    next: [-1, -1],
    money: [-500, 0],
    end_text: [
        "You transfer multiple payments before realising something is wrong. Your account is frozen and under investigation. You lose access to your money. Financial loss and potential criminal record. Lose £500",
        "The recruiter becomes defensive and stops replying. You avoided becoming a money mule. Safe outcome. Lose nothing."
    ]
};

s6.nodes[7] = {
    text: "You search the company name and find no official registration and reports warning about money mule recruitment scams.",
    options: [
        "Ignore the warnings and accept anyway",
        "Decide not to proceed and report the advert"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "You become involved in transferring criminal funds. Account frozen and investigated. Lose £500.",
        "The listing is removed. You avoided financial and legal harm. Win £200!"
    ]
};

array_push(scenarios, s6);

// Scenario 8 - Missed Delivery Fee
var s8 = {};
s8.nodes = [];

s8.nodes[0] = {
    text: "You receive a text message saying your parcel could not be delivered due to an unpaid £1.99 delivery fee. A link is provided to rearrange delivery and pay the small charge.",
    options: [
        "Click the link to rearrange delivery",
        "Ignore the link and track the parcel using the official courier website",
        "Reply to the text asking if it is genuine"
    ],
    next: [1, -1, 3],
    money: [0, 50, 0],
    end_text: ["", "No delivery issue exists. Delete the message and block the sender. You avoided a phishing scam. Safe outcome. Win £50!", ""]
};

s8.nodes[1] = {
    text: "The website looks convincing and uses the courier's branding. It asks for your card details to process the £1.99 fee.",
    options: [
        "Enter your card details and complete the payment",
        "Feel unsure after entering details but before submitting"
    ],
    next: [-1, -1],
    money: [-250, -150],
    end_text: [
        "Within hours, larger transactions begin appearing on your card. Financial loss due to card compromise. Lose £250.",
        "You notice the web address contains extra characters and does not exactly match the official courier domain. You close the page immediately. Your bank later blocks attempted fraudulent transactions. Near miss due to partial exposure. Lose £50."
    ]
};

s8.nodes[3] = {
    text: "You receive another message repeating the urgency and directing you back to the same link.",
    options: [
        "Continue the conversation and follow their instructions",
        "Stop engaging after noticing the repeated urgency. You decide not to click the link again and delete the message."
    ],
    next: [-1, -1],
    money: [-250, -150],
    end_text: [
        "They pressure you to complete payment quickly to avoid the parcel being returned.You enter your card details. Fraudulent transactions appear the next day. Financial loss. Lose £250.",
        "Near miss. Lose £50."
    ]
};

array_push(scenarios, s8);

// Scenario 9 - Account Locked Email
var s9 = {};
s9.nodes = [];

s9.nodes[0] = {
    text: "You receive an email that appears to be from your bank. It says your online banking has been locked due to suspicious activity and that you must verify your details within 12 hours to avoid permanent restrictions. A link is provided to \"secure your account.\"",
    options: [
        "Click the link in the email",
        "Do not click the link and open your banking app instead",
        "Reply to the email asking if it is genuine"
    ],
    next: [1, -1, 3],
    money: [0, 150, 0],
    end_text: ["", "They confirm phishing emails are currently circulating. Safe outcome. Win £150.", ""]
};

s9.nodes[1] = {
    text: "The page looks identical to your bank's website, including logos and security padlock symbols.",
    options: [
        "Enter your login details and one-time passcode",
        "Enter your login details but hesitate before entering the passcode"
    ],
    next: [-1, -1],
    money: [-500, -150],
    end_text: [
        "You receive a message saying your account has been successfully verified. Later that day, your bank contacts you about large transfers leaving your account. The one-time passcode you entered allowed the fraudster full access. Major financial loss. Lose £500.",
        "You start to feel unsure and check the sender's email address more carefully. You realise it does not match your bank's official domain. You close the page immediately. Your bank later confirms it was a phishing attempt. Near miss due to partial data exposure. Lose £150."
    ]
};

s9.nodes[3] = {
    text: "You receive a response repeating the urgency and warning that your account will be frozen if you do not act immediately.",
    options: [
        "Follow the new instructions provided",
        "Decide the urgency feels suspicious and stop engaging"
    ],
    next: [-1, -1],
    money: [-500, 150],
    end_text: [
        "You are asked to confirm personal details and enter a security code sent to your phone. Fraudulent payments are made shortly after. Serious financial loss. Lose £500.",
        "You delete the email and contact your bank directly using the number on your card. They confirm it is fraudulent. Safe outcome. Win £150."
    ]
};

array_push(scenarios, s9);

// Scenario 10 - Friend in Need
var s10 = {};
s10.nodes = [];

s10.nodes[0] = {
    text: "You receive a direct message on instagram from a friend. They say they're locked out of an account and need a verification code that's about to be sent to your phone. They apologise for the urgency and say they'll explain later.",
    options: [
        "Send them the verification code",
        "Ignore the message and contact your friend directly",
        "Reply saying you are not comfortable sharing codes"
    ],
    next: [1, -1, 4],
    money: [0, 150, 0],
    end_text: ["", "You call or text your friend using their normal number. They confirm their account was hacked. You warn others not to respond to the fake messages. You secure your own account with two-factor authentication. Fraud prevented through verification. Win £150!", ""]
};

s10.nodes[1] = {
    text: "A text message arrives on your phone with a security code for your social media account.",
    options: [
        "Forward the code to your \"friend\"",
        "Ask why they need a code linked to your account"
    ],
    next: [-1, -1],
    money: [-250, -250],
    end_text: [
        "They thank you and stop responding. Within minutes, you are logged out of your own account. The fraudster changes your password and begins messaging your contacts. Your account is used to request money from others. Account takeover and reputational harm. Lose £250.",
        "They say it's \"just part of the reset process\" and urge you to hurry. You feel pressured but send it anyway. You lose access to your account shortly after. Account compromised due to social engineering. Lose £250."
    ]
};

s10.nodes[4] = {
    text: "The account becomes more urgent and emotional, saying it's \"really important.\"",
    options: [
        "Give in to the pressure and send the code",
        "Refuse and block the account"
    ],
    next: [-1, -1],
    money: [-250, 150],
    end_text: [
        "Your account is immediately accessed and details changed. You struggle to regain control. Financial and reputational impact. Lose £250.",
        "You report the profile to the platform. You later learn it was part of a widespread account takeover scam. Safe outcome. Win £150."
    ]
};

array_push(scenarios, s10);

// Scenario 11 - Suspicious Login Alert
var s11 = {};
s11.nodes = [];

s11.nodes[0] = {
    text: "You receive an email from what appears to be your streaming service saying there has been a suspicious login attempt from another country. The email warns that your account will be locked unless you confirm your details. A button in the email says \"Secure Your Account.\"",
    options: [
        "Click the \"Secure Your Account\" button",
        "Do not click the email link and open the streaming app instead",
        "Reply to the email asking if the alert is genuine"
    ],
    next: [1, 2, 3],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s11.nodes[1] = {
    text: "The page that opens looks identical to the streaming service login screen.",
    options: [
        "Enter your email and password",
        "Start entering your details but notice the website address"
    ],
    next: [-1, -1],
    money: [-150, -50],
    end_text: [
        "The page loads for a moment and then redirects you back to the normal login screen. Later that evening you receive emails confirming purchases and subscription upgrades you didn't make. Your account credentials were stolen through a phishing site. Lose £150.",
        "The URL looks slightly different from the official site. You close the page and delete the email. Near miss. Lose £50."
    ]
};

s11.nodes[2] = {
    text: "You log in through the official app on your phone.",
    options: [
        "Check your account security settings",
        "Ignore the email and continue watching"
    ],
    next: [-1, -1],
    money: [150, 50],
    end_text: [
        "There are no warnings or unusual logins. The email was a phishing attempt. Safe outcome. Win £150.",
        "Nothing further happens. Safe but passive choice. Win £50."
    ]
};

s11.nodes[3] = {
    text: "You receive another message telling you to act quickly to avoid losing access.",
    options: [
        "Follow the instructions in the reply",
        "Decide the urgency feels suspicious and stop responding"
    ],
    next: [-1, -1],
    money: [-150, 50],
    end_text: [
        "You enter your login details on the provided page. Your account is later accessed by someone else. Account compromised. Lose £150.",
        "You delete the email and block the sender. Scam avoided. Win £50."
    ]
};

array_push(scenarios, s11);

// Scenario 12 - Sold Out Tickets
var s12 = {};
s12.nodes = [];

s12.nodes[0] = {
    text: "You try to buy tickets for a popular concert that has just sold out. While searching online, you find a website claiming to have a limited number of tickets still available. The prices are slightly higher than normal, but the site looks professional and includes seating maps and customer reviews.",
    options: [
        "Buy the tickets through the website",
        "Check the official ticket provider instead",
        "Message the website's customer support"
    ],
    next: [1, 2, 3],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s12.nodes[1] = {
    text: "The website asks you to create an account and enter your card details to secure the tickets.",
    options: [
        "Complete the purchase",
        "Feel unsure before completing payment"
    ],
    next: [-1, -1],
    money: [-250, -50],
    end_text: [
        "You receive an email confirmation saying the tickets will be sent closer to the event date. Weeks later, the website disappears and no tickets arrive. The official venue confirms the site was not an authorised seller. Fake ticket resale scam. Lose £250.",
        "You search the website name online and find several warnings about fake ticket sites. You close the page without entering your details. Near miss. Lose £50."
    ]
};

s12.nodes[2] = {
    text: "You visit the official ticket website listed by the event organiser.",
    options: [
        "Join the waiting list for resale tickets",
        "Decide the event is not worth the risk"
    ],
    next: [-1, -1],
    money: [150, 50],
    end_text: [
        "You are placed in a queue for legitimate ticket returns. You avoided using an unverified reseller. Safe outcome. Win £150.",
        "You close the site and decide not to buy tickets elsewhere. Safe outcome. Win £50."
    ]
};

s12.nodes[3] = {
    text: "A live chat agent responds quickly and assures you the tickets are \"100% guaranteed.\"",
    options: [
        "Trust their reassurance and buy the tickets",
        "Decide their answers sound scripted and suspicious"
    ],
    next: [-1, -1],
    money: [-250, 150],
    end_text: [
        "The payment goes through but the tickets never arrive. Customer support stops responding shortly after. Online purchase fraud. Lose £250.",
        "You leave the website and report the advert. Fraud avoided. Win £150."
    ]
};

array_push(scenarios, s12);

// Scenario 13 - Tradesperson Invoice
var s13 = {};
s13.nodes = [];

s13.nodes[0] = {
    text: "You recently had your bathroom renovated by a local tradesperson. The job cost £3,200 and you agreed to pay the final £1,600 once the work was finished. Two days after completion, you receive an email from what looks like their business address. It says their bank has changed due to a switch in accounting software and provides a new sort code and account number for your final payment.",
    options: [
        "Pay the invoice using the new bank details",
        "Reply to the email asking them to confirm the new details",
        "Phone the tradesperson using the number from your original quote",
        "Feel suspicious because you have never been asked to change payment details before"
    ],
    next: [1, 2, -1, 3],
    money: [0, 0, 200, 0],
    end_text: [
        "",
        "",
        "They confirm their bank details have not changed. They check their sent folder and find no record of the email. You agree to report it and they warn other recent customers. Safe outcome. Win £200.",
        ""
    ]
};

s13.nodes[1] = {
    text: "You transfer £1,600 to the new account. The payment confirmation looks normal. Three days later, the tradesperson sends you a text asking when you plan to settle the balance.",
    options: [
        "Tell them you already paid and send a screenshot of the transfer",
        "Assume it is a banking error and wait for it to resolve"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "They confirm the account number is not theirs. A fraudster had accessed or spoofed their email and sent fake payment details. Your bank begins a trace but warns recovery is unlikely. Financial loss due to payment diversion. Lose £500.",
        "After two weeks, your bank confirms the money was moved out of the receiving account within hours. The funds are unrecoverable. Financial loss due to delayed action. Lose £500."
    ]
};

s13.nodes[2] = {
    text: "You receive a reply within minutes. It includes the tradesperson's full name, your address, and the exact job description. The new sort code and account number are repeated with a note saying \"please use these going forward.\"",
    options: [
        "Feel reassured by the level of detail and make the payment",
        "Decide to phone the tradesperson before transferring anything"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The tradesperson later confirms they never changed their bank details and did not send the email. The fraudster had enough information from the original email chain to make the reply convincing. Financial loss. Lose £500.",
        "You call the number saved in your phone from the original quote. They say their bank details have not changed and they never sent that email. You delete it and pay to the original account. Fraud avoided. Win £200."
    ]
};

s13.nodes[3] = {
    text: "You compare the email address to previous messages. The domain looks almost identical but has one extra letter.",
    options: [
        "Ignore the email and pay to the original account details from your written quote",
        "Decide to pay half to the new account as a test"
    ],
    next: [-1, -1],
    money: [200, -250],
    end_text: [
        "The tradesperson confirms receipt. You avoided a payment diversion scam by trusting your original records. Safe outcome. Win £200.",
        "You transfer £800. The tradesperson contacts you days later saying they have received nothing. The remaining £800 is still owed and the £800 you sent is gone. Partial financial loss. Lose £250."
    ]
};

array_push(scenarios, s13);

// Scenario 14 - The House Deposit
var s14 = {};
s14.nodes = [];

s14.nodes[0] = {
    text: "You are buying your first home. Exchange of contracts is tomorrow and your solicitor has confirmed the completion amount of £28,500. At 4:47pm, you receive an email from what appears to be your solicitor's address. It contains your case reference number, the property address, and says: \"Please note our client account details have been updated. Use the below for your completion funds. Please transfer today to avoid delays.\"",
    options: [
        "Transfer the full amount to the account in the email",
        "Feel pressure to pay quickly because exchange is tomorrow",
        "Phone your solicitor using the number from their headed paper or website",
        "Reply to the email asking them to call you to confirm"
    ],
    next: [1, 2, -1, 3],
    money: [0, 0, 200, 0],
    end_text: [
        "",
        "",
        "They confirm the correct bank details over the phone and say they have not sent any email today. They advise you to transfer using only the details they give you verbally. You complete the payment safely. Safe outcome. Win £200.",
        ""
    ]
};

s14.nodes[1] = {
    text: "You send £28,500 by faster payment. The confirmation screen looks normal. The next morning, your solicitor calls to check when you plan to transfer. You tell them you already have.",
    options: [
        "Read them the account details you sent to",
        "Panic and contact your bank immediately"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "Your solicitor says those are not their bank details. Their IT team finds that their email system was compromised. Your bank initiates an urgent recall but the funds were moved within 20 minutes of arriving. Devastating financial loss. Lose £500.",
        "Your bank attempts to freeze the receiving account. A small portion of the funds is recovered but the majority is gone. You are left without your deposit and the property sale falls through. Severe financial loss. Lose £500."
    ]
};

s14.nodes[2] = {
    text: "The email says \"failure to transfer today may result in the seller withdrawing from the sale.\" You feel anxious about losing the house.",
    options: [
        "Transfer the money to meet the deadline",
        "Call your solicitor's office to check, even though it is late in the day"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "Your solicitor confirms the next day that their account details have not changed. The email was fraudulent. Your deposit has been stolen. Major financial loss due to time pressure. Lose £500.",
        "The receptionist transfers you to your case handler. They confirm their bank details have not changed and the email is fraudulent. They escalate to their IT and compliance teams immediately. Fraud avoided. Win £200."
    ]
};

s14.nodes[3] = {
    text: "You receive a call from someone claiming to be from the solicitor's office. They read back your case reference and property address and confirm the \"new\" bank details.",
    options: [
        "Trust the phone call and transfer the deposit",
        "Hang up and call the solicitor yourself on the number from their website"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The call was made by the same fraudster who sent the email. The number was spoofed to look like the solicitor's office. Your deposit is gone. Financial loss through sophisticated spoofing. Lose £500.",
        "Your actual solicitor has no knowledge of the email or the phone call. They confirm their real bank details. You transfer safely and report the scam. Fraud avoided. Win £200."
    ]
};

array_push(scenarios, s14);

// Scenario 15 - The School Trip Payment
var s15 = {};
s15.nodes = [];

s15.nodes[0] = {
    text: "Your child's school sends a letter home about a residential trip costing £285 per pupil. A few days later, you receive an email with the school logo, your child's name, and the correct trip dates. It says: \"Due to an administrative change, payments should now be made to the following account.\" A new sort code and account number are listed along with a reference format using your child's surname and class.",
    options: [
        "Pay the £285 to the new account details",
        "Forward the email to another parent to check if they received the same one",
        "Phone the school directly using the number on their website",
        "Decide to pay through the school's online payment system instead"
    ],
    next: [1, 2, -1, 3],
    money: [0, 0, 200, 0],
    end_text: [
        "",
        "",
        "The office manager confirms their payment details have not changed. They were unaware of the fake email and immediately contact their IT provider to investigate. They thank you for flagging it. Safe outcome. Win £200.",
        ""
    ]
};

s15.nodes[1] = {
    text: "You transfer the money using the reference format provided. A week later, the school sends a reminder text saying your child's trip payment has not been received.",
    options: [
        "Show the school your bank transfer confirmation",
        "Assume the school made a mistake and wait for them to sort it out"
    ],
    next: [-1, -1],
    money: [-250, -250],
    end_text: [
        "The school confirms the account number does not belong to them. The email was not sent by the school. A fraudster used publicly available information from the school website and social media to create a convincing fake. Financial loss. Lose £250.",
        "The school has no record of your payment. After contacting your bank, you learn the receiving account was closed within days. The money cannot be recovered. Financial loss due to delayed action. Lose £250."
    ]
};

s15.nodes[2] = {
    text: "They say they have not received a similar message. They also notice the email address is slightly different from the school's usual address, with an extra hyphen in the domain name.",
    options: [
        "Contact the school office to verify before paying",
        "Decide the other parent probably just missed the email and pay anyway"
    ],
    next: [-1, -1],
    money: [200, -250],
    end_text: [
        "The school confirms the email is fraudulent and their payment details have not changed. They send an urgent alert to all parents warning about the scam. Fraud prevented. Win £200.",
        "The payment goes to a fraudster's account. The school later confirms their bank details were never changed and the email was not from them. Financial loss despite warning signs. Lose £250."
    ]
};

s15.nodes[3] = {
    text: "You log into the school's official parent portal and find the trip listed with the original bank details. You pay through the portal and ignore the email.",
    options: [
        "Report the suspicious email to the school",
        "Pay through the portal but do not report the email"
    ],
    next: [-1, -1],
    money: [200, 50],
    end_text: [
        "The school thanks you and sends a warning to all parents. Your payment is confirmed through the portal. Fraud avoided and reported. Win £200.",
        "You are safe, but other parents who received the same email may not be. One parent later loses £285 to the scam. Safe but passive outcome. Win £50."
    ]
};

array_push(scenarios, s15);

// Scenario 16 - The Urgent Supplier Payment
var s16 = {};
s16.nodes = [];

s16.nodes[0] = {
    text: "You work as an accounts assistant at a small company. At 3:15pm on a Friday, you receive an email from what appears to be your managing director's email address. It reads: \"I need you to process an urgent payment of £4,800 to a supplier. Their bank details have changed - new details below. This needs to go out today to avoid a penalty clause. I'm in meetings so just get it done and I'll sign off Monday.\"",
    options: [
        "Process the £4,800 payment immediately",
        "Reply to the email asking for more details before processing",
        "Call your managing director on their mobile to verify",
        "Feel uncomfortable but worry about the Friday deadline and the penalty clause"
    ],
    next: [1, 2, -1, 3],
    money: [0, 0, 200, 0],
    end_text: [
        "",
        "",
        "They pick up immediately and confirm they did not send the email. They have no knowledge of any supplier bank detail change. Your company's IT team finds the email was sent from an external address that closely mimicked the real one. Safe outcome. Win £200.",
        ""
    ]
};

s16.nodes[1] = {
    text: "You set up the new payee and transfer the funds. The payment clears before end of business. On Monday morning, your managing director asks what payment you are referring to. They did not send the email and have no knowledge of the supplier change.",
    options: [
        "Explain what happened and show them the email",
        "Contact the bank immediately to try and recall the payment"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "Your IT team investigates and finds the sender address was spoofed. The domain had one character swapped. The funds were moved out of the receiving account over the weekend and cannot be recovered. Financial loss to the business. Lose £500.",
        "Your bank attempts a recall but the receiving account has already been emptied. They advise reporting to Action Fraud. Financial loss despite quick action. Lose £500."
    ]
};

s16.nodes[2] = {
    text: "You receive a quick response: \"It's for the Q2 materials order. The supplier flagged the change last week. Just use the new details and I'll forward the paperwork Monday.\" The tone and sign-off match your MD's usual style.",
    options: [
        "Feel reassured by the detail and process the payment",
        "Decide to walk over to your MD's office or call them on their mobile"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The email was controlled by a fraudster who had studied your company's email patterns. The payment goes to a criminal account. Financial loss. Lose £500.",
        "Your MD says they are not in meetings and never sent the email. They thank you for checking and ask IT to investigate immediately. Fraud avoided. Win £200."
    ]
};

s16.nodes[3] = {
    text: "The email says there will be a £1,200 penalty if the payment is not processed today. You do not want to be responsible for costing the company money.",
    options: [
        "Process the payment to avoid the penalty",
        "Decide that any payment this urgent should still go through the normal approval process"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "There was no penalty clause. The urgency and the Friday timing were deliberate tactics to stop you from checking. The £4,800 is gone. Financial loss due to manufactured pressure. Lose £500.",
        "You flag the request with your line manager and follow your company's two-person sign-off procedure. Your MD later confirms it was fraudulent. Fraud avoided through good process. Win £200."
    ]
};

array_push(scenarios, s16);

// Scenario 17 - The Energy Supplier Update
var s17 = {};
s17.nodes = [];

s17.nodes[0] = {
    text: "You receive an email that looks like it is from your energy supplier. It uses their logo, colour scheme, and includes your customer account number. The email says: \"We are writing to let you know that our payment details have been updated. Please use the new account details below for your next bill payment of £147.60. Failure to update may result in service disruption.\"",
    options: [
        "Update your standing order to the new account and pay the £147.60",
        "Log into your energy account through their official website or app to check",
        "Call the phone number included in the email to verify",
        "Feel suspicious because the email threatens \"service disruption\""
    ],
    next: [1, 2, 3, 4],
    money: [0, 0, 0, 0],
    end_text: ["", "", "", ""]
};

s17.nodes[1] = {
    text: "The payment goes through. The following month, your energy supplier sends a missed payment notice with a £15 late fee. You call them and they confirm their bank details have never changed. The email was not from them.",
    options: [
        "Ask them to waive the late fee and explain what happened",
        "Assume the payment will eventually reach them and do nothing"
    ],
    next: [-1, -1],
    money: [-250, -250],
    end_text: [
        "They waive the fee but confirm the £147.60 you sent to the fraudulent account is gone. They advise reporting to Action Fraud. Financial loss. Lose £250.",
        "Your account falls further behind. Your energy supplier adds additional charges. The original payment is unrecoverable. Financial loss plus additional charges. Lose £250."
    ]
};

s17.nodes[2] = {
    text: "Your online account shows no notifications about changed payment details. Your current bill and payment instructions show the same bank details as always.",
    options: [
        "Delete the email and continue paying through your usual method",
        "Report the suspicious email to your energy supplier"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "Your payment goes through to the correct account. You avoided a payment diversion scam by checking the source. Safe outcome. Win £200.",
        "They confirm it is fraudulent and add a note to your account. They issue a warning to other customers about similar emails circulating. Fraud reported and prevented. Win £200."
    ]
};

s17.nodes[3] = {
    text: "A professional-sounding person answers and confirms the \"updated\" bank details. They read back your account number and address to sound legitimate. They encourage you to make the payment today to avoid any disruption.",
    options: [
        "Trust the call and pay to the new account",
        "Hang up and find the number on your actual energy bill or their official website"
    ],
    next: [-1, -1],
    money: [-250, 200],
    end_text: [
        "The phone number in the email was also set up by the fraudster. Everything from the email to the phone call was part of the scam. Your payment goes to a criminal account. Financial loss through layered deception. Lose £250.",
        "You call the real customer service line. They confirm their payment details have not changed and the email is a known scam. They flag your account for extra security monitoring. Fraud avoided. Win £200."
    ]
};

s17.nodes[4] = {
    text: "You check previous emails from your energy supplier and notice the sender address is slightly different. The real address ends in .co.uk but this one ends in .com.",
    options: [
        "Delete the email and report it by forwarding to report@phishing.gov.uk",
        "Feel unsure and decide to pay a smaller test amount of £20 first"
    ],
    next: [-1, -1],
    money: [200, -50],
    end_text: [
        "Your report helps the National Cyber Security Centre track the scam. Your account remains secure. Fraud avoided and reported. Win £200.",
        "The £20 goes through but to a criminal account. Your energy supplier still has not received any payment. You have lost £20 and still owe the full bill. Partial loss from \"test payment.\" Lose £50."
    ]
};

array_push(scenarios, s17);

return scenarios;
}
