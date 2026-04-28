function scr_setup_scenarios() {

var scenarios = [];

// =====================================================
// AGE GROUP: 13-17
// =====================================================

// Scenario 6 - Money Mule Job Scam
var s1 = {};
s1.age_group = "13-17";
s1.red_herring = false;
s1.nodes = [];

s1.nodes[0] = {
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

s1.nodes[1] = {
    text: "You are congratulated and sent onboarding documents that look professional. You are told your first payment will arrive shortly.",
    options: [
        "Receive money into your account and transfer it as instructed",
        "Ask what the source of the money is"
    ],
    next: [-1, 2],
    money: [-500, 0],
    end_text: [
        "A few days later, your bank contacts you about suspicious activity. The funds you moved were linked to fraud. Your account is frozen and under investigation. You lose access to your money. Financial loss and potential criminal record. Lose £500\n\nNOTE: Cifas estimates there were 37,000 bank accounts showing money mule behaviour in 2023, and around 65% of money mules are under 30. Money muling carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job asks you to receive and transfer money through your personal account, it's money laundering. Report it to Action Fraud.",
        ""
    ]
};

s1.nodes[2] = {
    text: "The recruiter says it is from \"international clients\" and reassures you it is legal.",
    options: [
        "Accept the explanation and continue",
        "Decide to stop and block them"
    ],
    next: [-1, -1],
    money: [-500, -150],
    end_text: [
        "Your bank flags the activity and your account is frozen and under investigation. You lose access to your money. Financial loss and potential criminal record. Lose £500.\n\nNOTE: Cifas estimates there were 37,000 bank accounts showing money mule behaviour in 2023, and around 65% of money mules are under 30. Money muling carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job asks you to receive and transfer money through your personal account, it's money laundering. Report it to Action Fraud.",
        "You avoid further involvement, but the initial transfer is still investigated. Lose £150 for the close call.\n\nNOTE: Cifas estimates there were 37,000 bank accounts showing money mule behaviour in 2023, and around 65% of money mules are under 30. Money muling carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job asks you to receive and transfer money through your personal account, it's money laundering. Report it to Action Fraud."
    ]
};

s1.nodes[4] = {
    text: "The recruiter says the company has \"temporary banking restrictions\" and needs your help urgently.",
    options: [
        "Feel pressured and agree to help",
        "Refuse and decline the offer"
    ],
    next: [-1, -1],
    money: [-500, 0],
    end_text: [
        "You transfer multiple payments before realising something is wrong. Your account is frozen and under investigation. You lose access to your money. Financial loss and potential criminal record. Lose £500\n\nNOTE: Cifas estimates there were 37,000 bank accounts showing money mule behaviour in 2023, and around 65% of money mules are under 30. Money muling carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job asks you to receive and transfer money through your personal account, it's money laundering. Report it to Action Fraud.",
        "The recruiter becomes defensive and stops replying. You avoided becoming a money mule. Safe outcome. Lose nothing."
    ]
};

s1.nodes[7] = {
    text: "You search the company name and find no official registration and reports warning about money mule recruitment scams.",
    options: [
        "Ignore the warnings and accept anyway",
        "Decide not to proceed and report the advert"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "You become involved in transferring criminal funds. Account frozen and investigated. Lose £500.\n\nNOTE: Cifas estimates there were 37,000 bank accounts showing money mule behaviour in 2023, and around 65% of money mules are under 30. Money muling carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job asks you to receive and transfer money through your personal account, it's money laundering. Report it to Action Fraud.",
        "The listing is removed. You avoided financial and legal harm. Win £200!"
    ]
};

array_push(scenarios, s1);

// Scenario 8 - Missed Delivery Fee
var s2 = {};
s2.age_group = "13-17";
s2.red_herring = false;
s2.nodes = [];

s2.nodes[0] = {
    text: "You receive a text message saying your parcel could not be delivered due to an unpaid £1.99 delivery fee. A link is provided to rearrange delivery and pay the small charge.",
    options: [
        "Click the link to rearrange delivery",
        "Ignore the link and track the parcel using the official courier website",
        "Reply to the text asking if it is genuine"
    ],
    next: [1, -1, 3],
    money: [0, 150, 0],
    end_text: ["", "No delivery issue exists. Delete the message and block the sender. You avoided a phishing scam. Safe outcome. Win £150!", ""]
};

s2.nodes[1] = {
    text: "The website looks convincing and uses the courier's branding. It asks for your card details to process the £1.99 fee.",
    options: [
        "Enter your card details and complete the payment",
        "Feel unsure after entering details but before submitting"
    ],
    next: [-1, -1],
    money: [-250, -150],
    end_text: [
        "Within hours, larger transactions begin appearing on your card. Financial loss due to card compromise. Lose £250.\n\nNOTE: Fake parcel delivery texts were the fastest-growing scam of 2024, with 40% of British adults affected in the past 12 months. Couriers like Royal Mail will never text you a payment link for a missed delivery.\n\nWhat to do: Forward suspicious texts to 7726 and track parcels only through the official courier website or app.",
        "You notice the web address contains extra characters and does not exactly match the official courier domain. You close the page immediately. Your bank later blocks attempted fraudulent transactions. Near miss due to partial exposure. Lose £150.\n\nNOTE: Fake parcel delivery texts were the fastest-growing scam of 2024, with 40% of British adults affected in the past 12 months. Couriers like Royal Mail will never text you a payment link for a missed delivery.\n\nWhat to do: Forward suspicious texts to 7726 and track parcels only through the official courier website or app."
    ]
};

s2.nodes[3] = {
    text: "You receive another message repeating the urgency and directing you back to the same link.",
    options: [
        "Continue the conversation and follow their instructions",
        "Stop engaging after noticing the repeated urgency. You decide not to click the link again and delete the message."
    ],
    next: [-1, -1],
    money: [-250, -150],
    end_text: [
        "They pressure you to complete payment quickly to avoid the parcel being returned. You enter your card details. Fraudulent transactions appear the next day. Financial loss. Lose £250.\n\nNOTE: Fake parcel delivery texts were the fastest-growing scam of 2024, with 40% of British adults affected in the past 12 months. Couriers like Royal Mail will never text you a payment link for a missed delivery.\n\nWhat to do: Forward suspicious texts to 7726 and track parcels only through the official courier website or app.",
        "Near miss. Lose £150."
    ]
};

array_push(scenarios, s2);

// Scenario 10 - Friend in Need
var s3 = {};
s3.age_group = "13-17";
s3.red_herring = false;
s3.nodes = [];

s3.nodes[0] = {
    text: "You receive a direct message on instagram from a friend. They say they're locked out of an account and need a verification code that's about to be sent to your phone. They apologise for the urgency and say they'll explain later.",
    options: [
        "Send them the verification code",
        "Ignore the message and contact your friend directly",
        "Reply saying you are not comfortable sharing codes"
    ],
    next: [1, 3, 5],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s3.nodes[1] = {
    text: "A text message arrives on your phone with a security code for your social media account.",
    options: [
        "Forward the code to your \"friend\"",
        "Ask why they need a code linked to your account"
    ],
    next: [-1, -1],
    money: [-250, -250],
    end_text: [
        "They thank you and stop responding. Within minutes, you are logged out of your own account. The fraudster changes your password and begins messaging your contacts. Your account is used to request money from others. Account takeover and reputational harm. Lose £250.\n\nNOTE: Social media account takeovers have increased significantly year on year. Once a fraudster controls your account, they can scam every person on your friends list.\n\nWhat to do: Never share verification codes with anyone. If a friend asks for a code, call them directly to verify.",
        "They say it's \"just part of the reset process\" and urge you to hurry. You feel pressured but send it anyway. You lose access to your account shortly after. Account compromised due to social engineering. Lose £250.\n\nNOTE: Social media account takeovers have increased significantly year on year. Once a fraudster controls your account, they can scam every person on your friends list.\n\nWhat to do: Never share verification codes with anyone. If a friend asks for a code, call them directly to verify."
    ]
};

s3.nodes[3] = {
    text: "You call or text your friend using their normal number. They confirm their account was hacked.",
    options: [
        "Warn others not to respond to the fake messages and secure your account with two-factor authentication",
        "Do nothing further"
    ],
    next: [-1, -1],
    money: [150, 150],
    end_text: [
        "Fraud prevented through verification. Win £150!",
        "You are safe, but others may still fall victim. Safe but passive response. Win £150."
    ]
};

s3.nodes[5] = {
    text: "The account becomes more urgent and emotional, saying it's \"really important.\"",
    options: [
        "Give in to the pressure and send the code",
        "Refuse and block the account"
    ],
    next: [-1, -1],
    money: [-250, 150],
    end_text: [
        "Your account is immediately accessed and details changed. You struggle to regain control. Financial and reputational impact. Lose £250.\n\nNOTE: Social media account takeovers have increased significantly year on year. Once a fraudster controls your account, they can scam every person on your friends list.\n\nWhat to do: Never share verification codes with anyone. If a friend asks for a code, call them directly to verify.",
        "You report the profile to the platform. You later learn it was part of a widespread account takeover scam. Safe outcome. Win £150."
    ]
};

array_push(scenarios, s3);

// Scenario 11 - Suspicious Login Alert
var s4 = {};
s4.age_group = "13-17";
s4.red_herring = false;
s4.nodes = [];

s4.nodes[0] = {
    text: "You receive an email from what appears to be your streaming service saying there has been a suspicious login attempt from another country. The email warns that your account will be locked unless you confirm your details. A button in the email says \"Secure Your Account.\"",
    options: [
        "Click the \"Secure Your Account\" button",
        "Do not click the email link and open the streaming app instead",
        "Reply to the email asking if the alert is genuine"
    ],
    next: [1, 3, 5],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s4.nodes[1] = {
    text: "The page that opens looks identical to the streaming service login screen.",
    options: [
        "Enter your email and password",
        "Start entering your details but notice the website address"
    ],
    next: [-1, -1],
    money: [-150, -150],
    end_text: [
        "The page loads for a moment and then redirects you back to the normal login screen. Later that evening you receive emails confirming purchases and subscription upgrades you didn't make. Your account credentials were stolen through a phishing site. Lose £150.\n\nNOTE: Phishing sites can look identical to the real thing, including logos, layouts, and even padlock icons. The URL is often the only giveaway.\n\nWhat to do: Always check the web address carefully. Log in through the official app or by typing the URL yourself.",
        "The URL looks slightly different from the official site. You close the page and delete the email. Near miss. Lose £150.\n\nNOTE: Phishing sites can look identical to the real thing, including logos, layouts, and even padlock icons. The URL is often the only giveaway.\n\nWhat to do: Always check the web address carefully. Log in through the official app or by typing the URL yourself."
    ]
};

s4.nodes[3] = {
    text: "You log in through the official app on your phone.",
    options: [
        "Check your account security settings",
        "Ignore the email and continue watching"
    ],
    next: [-1, -1],
    money: [150, 150],
    end_text: [
        "There are no warnings or unusual logins. The email was a phishing attempt. Safe outcome. Win £150.",
        "Nothing further happens. Safe but passive choice. Win £150."
    ]
};

s4.nodes[5] = {
    text: "You receive another message telling you to act quickly to avoid losing access.",
    options: [
        "Follow the instructions in the reply",
        "Decide the urgency feels suspicious and stop responding"
    ],
    next: [-1, -1],
    money: [-150, 150],
    end_text: [
        "You enter your login details on the provided page. Your account is later accessed by someone else. Account compromised. Lose £150.\n\nNOTE: Phishing sites can look identical to the real thing, including logos, layouts, and even padlock icons. The URL is often the only giveaway.\n\nWhat to do: Always check the web address carefully. Log in through the official app or by typing the URL yourself.",
        "You delete the email and block the sender. Scam avoided. Win £150."
    ]
};

array_push(scenarios, s4);

// =====================================================
// AGE GROUP: 18-25
// =====================================================

// Scenario 9 - Account Locked Email
var s5 = {};
s5.age_group = "18-25";
s5.red_herring = false;
s5.nodes = [];

s5.nodes[0] = {
    text: "You receive an email that appears to be from your bank. It says your online banking has been locked due to suspicious activity and that you must verify your details within 12 hours to avoid permanent restrictions. A link is provided to \"secure your account.\"",
    options: [
        "Click the link in the email",
        "Do not click the link and open your banking app instead",
        "Reply to the email asking if it is genuine"
    ],
    next: [1, 3, 5],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s5.nodes[1] = {
    text: "The page looks identical to your bank's website, including logos and security padlock symbols.",
    options: [
        "Enter your login details and one-time passcode",
        "Enter your login details but hesitate before entering the passcode"
    ],
    next: [-1, -1],
    money: [-500, -150],
    end_text: [
        "You receive a message saying your account has been successfully verified. Later that day, your bank contacts you about large transfers leaving your account. The one-time passcode you entered allowed the fraudster full access. Major financial loss. Lose £500.\n\nNOTE: Banks will never email you a link to enter your login details or one-time passcodes. If you receive one, it's a phishing attempt.\n\nWhat to do: Go directly to your bank's app or website by typing the address yourself, never click links in emails.",
        "You start to feel unsure and check the sender's email address more carefully. You realise it does not match your bank's official domain. You close the page immediately. Your bank later confirms it was a phishing attempt. Near miss due to partial data exposure. Lose £150."
    ]
};

s5.nodes[3] = {
    text: "You log in through your official banking app to check for alerts. Your account shows no security warnings.",
    options: [
        "Report the suspicious email to your bank",
        "Ignore the email but do not report it"
    ],
    next: [-1, -1],
    money: [150, 150],
    end_text: [
        "They confirm phishing emails are currently circulating. Safe outcome. Win £150.",
        "Nothing further happens, but you miss the opportunity to warn others. Safe but passive response. Win £150."
    ]
};

s5.nodes[5] = {
    text: "You receive a response repeating the urgency and warning that your account will be frozen if you do not act immediately.",
    options: [
        "Follow the new instructions provided",
        "Decide the urgency feels suspicious and stop engaging"
    ],
    next: [-1, -1],
    money: [-500, 150],
    end_text: [
        "You are asked to confirm personal details and enter a security code sent to your phone. Fraudulent payments are made shortly after. Serious financial loss. Lose £500.\n\nNOTE: Banks will never email you a link to enter your login details or one-time passcodes. If you receive one, it's a phishing attempt.\n\nWhat to do: Go directly to your bank's app or website by typing the address yourself, never click links in emails.",
        "You delete the email and contact your bank directly using the number on your card. They confirm it is fraudulent. Safe outcome. Win £150."
    ]
};

array_push(scenarios, s5);

// Scenario 12 - Sold Out Tickets
var s6 = {};
s6.age_group = "18-25";
s6.red_herring = false;
s6.nodes = [];

s6.nodes[0] = {
    text: "You try to buy tickets for a popular concert that has just sold out. While searching online, you find a website claiming to have a limited number of tickets still available. The prices are slightly higher than normal, but the site looks professional and includes seating maps and customer reviews.",
    options: [
        "Buy the tickets through the website",
        "Check the official ticket provider instead",
        "Message the website's customer support"
    ],
    next: [1, 3, 5],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s6.nodes[1] = {
    text: "The website asks you to create an account and enter your card details to secure the tickets.",
    options: [
        "Complete the purchase",
        "Feel unsure before completing payment"
    ],
    next: [-1, -1],
    money: [-250, -150],
    end_text: [
        "You receive an email confirmation saying the tickets will be sent closer to the event date. Weeks later, the website disappears and no tickets arrive. The official venue confirms the site was not an authorised seller. Fake ticket resale scam. Lose £250.\n\nNOTE: UK victims lost £9.7 million to ticket fraud in 2023, a 50% increase from the previous year, with over 9,800 reports to Action Fraud.\n\nWhat to do: Only buy tickets from the venue, official sellers, or platforms listed on the Society of Ticket Agents and Retailers (STAR) website at star.org.uk.",
        "You search the website name online and find several warnings about fake ticket sites. You close the page without entering your details. Near miss. Lose £150.\n\nNOTE: UK victims lost £9.7 million to ticket fraud in 2023, a 50% increase from the previous year, with over 9,800 reports to Action Fraud.\n\nWhat to do: Only buy tickets from the venue, official sellers, or platforms listed on the Society of Ticket Agents and Retailers (STAR) website at star.org.uk."
    ]
};

s6.nodes[3] = {
    text: "You visit the official ticket website listed by the event organiser.",
    options: [
        "Join the waiting list for resale tickets",
        "Decide the event is not worth the risk"
    ],
    next: [-1, -1],
    money: [150, 150],
    end_text: [
        "You are placed in a queue for legitimate ticket returns. You avoided using an unverified reseller. Safe outcome. Win £150.",
        "You close the site and decide not to buy tickets elsewhere. Safe outcome. Win £150."
    ]
};

s6.nodes[5] = {
    text: "A live chat agent responds quickly and assures you the tickets are \"100% guaranteed.\"",
    options: [
        "Trust their reassurance and buy the tickets",
        "Decide their answers sound scripted and suspicious"
    ],
    next: [-1, -1],
    money: [-250, 150],
    end_text: [
        "The payment goes through but the tickets never arrive. Customer support stops responding shortly after. Online purchase fraud. Lose £250.\n\nNOTE: UK victims lost £9.7 million to ticket fraud in 2023, a 50% increase from the previous year, with over 9,800 reports to Action Fraud.\n\nWhat to do: Only buy tickets from the venue, official sellers, or platforms listed on the Society of Ticket Agents and Retailers (STAR) website at star.org.uk.",
        "You leave the website and report the advert. Fraud avoided. Win £150."
    ]
};

array_push(scenarios, s6);

// Scenario 22 - Sextortion
var s7 = {};
s7.age_group = "18-25";
s7.red_herring = false;
s7.nodes = [];

s7.nodes[0] = {
    text: "You have been talking to someone online for several weeks. The conversations have become increasingly personal and intimate. They share private photos of themselves first and encourage you to do the same. You feel comfortable and send intimate images. The next day, their tone changes completely. They send you a screenshot showing your photos alongside your social media profile and say: \"Send £500 or I will share these with everyone on your friends list.\"",
    options: [
        "Pay the £500 to stop them sharing the images",
        "Do not pay and block them immediately",
        "Try to negotiate a lower amount",
        "Tell a trusted friend or family member what has happened"
    ],
    next: [1, 4, 6, 9],
    money: [0, 0, 0, 0],
    end_text: ["", "", "", ""]
};

s7.nodes[1] = {
    text: "You transfer £500 in a panic. Two days later, they message again demanding another £750, saying the price has gone up because you took too long.",
    options: [
        "Pay the second demand out of fear",
        "Tell them you are going to the police"
    ],
    next: [2, 3],
    money: [0, 0],
    end_text: ["", ""]
};

s7.nodes[2] = {
    text: "After the second payment, a third demand follows within a week. The amounts keep increasing.",
    options: [
        "Keep paying each demand hoping they will eventually stop",
        "Refuse to pay any more and block them"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "They never stop. Once you have shown you will pay, you become a long-term target. The total loss exceeds £3,000 and the threats continue. Organised criminal gangs behind sextortion scams share lists of people who pay. Severe ongoing financial loss. Lose £500.\n\nNOTE: Sextortion is a growing form of online blackmail carried out by organised criminal gangs, often based overseas. Males aged 18 to 30 are particularly at risk. The offender's goal is money. Once you pay, they will ask for more.\n\nWhat to do: Do not pay. Block the account, do not delete evidence, and report to your local police on 101. You can also contact the Revenge Porn Helpline on 0345 6000 459 for confidential support.",
        "You block the account on all platforms. The threats stop after a few days. In most cases, the scammer moves on to other targets once they realise you will not pay again. You report the incident to police. Partial loss but threat contained. Lose £250.\n\nNOTE: Sextortion is a growing form of online blackmail carried out by organised criminal gangs, often based overseas. Males aged 18 to 30 are particularly at risk. The offender's goal is money. Once you pay, they will ask for more.\n\nWhat to do: Do not pay. Block the account, do not delete evidence, and report to your local police on 101. You can also contact the Revenge Porn Helpline on 0345 6000 459 for confidential support."
    ]
};

s7.nodes[3] = {
    text: "They laugh and say the police cannot help because they are based overseas. They increase the pressure and set a deadline of 24 hours.",
    options: [
        "Panic and pay before the deadline",
        "Ignore the deadline and actually contact the police"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "You send another £750. A new deadline immediately follows with a higher amount. The threats never end. Escalating financial loss. Lose £500.\n\nNOTE: Sextortion is a growing form of online blackmail carried out by organised criminal gangs, often based overseas. Males aged 18 to 30 are particularly at risk. The offender's goal is money. Once you pay, they will ask for more.\n\nWhat to do: Do not pay. Block the account, do not delete evidence, and report to your local police on 101. You can also contact the Revenge Porn Helpline on 0345 6000 459 for confidential support.",
        "You call 101 and file a report. The police take it seriously and explain that in the vast majority of cases, the images are never shared because the scammer's goal is money, not exposure. The deadline passes and nothing happens. Partial loss but threat managed. Lose £250.\n\nNOTE: Sextortion is a growing form of online blackmail carried out by organised criminal gangs, often based overseas. Males aged 18 to 30 are particularly at risk. The offender's goal is money. Once you pay, they will ask for more.\n\nWhat to do: Do not pay. Block the account, do not delete evidence, and report to your local police on 101. You can also contact the Revenge Porn Helpline on 0345 6000 459 for confidential support."
    ]
};

s7.nodes[4] = {
    text: "You block the account, take screenshots of the threats for evidence, and deactivate your social media temporarily. The scammer has no way to contact you or follow through easily.",
    options: [
        "Report the incident to the police and the platform",
        "Do not report it because you feel embarrassed"
    ],
    next: [-1, -1],
    money: [200, 0],
    end_text: [
        "You call 101 and file a report. You also report the account to the social media platform, which removes it. The police advise you that in the vast majority of cases, the images are never shared. No financial loss. Threat managed. Win £200.",
        "You are safe for now but the scammer may still have your images and could create a new account. No financial loss but ongoing risk."
    ]
};

s7.nodes[6] = {
    text: "You offer to pay £200 instead. They agree. After you transfer the money, they immediately demand another £500. The negotiation was a tactic to get an initial payment and prove you are willing to pay.",
    options: [
        "Pay the second demand",
        "Realise the pattern and stop paying after the first negotiated amount"
    ],
    next: [7, -1],
    money: [0, -150],
    end_text: [
        "",
        "You block them, save evidence, and report to the police. The threats stop. You contact the Revenge Porn Helpline for support. Small loss but further harm prevented. Lose £150.\n\nNOTE: Sextortion is a growing form of online blackmail carried out by organised criminal gangs, often based overseas. Males aged 18 to 30 are particularly at risk. The offender's goal is money. Once you pay, they will ask for more.\n\nWhat to do: Do not pay. Block the account, do not delete evidence, and report to your local police on 101. You can also contact the Revenge Porn Helpline on 0345 6000 459 for confidential support."
    ]
};

s7.nodes[7] = {
    text: "The cycle continues with escalating demands. Each payment confirms to the scammer that you will keep paying.",
    options: [
        "Continue paying out of fear",
        "Stop paying and seek help"
    ],
    next: [-1, -1],
    money: [-500, -150],
    end_text: [
        "You lose over £2,000. The threats still do not stop. You finally contact the police who explain you should have stopped paying at the first demand. Major financial loss. Lose £500.\n\nNOTE: Sextortion is a growing form of online blackmail carried out by organised criminal gangs, often based overseas. Males aged 18 to 30 are particularly at risk. The offender's goal is money. Once you pay, they will ask for more.\n\nWhat to do: Do not pay. Block the account, do not delete evidence, and report to your local police on 101. You can also contact the Revenge Porn Helpline on 0345 6000 459 for confidential support.",
        "You contact the Revenge Porn Helpline on 0345 6000 459. They provide confidential advice on getting images removed and support you through reporting to the police. Partial loss but support accessed. Lose £150.\n\nNOTE: Sextortion is a growing form of online blackmail carried out by organised criminal gangs, often based overseas. Males aged 18 to 30 are particularly at risk. The offender's goal is money. Once you pay, they will ask for more.\n\nWhat to do: Do not pay. Block the account, do not delete evidence, and report to your local police on 101. You can also contact the Revenge Porn Helpline on 0345 6000 459 for confidential support."
    ]
};

s7.nodes[9] = {
    text: "It feels like the hardest conversation you have ever had, but they respond with support, not judgement. They help you think clearly and take practical steps.",
    options: [
        "Together, screenshot the threats, block the account, and report to the police",
        "They encourage you to report but you feel too ashamed"
    ],
    next: [-1, 10],
    money: [200, 0],
    end_text: [
        "The police take the report seriously. The Revenge Porn Helpline provides guidance on getting images removed from platforms. No money was lost and you have taken back control of the situation. Safe outcome. Win £200.",
        ""
    ]
};

s7.nodes[10] = {
    text: "You block the scammer but do not file a report. Your friend checks in on you regularly.",
    options: [
        "Eventually find the courage to report weeks later",
        "Never report and try to move on alone"
    ],
    next: [-1, -1],
    money: [150, 0],
    end_text: [
        "The police are supportive and say it is never too late to report. Your report helps build intelligence against the criminal network behind the scam. No financial loss. Delayed but positive outcome. Win £150.",
        "The scammer may target others without being stopped. Reporting is always recommended, it helps build intelligence and may prevent the same person from targeting others. No financial loss, but risk to others remains."
    ]
};

array_push(scenarios, s7);


// =====================================================
// AGE GROUP: 26-35
// =====================================================

// Scenario 5 - Investment Fraud
var s8 = {};
s8.age_group = "26-35";
s8.red_herring = false;
s8.nodes = [];

s8.nodes[0] = {
    text: "You see an advert on Instagram/TikTok promoting a trading platform with \"guaranteed returns.\" The ad uses a well-known public figure's face and claims you can double your money in weeks. After you sign up, a \"personal account manager\" messages you offering guidance.",
    options: [
        "Deposit a small amount to \"test\" the platform",
        "Deposit a larger amount immediately (fear of missing out)",
        "Research the platform before investing",
        "Join a WhatsApp/Telegram \"signals group\" linked to the advert"
    ],
    next: [1, 4, 6, 8],
    money: [0, 0, 0, 0],
    end_text: ["", "", "", ""]
};

s8.nodes[1] = {
    text: "The platform dashboard shows fake profits and rising graphs. The account manager congratulates you and suggests increasing your investment.",
    options: [
        "Reinvest a larger amount after seeing \"profits\"",
        "Try to withdraw your \"profits\""
    ],
    next: [-1, 2],
    money: [-200, 0],
    end_text: [
        "When you try to withdraw, your account is placed \"under review.\" Support stops replying and the website later goes offline. Significant financial loss. Lose £200.\n\nNOTE: In 2024, Action Fraud received 25,843 reports of investment fraud, with victims collectively losing £649 million. Cryptocurrency was the most common commodity, accounting for 66% of all reports.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing, and remember... guaranteed returns don't exist.",
        ""
    ]
};

s8.nodes[2] = {
    text: "You are told you must pay a \"withdrawal fee\" or \"tax\" to unlock your funds.",
    options: [
        "Pay the withdrawal fee",
        "Refuse to pay the fee and stop engaging"
    ],
    next: [-1, -1],
    money: [-500, -150],
    end_text: [
        "After paying the fee, another fee is requested. You realise there will never be a withdrawal. Escalating financial loss. Lose £500.\n\nNOTE: In 2024, Action Fraud received 25,843 reports of investment fraud, with victims collectively losing £649 million. Cryptocurrency was the most common commodity, accounting for 66% of all reports.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing, and remember... guaranteed returns don't exist.",
        "Your account is frozen. You lose your initial deposit but avoid further losses. Partial loss. Lose £150.\n\nNOTE: In 2024, Action Fraud received 25,843 reports of investment fraud, with victims collectively losing £649 million. Cryptocurrency was the most common commodity, accounting for 66% of all reports.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing, and remember... guaranteed returns don't exist."
    ]
};

s8.nodes[4] = {
    text: "The account manager messages frequently, showing screenshots of \"other users' profits\" and encouraging fast action.",
    options: [
        "Follow their advice and keep reinvesting",
        "Start to feel unsure and ask for proof the platform is legitimate"
    ],
    next: [-1, 5],
    money: [-500, 0],
    end_text: [
        "Your balance looks impressive on-screen, but when you attempt to cash out, the platform disappears. Major financial loss. Lose £500.\n\nNOTE: In 2024, Action Fraud received 25,843 reports of investment fraud, with victims collectively losing £649 million. Cryptocurrency was the most common commodity, accounting for 66% of all reports.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing, and remember... guaranteed returns don't exist.",
        ""
    ]
};

s8.nodes[5] = {
    text: "The account manager provides official-looking certificates and links to polished review sites that appear professional.",
    options: [
        "Believe the proof and continue investing",
        "Notice inconsistencies and stop engaging"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "You lose a large sum when the site goes offline. Lose £500.\n\nNOTE: In 2024, Action Fraud received 25,843 reports of investment fraud, with victims collectively losing £649 million. Cryptocurrency was the most common commodity, accounting for 66% of all reports.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing, and remember... guaranteed returns don't exist.",
        "You lose what you deposited but avoid further losses. Lose £250.\n\nNOTE: In 2024, Action Fraud received 25,843 reports of investment fraud, with victims collectively losing £649 million. Cryptocurrency was the most common commodity, accounting for 66% of all reports.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing, and remember... guaranteed returns don't exist."
    ]
};

s8.nodes[6] = {
    text: "You check independent reviews and official registers and find warnings about clone firms and fake trading platforms.",
    options: [
        "Ignore the warnings and invest anyway",
        "Decide not to invest and block the account manager"
    ],
    next: [-1, -1],
    money: [-200, 200],
    end_text: [
        "You fall victim to the fake platform and your funds are unrecoverable. Financial loss due to ignored red flags. Lose £200.\n\nNOTE: In 2024, Action Fraud received 25,843 reports of investment fraud, with victims collectively losing £649 million. Cryptocurrency was the most common commodity, accounting for 66% of all reports.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing, and remember... guaranteed returns don't exist.",
        "You avoided the investment scam. Win £200!"
    ]
};

s8.nodes[8] = {
    text: "The group shares screenshots of large profits and encourages members to deposit into the same platform.",
    options: [
        "Follow the group's trading signals and deposit funds",
        "Observe the group without investing"
    ],
    next: [-1, -1],
    money: [-200, 0],
    end_text: [
        "The group administrators disappear after multiple members deposit money. Lose £200.\n\nNOTE: In 2024, Action Fraud received 25,843 reports of investment fraud, with victims collectively losing £649 million. Cryptocurrency was the most common commodity, accounting for 66% of all reports.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing, and remember... guaranteed returns don't exist.",
        "You notice fake profiles and repeated scripted messages promoting profits. You leave the group without investing. Nothing is lost and nothing is gained!"
    ]
};

array_push(scenarios, s8);

// Scenario 13 - Tradesperson Invoice
var s9 = {};
s9.age_group = "26-35";
s9.red_herring = false;
s9.nodes = [];

s9.nodes[0] = {
    text: "You recently had your bathroom renovated by a local tradesperson. The job cost £3,200 and you agreed to pay the final £1,600 once the work was finished. Two days after completion, you receive an email from what looks like their business address. It says their bank has changed due to a switch in accounting software and provides a new sort code and account number for your final payment.",
    options: [
        "Pay the invoice using the new bank details",
        "Reply to the email asking them to confirm the new details",
        "Phone the tradesperson using the number from your original quote",
        "Feel suspicious because you have never been asked to change payment details before"
    ],
    next: [1, 3, -1, 5],
    money: [0, 0, 200, 0],
    end_text: [
        "",
        "",
        "They confirm their bank details have not changed. They check their sent folder and find no record of the email. You agree to report it and they warn other recent customers. Safe outcome. Win £200.",
        ""
    ]
};

s9.nodes[1] = {
    text: "You transfer £1,600 to the new account. Three days later, the tradesperson sends you a text asking when you plan to settle the balance.",
    options: [
        "Tell them you already paid and send a screenshot of the transfer",
        "Assume it is a banking error and wait for it to resolve"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "They confirm the account number is not theirs. A fraudster had accessed or spoofed their email and sent fake payment details. Your bank begins a trace but warns recovery is unlikely. Financial loss due to payment diversion. Lose £500.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change.",
        "After two weeks, your bank confirms the money was moved out of the receiving account within hours. The funds are unrecoverable. Financial loss due to delayed action. Lose £500.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change."
    ]
};

s9.nodes[3] = {
    text: "You receive a reply within minutes. It includes the tradesperson's full name, your address, and the exact job description. The new sort code and account number are repeated.",
    options: [
        "Feel reassured by the level of detail and make the payment",
        "Decide to phone the tradesperson before transferring anything"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The tradesperson later confirms they never changed their bank details and did not send the email. The fraudster had enough information from the original email chain to make the reply convincing. Financial loss. Lose £500.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change.",
        "You call the number saved in your phone from the original quote. They say their bank details have not changed and they never sent that email. You delete it and pay to the original account. Fraud avoided. Win £200."
    ]
};

s9.nodes[5] = {
    text: "You compare the email address to previous messages. The domain looks almost identical but has one extra letter.",
    options: [
        "Ignore the email and pay to the original account details from your written quote",
        "Decide to pay half to the new account as a test"
    ],
    next: [-1, -1],
    money: [200, -250],
    end_text: [
        "The tradesperson confirms receipt. You avoided a payment diversion scam by trusting your original records. Safe outcome. Win £200.",
        "You transfer £800. The tradesperson contacts you days later saying they have received nothing. The remaining £800 is still owed and the £800 you sent is gone. Partial financial loss. Lose £250.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change."
    ]
};

array_push(scenarios, s9);

// Scenario 14 - The House Deposit
var s10 = {};
s10.age_group = "26-35";
s10.red_herring = false;
s10.nodes = [];

s10.nodes[0] = {
    text: "You are buying your first home. Exchange of contracts is tomorrow and your solicitor has confirmed the completion amount of £28,500. At 4:47pm, you receive an email from what appears to be your solicitor's address. It contains your case reference number, the property address, and says: \"Please note our client account details have been updated. Use the below for your completion funds. Please transfer today to avoid delays.\"",
    options: [
        "Transfer the full amount to the account in the email",
        "Feel pressure to pay quickly because exchange is tomorrow",
        "Phone your solicitor using the number from their headed paper or website",
        "Reply to the email asking them to call you to confirm"
    ],
    next: [1, 3, -1, 5],
    money: [0, 0, 200, 0],
    end_text: [
        "",
        "",
        "They confirm the correct bank details over the phone and say they have not sent any email today. They advise you to transfer using only the details they give you verbally. You complete the payment safely. Safe outcome. Win £200.",
        ""
    ]
};

s10.nodes[1] = {
    text: "You send £28,500 by faster payment. The next morning, your solicitor calls to check when you plan to transfer.",
    options: [
        "Read them the account details you sent to",
        "Panic and contact your bank immediately"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "Your solicitor says those are not their bank details. Their IT team finds that their email system was compromised. Your bank initiates an urgent recall but the funds were moved within 20 minutes of arriving. Devastating financial loss. Lose £500.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change.",
        "Your bank attempts to freeze the receiving account. A small portion of the funds is recovered but the majority is gone. You are left without your deposit and the property sale falls through. Severe financial loss. Lose £500.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change."
    ]
};

s10.nodes[3] = {
    text: "The email says \"failure to transfer today may result in the seller withdrawing from the sale.\" You feel anxious about losing the house.",
    options: [
        "Transfer the money to meet the deadline",
        "Call your solicitor's office to check, even though it is late in the day"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "Your solicitor confirms the next day that their account details have not changed. The email was fraudulent. Your deposit has been stolen. Major financial loss due to time pressure. Lose £500.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change.",
        "The receptionist transfers you to your case handler. They confirm their bank details have not changed and the email is fraudulent. They escalate to their IT and compliance teams immediately. Fraud avoided. Win £200."
    ]
};

s10.nodes[5] = {
    text: "You receive a call from someone claiming to be from the solicitor's office. They read back your case reference and property address and confirm the \"new\" bank details.",
    options: [
        "Trust the phone call and transfer the deposit",
        "Hang up and call the solicitor yourself on the number from their website"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The call was made by the same fraudster who sent the email. The number was spoofed to look like the solicitor's office. Your deposit is gone. Financial loss through sophisticated spoofing. Lose £500.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change.",
        "Your actual solicitor has no knowledge of the email or the phone call. They confirm their real bank details. You transfer safely and report the scam. Fraud avoided. Win £200."
    ]
};

array_push(scenarios, s10);

// Scenario 15 - School Trip Payment
var s11 = {};
s11.age_group = "26-35";
s11.red_herring = false;
s11.nodes = [];

s11.nodes[0] = {
    text: "Your child's school sends a letter home about a residential trip costing £285 per pupil. A few days later, you receive an email with the school logo, your child's name, and the correct trip dates. It says: \"Due to an administrative change, payments should now be made to the following account.\" A new sort code and account number are listed.",
    options: [
        "Pay the £285 to the new account details",
        "Forward the email to another parent to check if they received the same one",
        "Phone the school directly using the number on their website",
        "Decide to pay through the school's online payment system instead"
    ],
    next: [1, 3, -1, 5],
    money: [0, 0, 200, 0],
    end_text: [
        "",
        "",
        "The office manager confirms their payment details have not changed. They were unaware of the fake email and immediately contact their IT provider to investigate. They thank you for flagging it. Safe outcome. Win £200.",
        ""
    ]
};

s11.nodes[1] = {
    text: "You transfer the money. A week later, the school sends a reminder text saying your child's trip payment has not been received.",
    options: [
        "Show the school your bank transfer confirmation",
        "Assume the school made a mistake and wait for them to sort it out"
    ],
    next: [-1, -1],
    money: [-250, -250],
    end_text: [
        "The school confirms the account number does not belong to them. A fraudster used publicly available information to create a convincing fake. Financial loss. Lose £250.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change.",
        "The school has no record of your payment. After contacting your bank, you learn the receiving account was closed within days. The money cannot be recovered. Financial loss due to delayed action. Lose £250.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change."
    ]
};

s11.nodes[3] = {
    text: "They say they have not received a similar message. They also notice the email address has an extra hyphen in the domain name.",
    options: [
        "Contact the school office to verify before paying",
        "Decide the other parent probably just missed the email and pay anyway"
    ],
    next: [-1, -1],
    money: [200, -250],
    end_text: [
        "The school confirms the email is fraudulent and their payment details have not changed. They send an urgent alert to all parents warning about the scam. Fraud prevented. Win £200.",
        "The payment goes to a fraudster's account. The school later confirms their bank details were never changed. Financial loss despite warning signs. Lose £250.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change."
    ]
};

s11.nodes[5] = {
    text: "You log into the school's official parent portal and find the trip listed with the original bank details. You pay through the portal.",
    options: [
        "Report the suspicious email to the school",
        "Pay through the portal but do not report the email"
    ],
    next: [-1, -1],
    money: [200, 150],
    end_text: [
        "The school thanks you and sends a warning to all parents. Your payment is confirmed through the portal. Fraud avoided and reported. Win £200.",
        "You are safe, but other parents who received the same email may not be. Safe but passive outcome. Win £150."
    ]
};

array_push(scenarios, s11);

// Scenario 16 - Urgent Supplier Payment
var s12 = {};
s12.age_group = "26-35";
s12.red_herring = false;
s12.nodes = [];

s12.nodes[0] = {
    text: "You work as an accounts assistant at a small company. At 3:15pm on a Friday, you receive an email from what appears to be your managing director's email address. It reads: \"I need you to process an urgent payment of £4,800 to a supplier. Their bank details have changed. This needs to go out today to avoid a penalty clause. I'm in meetings so just get it done and I'll sign off Monday.\"",
    options: [
        "Process the £4,800 payment immediately",
        "Reply to the email asking for more details before processing",
        "Call your managing director on their mobile to verify",
        "Feel uncomfortable but worry about the Friday deadline and the penalty clause"
    ],
    next: [1, 3, -1, 5],
    money: [0, 0, 200, 0],
    end_text: [
        "",
        "",
        "They pick up immediately and confirm they did not send the email. They have no knowledge of any supplier bank detail change. Your company's IT team finds the email was sent from an external address that closely mimicked the real one. Safe outcome. Win £200.",
        ""
    ]
};

s12.nodes[1] = {
    text: "The payment clears before end of business. On Monday morning, your managing director asks what payment you are referring to.",
    options: [
        "Explain what happened and show them the email",
        "Contact the bank immediately to try and recall the payment"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "Your IT team investigates and finds the sender address was spoofed. The domain had one character swapped. The funds were moved out of the receiving account over the weekend and cannot be recovered. Financial loss to the business. Lose £500.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change.",
        "Your bank attempts a recall but the receiving account has already been emptied. They advise reporting to Action Fraud. Financial loss despite quick action. Lose £500.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change."
    ]
};

s12.nodes[3] = {
    text: "You receive a quick response: \"It's for the Q2 materials order. The supplier flagged the change last week. Just use the new details and I'll forward the paperwork Monday.\" The tone and sign-off match your MD's usual style.",
    options: [
        "Feel reassured by the detail and process the payment",
        "Decide to walk over to your MD's office or call them on their mobile"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The email was controlled by a fraudster who had studied your company's email patterns. The payment goes to a criminal account. Financial loss. Lose £500.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change.",
        "Your MD says they are not in meetings and never sent the email. They thank you for checking and ask IT to investigate immediately. Fraud avoided. Win £200."
    ]
};

s12.nodes[5] = {
    text: "The email says there will be a £1,200 penalty if the payment is not processed today. You do not want to be responsible for costing the company money.",
    options: [
        "Process the payment to avoid the penalty",
        "Decide that any payment this urgent should still go through the normal approval process"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "There was no penalty clause. The urgency and the Friday timing were deliberate tactics to stop you from checking. The £4,800 is gone. Financial loss due to manufactured pressure. Lose £500.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change.",
        "You flag the request with your line manager and follow your company's two-person sign-off procedure. Your MD later confirms it was fraudulent. Fraud avoided through good process. Win £200."
    ]
};

array_push(scenarios, s12);

// Scenario 17 - Energy Supplier Update
var s13 = {};
s13.age_group = "26-35";
s13.red_herring = false;
s13.nodes = [];

s13.nodes[0] = {
    text: "You receive an email that looks like it is from your energy supplier. It uses their logo, colour scheme, and includes your customer account number. The email says: \"We are writing to let you know that our payment details have been updated. Please use the new account details below for your next bill payment of £147.60. Failure to update may result in service disruption.\"",
    options: [
        "Update your standing order to the new account and pay the £147.60",
        "Log into your energy account through their official website or app to check",
        "Call the phone number included in the email to verify",
        "Feel suspicious because the email threatens \"service disruption\""
    ],
    next: [1, 3, 5, 7],
    money: [0, 0, 0, 0],
    end_text: ["", "", "", ""]
};

s13.nodes[1] = {
    text: "The payment goes through. The following month, your energy supplier sends a missed payment notice. You call them and they confirm their bank details have never changed.",
    options: [
        "Ask them to waive the late fee and explain what happened",
        "Assume the payment will eventually reach them and do nothing"
    ],
    next: [-1, -1],
    money: [-250, -250],
    end_text: [
        "They waive the fee but confirm the £147.60 you sent to the fraudulent account is gone. They advise reporting to Action Fraud. Financial loss. Lose £250.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change.",
        "Your account falls further behind. Your energy supplier adds additional charges. The original payment is unrecoverable. Financial loss plus additional charges. Lose £250.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change."
    ]
};

s13.nodes[3] = {
    text: "Your online account shows no notifications about changed payment details. Your current bill shows the same bank details as always.",
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

s13.nodes[5] = {
    text: "A professional-sounding person answers and confirms the \"updated\" bank details. They read back your account number and address to sound legitimate. They encourage you to make the payment today.",
    options: [
        "Trust the call and pay to the new account",
        "Hang up and find the number on your actual energy bill or their official website"
    ],
    next: [-1, -1],
    money: [-250, 200],
    end_text: [
        "The phone number in the email was also set up by the fraudster. Everything from the email to the phone call was part of the scam. Your payment goes to a criminal account. Financial loss through layered deception. Lose £250.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change.",
        "You call the real customer service line. They confirm their payment details have not changed and the email is a known scam. They flag your account for extra security monitoring. Fraud avoided. Win £200."
    ]
};

s13.nodes[7] = {
    text: "You check previous emails from your energy supplier and notice the sender address is slightly different. The real address ends in .co.uk but this one ends in .com.",
    options: [
        "Delete the email and report it by forwarding to report@phishing.gov.uk",
        "Feel unsure and decide to pay a smaller test amount of £20 first"
    ],
    next: [-1, -1],
    money: [200, -150],
    end_text: [
        "Your report helps the National Cyber Security Centre track the scam. Your account remains secure. Fraud avoided and reported. Win £200.",
        "The £20 goes through but to a criminal account. Your energy supplier still has not received any payment. You have lost £20 and still owe the full bill. Partial loss from test payment. Lose £150.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud alone were reported to Action Fraud, resulting in £11.7 million in losses, with an average loss of £78,393 per case.\n\nWhat to do: Always verify changes to bank details by calling the person or company directly using a number you already have. Never use contact details from the message requesting the change."
    ]
};

array_push(scenarios, s13);

// =====================================================
// AGE GROUP: 36+
// =====================================================

// Scenario 4 - Courier Fraud / The Bank Call
var s14 = {};
s14.age_group = "36+";
s14.red_herring = false;
s14.nodes = [];

s14.nodes[0] = {
    text: "You receive a phone call. The caller says: \"This is your bank's security department. We've detected suspicious activity. For safety, your account has been frozen and your outgoing funds have been held. Please confirm your home address.\"",
    options: [
        "Ask what bank they are calling from",
        "Say you are not interested and hang up"
    ],
    next: [1, -1],
    money: [0, -150],
    end_text: [
        "",
        "You hang up without checking. This was actually your bank calling about genuine suspicious activity. Lose £150 for acting without verifying."
    ]
};

s14.nodes[1] = {
    text: "They say: \"This is Northern Savings Bank. I understand your concern but you can check the number on your caller ID, it's our official line.\"",
    options: [
        "Alright, if it's serious, go ahead and confirm your address",
        "Say you are not interested and hang up"
    ],
    next: [2, -1],
    money: [0, -150],
    end_text: [
        "",
        "You hang up without verifying. This was your bank calling about genuine suspicious activity. Lose £150."
    ]
};

s14.nodes[2] = {
    text: "They say: \"Thank you, that matches our records. We'll send a verification code to your phone. Please confirm it so we can release your funds.\"",
    options: [
        "Provide the verification code",
        "Refuse to provide the code"
    ],
    next: [-1, -1],
    money: [150, -150],
    end_text: [
        "Your money is safe. Be a little more cautious next time but this call was genuine. Win £150.",
        "You refuse to provide the code. This was your bank calling about genuine suspicious activity. Lose £150 for not co-operating."
    ]
};

array_push(scenarios, s14);

// Scenario 7 - Abuse of Position of Trust
var s15 = {};
s15.age_group = "36+";
s15.red_herring = false;
s15.nodes = [];

s15.nodes[0] = {
    text: "You are contacted by someone in a position of trust, such as a landlord, employer, carer, financial advisor, or support worker. They tell you there is an urgent issue with your account or payment and say they can fix it quickly if you share your login details or transfer money directly to them.",
    options: [
        "Provide your login details so they can \"fix the issue\"",
        "Transfer money directly to them to resolve the issue",
        "Refuse and contact the organisation directly through official channels",
        "Verify the request through official channels before responding"
    ],
    next: [1, 4, -1, 7],
    money: [0, 0, 200, 0],
    end_text: [
        "",
        "",
        "The organisation confirms no one should ask for your login details or direct payments. You report the individual. Further harm is prevented and your account remains secure. Win £200.",
        ""
    ]
};

s15.nodes[1] = {
    text: "They thank you and say they will handle everything immediately. You notice unusual activity on your account later that day.",
    options: [
        "Question them about the payments",
        "Ignore it and assume they are handling it",
        "Change your password after seeing these payments"
    ],
    next: [-1, -1, -1],
    money: [-250, -500, -150],
    end_text: [
        "They claim it is part of the fix and ask you not to worry. You later discover that money has been transferred out of your account. Lose £250.\n\nNOTE: No legitimate professional, whether a landlord, employer, carer, or advisor, should ever need your login details or ask you to transfer money directly to them.\n\nWhat to do: If someone in a trusted role asks for account access, contact the organisation they represent independently to verify.",
        "Multiple transactions leave your account over several days. You realise too late that your trust was abused. Lose £500.\n\nNOTE: No legitimate professional, whether a landlord, employer, carer, or advisor, should ever need your login details or ask you to transfer money directly to them.\n\nWhat to do: If someone in a trusted role asks for account access, contact the organisation they represent independently to verify.",
        "The person had already accessed your account before you changed it. Some funds are taken before you regain control. Lose £150.\n\nNOTE: No legitimate professional, whether a landlord, employer, carer, or advisor, should ever need your login details or ask you to transfer money directly to them.\n\nWhat to do: If someone in a trusted role asks for account access, contact the organisation they represent independently to verify."
    ]
};

s15.nodes[4] = {
    text: "They say the payment is temporary and will be refunded once the problem is sorted.",
    options: [
        "Send the full requested amount",
        "Send a smaller amount first",
        "Refuse to transfer money"
    ],
    next: [-1, -1, -1],
    money: [-500, -150, 200],
    end_text: [
        "They confirm receipt and say the refund is processing. Communication becomes inconsistent and the refund never arrives. Lose £500.\n\nNOTE: No legitimate professional, whether a landlord, employer, carer, or advisor, should ever need your login details or ask you to transfer money directly to them.\n\nWhat to do: If someone in a trusted role asks for account access, contact the organisation they represent independently to verify.",
        "They ask for the remaining balance urgently. You begin to feel uncomfortable and stop engaging. Lose £150.\n\nNOTE: No legitimate professional, whether a landlord, employer, carer, or advisor, should ever need your login details or ask you to transfer money directly to them.\n\nWhat to do: If someone in a trusted role asks for account access, contact the organisation they represent independently to verify.",
        "They pressure you and say you are delaying an important process. You decide to verify independently. You contact the organisation directly and confirm that no payment was required. Safe outcome. Win £200."
    ]
};

s15.nodes[7] = {
    text: "You contact the organisation using a number from their official website. They confirm no one should ask for login details or direct transfers.",
    options: [
        "Report the individual",
        "Ignore your doubts and respond to the original message anyway"
    ],
    next: [-1, -1],
    money: [200, -500],
    end_text: [
        "Further harm is prevented and your account remains secure. Win £200!",
        "You provide details despite earlier warning signs. Funds are later withdrawn from your account. Lose £500.\n\nNOTE: No legitimate professional, whether a landlord, employer, carer, or advisor, should ever need your login details or ask you to transfer money directly to them.\n\nWhat to do: If someone in a trusted role asks for account access, contact the organisation they represent independently to verify."
    ]
};

array_push(scenarios, s15);

// Scenario 18 - Romance Fraud: The Medical Emergency
var s16 = {};
s16.age_group = "36+";
s16.red_herring = false;
s16.nodes = [];

s16.nodes[0] = {
    text: "You have been talking to someone online for three months. They say they are a British engineer working on a contract in Turkey. You have never video called but they send voice notes and photos regularly. One evening, they message saying they have been rushed to hospital after a road accident. They say they cannot access their UK bank account from abroad.",
    options: [
        "Send them money to cover the hospital bill",
        "Tell them you cannot afford to send money but want to help another way",
        "Ask to video call them before sending anything",
        "Suggest they contact the British Embassy for help"
    ],
    next: [1, 4, 7, -1],
    money: [0, 0, 0, 200],
    end_text: [
        "",
        "",
        "",
        "You search online and find that the British Embassy does provide emergency assistance to UK nationals abroad. You also do a reverse image search on their profile photo and find it belongs to someone else entirely. Fraud identified. Win £200."
    ]
};

s16.nodes[1] = {
    text: "They thank you emotionally. They provide bank details for a \"friend in Turkey\" who can collect the payment on their behalf. You transfer £1,200. They recover and ask for more money for medication and a flight home.",
    options: [
        "Continue sending money because you believe they will pay you back",
        "Tell them this is the last time you can help"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "Over the next month, the requests increase. You send a further £1,500 for a new passport, airport transfer, and a \"security deposit\" for the flight. They eventually stop responding entirely. The total loss is over £3,500. Severe financial and emotional loss. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "They become emotional and say they understand. Two days later, a new emergency appears. Their wallet was stolen at the hospital. You realise the emergencies will never stop. Significant financial loss. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

s16.nodes[4] = {
    text: "They become upset and say you are the only person they can turn to. They send a screenshot of a hospital invoice for £2,400.",
    options: [
        "Feel guilty and send a smaller amount to help",
        "Suggest they contact the British Embassy for help"
    ],
    next: [5, -1],
    money: [0, 200],
    end_text: [
        "",
        "You search online and find that the British Embassy does provide emergency assistance to UK nationals abroad. You also do a reverse image search on their profile photo and find it belongs to someone else entirely. Fraud identified. Win £200."
    ]
};

s16.nodes[5] = {
    text: "You transfer £400. They are grateful and the relationship feels closer than ever. Over the following weeks, they request more for follow-up treatment.",
    options: [
        "Keep sending smaller amounts each time they ask",
        "Set a firm limit and refuse any further requests"
    ],
    next: [-1, -1],
    money: [-500, -150],
    end_text: [
        "The total reaches £1,600 over six weeks. Each request is accompanied by a new crisis. You realise the pattern too late. Escalating financial loss. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "They become cold and distant. The warmth disappears overnight. You realise the affection was conditional on you sending money. Partial loss. Lose £150.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

s16.nodes[7] = {
    text: "They agree but cancel at the last minute three times, each time with a different excuse: phone broken, Wi-Fi down, too tired from surgery.",
    options: [
        "Give them the benefit of the doubt and send money anyway",
        "Refuse to send money until you have a video call"
    ],
    next: [8, -1],
    money: [0, 200],
    end_text: [
        "",
        "They become angry and accuse you of not caring. You hold firm. They eventually stop messaging. You later see a warning online about romance scammers using the same photos. Fraud avoided. Win £200."
    ]
};

s16.nodes[8] = {
    text: "You transfer £600. They become harder to reach after receiving the payment.",
    options: [
        "Chase them for a response and send another message offering more help",
        "Recognise the silence as a warning sign and stop engaging"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "They resurface with another emergency. You send £400 more before they disappear for good. Financial loss. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "You block them and report the profile. You lost £600 but prevented further losses. Partial loss. Lose £250.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

array_push(scenarios, s16);

// Scenario 19 - Romance Fraud: The Military Officer
var s17 = {};
s17.age_group = "36+";
s17.red_herring = false;
s17.nodes = [];

s17.nodes[0] = {
    text: "You match with someone on a dating app who says they are a senior officer in the British Army, currently deployed overseas. Over six weeks, the relationship deepens. They talk about a future together. One day, they say they are being sent a package of personal belongings back to the UK and need your help clearing it through customs.",
    options: [
        "Agree to help and pay the customs fee they mention",
        "Ask why they cannot pay the fee themselves",
        "Suggest they ask a family member or colleague to help instead",
        "Tell them you will not pay and see how they react"
    ],
    next: [1, 4, 7, 9],
    money: [0, 0, 0, 0],
    end_text: ["", "", "", ""]
};

s17.nodes[1] = {
    text: "You pay £450 through a courier website they send you. The site then requests an additional \"security deposit\" of £600, saying it is standard for international military shipments.",
    options: [
        "Pay the security deposit",
        "Feel uneasy and search online for the courier company name"
    ],
    next: [2, 3],
    money: [0, 0],
    end_text: ["", ""]
};

s17.nodes[2] = {
    text: "After paying, a third fee is requested for \"insurance clearance.\"",
    options: [
        "Pay the insurance clearance fee",
        "Refuse the additional fee and question why there are so many charges"
    ],
    next: [-1, -1],
    money: [-500, -150],
    end_text: [
        "You realise there will always be another fee. The parcel does not exist. The courier website later goes offline. Escalating financial loss. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "They become frantic and say the package contains an engagement ring for you. You feel torn but decide not to pay any more. The courier site later goes offline. Partial loss. Lose £150.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

s17.nodes[3] = {
    text: "The courier company has no presence outside of the single website. The domain was registered two months ago. You find forum posts from other victims describing the exact same courier site.",
    options: [
        "Confront your partner with what you found",
        "Try to get a refund from the courier site"
    ],
    next: [-1, -1],
    money: [-150, -150],
    end_text: [
        "They deny everything and accuse you of being paranoid. Their tone becomes manipulative. You block them and report the profile and the courier site. Partial loss but fraud identified. Lose £150.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "There is no working customer service number or refund process. The site goes offline within days. The £450 is gone. Financial loss. Lose £150.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

s17.nodes[4] = {
    text: "They say military personnel cannot access personal banking while deployed and that their salary goes into a restricted account. They say you are the only person they trust.",
    options: [
        "Accept the explanation and pay the fee",
        "Search online for information about military customs procedures"
    ],
    next: [5, -1],
    money: [0, 200],
    end_text: [
        "",
        "You find that the British Army does not charge personal customs fees to service members. You also find multiple scam warnings describing the exact same scenario. The photos on their profile appear on a stolen valour database. Fraud identified through research. Win £200."
    ]
};

s17.nodes[5] = {
    text: "You transfer £450 to the account listed on the courier site. A week later, another fee appears.",
    options: [
        "Pay the second fee believing the package is real",
        "Refuse to pay more and demand proof the package exists"
    ],
    next: [-1, -1],
    money: [-500, -150],
    end_text: [
        "You send another £350. The fees continue. The person becomes harder to reach between payments. The courier site eventually disappears. Financial loss. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "They send a photo of a sealed box with a shipping label. A reverse image search shows the same photo has been used in dozens of scam reports. You block them and report. Partial loss. Lose £150.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

s17.nodes[7] = {
    text: "They say they have no family and their colleagues are also deployed. They become emotional and say \"I thought what we had was real.\" You feel conflicted.",
    options: [
        "Give in to the emotional pressure and pay",
        "Tell them you need time to think and speak to a friend or family member"
    ],
    next: [8, -1],
    money: [0, 200],
    end_text: [
        "",
        "You explain the situation to a close friend. They immediately recognise the pattern from a news story about military romance scams. You block the profile and report it. Fraud avoided through outside perspective. Win £200."
    ]
};

s17.nodes[8] = {
    text: "You transfer £450. The package never arrives. After two weeks of excuses, they ask for another £300.",
    options: [
        "Pay the additional amount",
        "Refuse and end the relationship"
    ],
    next: [-1, -1],
    money: [-500, -150],
    end_text: [
        "They ask for more again a week later. You have now sent over £1,000. They become cold and eventually disappear. Major financial loss. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "They try guilt and anger but you hold firm. You block them and report the profile. Partial loss. Lose £150.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

s17.nodes[9] = {
    text: "Their tone shifts. The warm, patient messages are replaced by guilt trips, accusations of disloyalty, and increasingly desperate pleas.",
    options: [
        "Block them and report the profile",
        "Feel guilty and reconsider sending a small amount"
    ],
    next: [-1, 10],
    money: [200, 0],
    end_text: [
        "The dating platform removes the account. You report the scam to Action Fraud. No money was lost. Safe outcome. Win £200.",
        ""
    ]
};

s17.nodes[10] = {
    text: "You send £200 \"just in case.\" They immediately ask for more.",
    options: [
        "Send more out of guilt",
        "Realise the guilt was manufactured and block them"
    ],
    next: [-1, -1],
    money: [-250, -150],
    end_text: [
        "The total climbs to £600 before you finally block them. Financial loss. Lose £250.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "You report the profile and lose only the initial £200. A painful lesson but further harm was prevented. Small financial loss. Lose £150.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

array_push(scenarios, s17);

// Scenario 20 - Romance Fraud: The Investment Opportunity
var s18 = {};
s18.age_group = "36+";
s18.red_herring = false;
s18.nodes = [];

s18.nodes[0] = {
    text: "You have been in an online relationship for two months with someone you met on a dating app. They say they work in finance and live in London. You have had several video calls and they seem genuine. One evening, they mention they have been making money through a cryptocurrency trading platform and offer to show you how it works.",
    options: [
        "Sign up to the platform and deposit a small amount to try it",
        "Say you are interested but want to research the platform first",
        "Decline the offer and say you are not comfortable investing",
        "Ask a friend or family member for their opinion before doing anything"
    ],
    next: [1, 4, 6, 8],
    money: [0, 0, 0, 0],
    end_text: ["", "", "", ""]
};

s18.nodes[1] = {
    text: "You deposit £200. Within a few days, your dashboard shows a profit of £340. Your partner congratulates you and suggests increasing your investment while the market is favourable.",
    options: [
        "Deposit a larger amount based on the early \"profits\"",
        "Try to withdraw your initial deposit plus the profit"
    ],
    next: [2, -1],
    money: [0, -250],
    end_text: [
        "",
        "The platform says withdrawals require a minimum balance of £1,000. Your partner encourages you to top up. You deposit another £800. The withdrawal still fails with a new reason each time. Financial loss through manufactured barriers. Lose £250.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

s18.nodes[2] = {
    text: "You invest another £2,000. The dashboard continues showing impressive returns. When you try to withdraw, you are told there is a minimum withdrawal period of 30 days. After 30 days, the platform asks for a \"tax clearance fee.\"",
    options: [
        "Pay the tax clearance fee",
        "Refuse to pay and try to contact the platform directly"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "After paying £500, another fee is requested. The platform stops responding and eventually goes offline. Your partner becomes defensive and then disappears. Major financial loss. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "There is no working phone number or office address. The website domain was registered three months ago. You have lost your deposits but avoided the additional fee. Financial loss. Lose £250.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

s18.nodes[4] = {
    text: "Your partner says the platform is \"invite only\" and not widely reviewed yet, which is why the returns are so high. They encourage you to move quickly before access is restricted.",
    options: [
        "Trust them because the relationship feels genuine and invest",
        "Check the FCA register and search for reviews independently"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "You deposit £1,500 over three weeks. The dashboard shows large profits but none of it can be withdrawn. Your partner becomes evasive when you ask questions. The platform later goes offline. Financial loss. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "The platform is not listed on the FCA register. You find warnings on forums about romance baiting scams where a fake partner introduces victims to fraudulent crypto platforms. Fraud identified. Win £200."
    ]
};

s18.nodes[6] = {
    text: "Your partner reacts calmly at first but brings it up again a few days later, then again the following week. They start sending screenshots of their own \"profits\" and say they want you both to be financially secure before meeting.",
    options: [
        "Eventually agree to invest a small amount to keep the peace",
        "Stand firm and notice the repeated pressure as a red flag"
    ],
    next: [-1, -1],
    money: [-250, 200],
    end_text: [
        "You deposit £500. The profits look real on screen but when you request a withdrawal, the platform asks for identity documents and a processing fee. You realise you have been manipulated. Financial loss. Lose £250.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "You end the relationship after recognising the manipulation pattern. You report the profile and the platform to Action Fraud. Fraud avoided. Win £200."
    ]
};

s18.nodes[8] = {
    text: "Your friend is immediately suspicious. They point out that a real partner would not pressure you to invest, and that \"invite-only\" platforms with guaranteed returns are a known scam tactic. They help you search the FCA warning list.",
    options: [
        "Take their advice and block the person",
        "Feel conflicted because the relationship felt real"
    ],
    next: [-1, -1],
    money: [200, 0],
    end_text: [
        "You report the profile to the dating app and the platform to Action Fraud. You feel hurt but relieved. No money was lost. Safe outcome. Win £200.",
        "You continue talking to the person but refuse to invest. Over time, they lose interest and the messages slow down. They eventually disappear. No money was lost but the emotional impact is significant."
    ]
};

array_push(scenarios, s18);

// Scenario 21 - Romance Fraud: The Visa Application
var s19 = {};
s19.age_group = "36+";
s19.red_herring = false;
s19.nodes = [];

s19.nodes[0] = {
    text: "You have been in an online relationship for four months with someone who says they live in Ghana but grew up in Manchester. They say they moved to Accra to care for an elderly parent and plan to return to the UK soon. They begin discussing visiting you and say the visa application requires proof of funds and a flight booking, and they are £900 short.",
    options: [
        "Send the £900 to help with the visa and flights",
        "Offer to book the flights yourself directly through an airline",
        "Say you want to wait and meet them first before sending any money",
        "Tell them you cannot send money and see how they respond"
    ],
    next: [1, 4, 7, 10],
    money: [0, 0, 0, 0],
    end_text: ["", "", "", ""]
};

s19.nodes[1] = {
    text: "You transfer the money. Two days before the trip, they say the visa was rejected and they need to reapply with a higher proof of funds.",
    options: [
        "Send more money to cover the new visa requirement",
        "Ask to see the rejection letter from the Home Office"
    ],
    next: [2, 3],
    money: [0, 0],
    end_text: ["", ""]
};

s19.nodes[2] = {
    text: "You transfer another £700. The visa is \"rejected\" again with a different reason.",
    options: [
        "Continue funding the applications because you have already invested so much",
        "Refuse to send more and ask them to fund the next attempt themselves"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "Each rejection comes with a new fee. Over three months, you send over £4,000. They never arrive in the UK. The relationship exists only to extract money. Major financial loss. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "They become emotional and say you are giving up on the relationship. The guilt is intense but you hold firm. They continue messaging for a few weeks before slowly disappearing. Partial financial loss. Lose £250.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

s19.nodes[3] = {
    text: "They send a document that looks official but you notice the formatting is inconsistent and the reference number format does not match real Home Office correspondence you find online.",
    options: [
        "Point out the inconsistencies and ask for an explanation",
        "Accept the document and send more money"
    ],
    next: [-1, -1],
    money: [-250, -500],
    end_text: [
        "They become defensive and say you are calling them a liar. Their reaction confirms your suspicions. You block them and report the profile. Loss limited to initial payment. Lose £250.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "The cycle continues with new rejections and new fees. The documents were fabricated. Financial loss. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

s19.nodes[4] = {
    text: "They hesitate and say they need the money sent to their account instead because the visa requires a bank statement showing sufficient funds. They provide a specific amount that must appear as a single deposit.",
    options: [
        "Accept the explanation and transfer the money",
        "Research UK visa requirements independently"
    ],
    next: [5, -1],
    money: [0, 200],
    end_text: [
        "",
        "You check the official UK government visa website and find that applicants do not need someone else to deposit money into their account. You raise this with them and their explanation does not add up. Fraud identified through research. Win £200."
    ]
};

s19.nodes[5] = {
    text: "The money is sent. The visa is \"delayed,\" then \"rejected,\" then requires a \"reapplication fee.\"",
    options: [
        "Pay the reapplication fee",
        "Stop paying and demand answers"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "Another fee follows. The person never arrives. You realise the visa process was entirely fabricated. Financial loss. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "They become emotional and try to guilt you. You hold firm and end the relationship. Partial loss. Lose £250.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

s19.nodes[7] = {
    text: "They say they understand but gradually become more emotional over the following weeks. The conversations always circle back to money.",
    options: [
        "Eventually give in and send a smaller amount",
        "Hold firm and speak to someone you trust about the situation"
    ],
    next: [8, -1],
    money: [0, 200],
    end_text: [
        "",
        "A friend or family member points out the pattern: every conversation leads to a request for money. They help you see the relationship from the outside. You decide to end contact. Fraud avoided through outside support. Win £200."
    ]
};

s19.nodes[8] = {
    text: "You transfer £400. They are tearfully grateful. A month later, they need more.",
    options: [
        "Send more each time they ask",
        "Recognise the pattern and stop sending money"
    ],
    next: [-1, -1],
    money: [-500, -150],
    end_text: [
        "The cycle of emotional pressure and financial requests continues for months. The total exceeds £2,000. Significant financial loss. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "You end the relationship. The emotional impact is significant but you prevent further financial loss. Partial loss. Lose £150.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040."
    ]
};

s19.nodes[10] = {
    text: "Their reaction tells you everything. The warmth disappears and is replaced by guilt, silence, or sudden emergencies designed to pull you back in.",
    options: [
        "Recognise the manipulation and end the relationship",
        "Feel guilty and re-establish contact"
    ],
    next: [-1, 11],
    money: [200, 0],
    end_text: [
        "You block them on all platforms and report the profile to the dating app and Action Fraud. No money was lost. Safe outcome. Win £200.",
        ""
    ]
};

s19.nodes[11] = {
    text: "They welcome you back warmly. Within days, the financial requests resume.",
    options: [
        "Send money to make up for pulling away",
        "Realise re-engaging was a mistake and block them permanently"
    ],
    next: [-1, -1],
    money: [-500, 150],
    end_text: [
        "You transfer £500. The pattern restarts immediately. You eventually lose over £1,200 before accepting the truth. Financial loss after re-engagement. Lose £500.\n\nNOTE: UK victims lost £106 million to romance fraud in the 2024/25 financial year, with 9,449 reports to Action Fraud. The average loss per victim was £11,222. Reports have increased 9% year on year.\n\nWhat to do: Never send money to someone you have only met online. If you suspect romance fraud, contact your bank immediately and report it to Action Fraud on 0300 123 2040.",
        "You report the profile and speak to a friend for support. No further money is lost. Win £150."
    ]
};

array_push(scenarios, s19);

// =====================================================
// AGE GROUP: 13-17 (Additional - Money Mule)
// =====================================================

// Scenario 20 - Money Mule: The Easy Commission
var s20 = {};
s20.age_group = "13-17";
s20.red_herring = false;
s20.nodes = [];

s20.nodes[0] = {
    text: "A friend at school shows you a screenshot of their bank balance with £300 more than usual. They say someone on Snapchat offered them £50 to let a payment pass through their account. They say it took five minutes and the money was gone by the next day. They offer to connect you with the same person.",
    options: [
        "Message the Snapchat account and ask how it works",
        "Tell your friend you are not sure and want to think about it",
        "Tell a parent or trusted adult what your friend told you",
        "Search online for whether this is actually illegal"
    ],
    next: [1, 4, 7, 9],
    money: [0, 0, 0, 0],
    end_text: ["", "", "", ""]
};

s20.nodes[1] = {
    text: "They reply quickly and say all you need to do is share your sort code and account number. They say £1,200 will be deposited into your account. You keep £50 and transfer the rest to a different account they provide. They say it is \"completely safe\" and \"everyone does it.\"",
    options: [
        "Share your bank details and wait for the deposit",
        "Ask where the money comes from"
    ],
    next: [2, 3],
    money: [0, 0],
    end_text: ["", ""]
};

s20.nodes[2] = {
    text: "The £1,200 arrives within hours. You transfer £1,150 as instructed and keep £50. They message you again two days later asking you to do it again with a larger amount.",
    options: [
        "Agree to do it again",
        "Decide once was enough and stop"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "This time £3,500 is deposited. You transfer it as instructed. A week later, your bank freezes your account. The funds were linked to fraud. You cannot access your money, you cannot open a new account, and the police are informed. Account frozen and criminal investigation. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Around 65% of money mules are under 30, and 23% are under 21. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job or favour asks you to receive and transfer money through your personal account, it is money laundering. Report it to Action Fraud on 0300 123 2040.",
        "You block the account. However, the £1,200 that passed through your account was stolen money. Your bank detects the suspicious activity and contacts you. Your account is frozen pending investigation. Even a single transfer can result in a criminal record. Account frozen. Lose £250.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Around 65% of money mules are under 30, and 23% are under 21. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job or favour asks you to receive and transfer money through your personal account, it is money laundering. Report it to Action Fraud on 0300 123 2040."
    ]
};

s20.nodes[3] = {
    text: "They say it is from \"online businesses\" that need help moving payments. They say it is \"not illegal\" and that \"banks don't care.\" The explanation is vague and they change the subject when you press further.",
    options: [
        "Accept the answer and share your details",
        "Decide it sounds suspicious and do not share your details"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The money arrives and you transfer it. Your bank flags the transaction within days. You are contacted by the bank's fraud team who explain you have been used as a money mule. Your account is closed. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Around 65% of money mules are under 30, and 23% are under 21. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job or favour asks you to receive and transfer money through your personal account, it is money laundering. Report it to Action Fraud on 0300 123 2040.",
        "You tell them you are not interested. They try to pressure you but you block the account. Safe outcome. Win £200."
    ]
};

s20.nodes[4] = {
    text: "Your friend says you are overthinking it and shows you another screenshot of a £50 payment they received. They say if you do not do it, someone else will. You feel pressure to fit in.",
    options: [
        "Give in to the peer pressure and share your bank details",
        "Stay firm and say no"
    ],
    next: [5, -1],
    money: [0, 200],
    end_text: [
        "",
        "Your friend is annoyed but moves on. A few weeks later, you hear their account has been frozen and they are struggling to access their own money. You are glad you did not get involved. Safe outcome. Win £200."
    ]
};

s20.nodes[5] = {
    text: "The process works the same way. £1,200 arrives, you transfer £1,150. A few days later, your bank freezes your account. Your friend's account has also been frozen. You are both under investigation.",
    options: [
        "Realise the seriousness and cooperate with the investigation",
        "Try to pretend you did not know what you were doing"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "Your bank closes your account. You are placed on a fraud database which makes it difficult to open new accounts, get phone contracts, or apply for student loans in the future. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Around 65% of money mules are under 30, and 23% are under 21. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job or favour asks you to receive and transfer money through your personal account, it is money laundering. Report it to Action Fraud on 0300 123 2040.",
        "The bank's fraud team explains that ignorance is not a defence. Allowing your account to be used to move stolen money is money laundering regardless of whether you knew where the money came from. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Around 65% of money mules are under 30, and 23% are under 21. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job or favour asks you to receive and transfer money through your personal account, it is money laundering. Report it to Action Fraud on 0300 123 2040."
    ]
};

s20.nodes[7] = {
    text: "They explain that what your friend described is money laundering and that the \"easy £50\" could lead to a criminal record, a closed bank account, and difficulty getting student loans or phone contracts in the future.",
    options: [
        "Take their advice and stay away from it",
        "Feel conflicted because your friend seems fine and the money was easy"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "You avoid getting involved. You warn your friend about the risks. You have protected yourself. Safe outcome. Win £200.",
        "Your friend's account is frozen a month later. They cannot pay for their phone, cannot receive their part-time wages, and are being investigated by the bank. The \"easy money\" has cost them far more than £50. Win £200."
    ]
};

s20.nodes[9] = {
    text: "You find information from the National Crime Agency explaining that allowing your bank account to be used to move money for someone else is money laundering. The maximum sentence is 14 years in prison.",
    options: [
        "Decide it is not worth the risk and block the Snapchat account",
        "Show your friend what you found"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "You report the account to Snapchat. No money was lost and no harm was done. Safe outcome. Win £200.",
        "They dismiss it at first but later come back and say they want to stop. You help them block the account and report it. You may have prevented both of you from getting a criminal record. Win £200."
    ]
};

array_push(scenarios, s20);

// Scenario 21 - Money Mule: Do Me a Favour
var s21 = {};
s21.age_group = "13-17";
s21.red_herring = false;
s21.nodes = [];

s21.nodes[0] = {
    text: "A friend you have known for years messages you on WhatsApp. They say their bank account has been temporarily locked. They ask if someone can deposit £800 into your account, and then you withdraw it and give them the cash. They say it is their own money from selling a games console online.",
    options: [
        "Agree because you trust your friend",
        "Ask why they cannot use someone else's account or wait for their new card",
        "Feel uneasy and look up whether this could be illegal",
        "Tell a parent or trusted adult about the request"
    ],
    next: [1, 4, 7, 9],
    money: [0, 0, 0, 0],
    end_text: ["", "", "", ""]
};

s21.nodes[1] = {
    text: "You share your sort code and account number. £800 arrives the next day. You withdraw the cash and give it to your friend. A second deposit arrives a few days later without warning. Your friend asks you to withdraw £1,500 this time.",
    options: [
        "Withdraw it and give it to your friend",
        "Tell your friend this feels wrong and refuse"
    ],
    next: [-1, -1],
    money: [-500, -150],
    end_text: [
        "Your bank contacts you about suspicious activity. The £1,500 was linked to a fraud victim in another city. Your account is frozen and an investigation is opened. Your friend stops returning your calls. Account frozen and potential criminal record. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Around 65% of money mules are under 30, and 23% are under 21. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job or favour asks you to receive and transfer money through your personal account, it is money laundering. Report it to Action Fraud on 0300 123 2040.",
        "Your friend gets angry and says you are being \"extra\". You hold firm. Your bank later flags the original £800 deposit. Because you cooperated and stopped after one transfer, the consequences are less severe. Account under review. Lose £150.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Around 65% of money mules are under 30, and 23% are under 21. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job or favour asks you to receive and transfer money through your personal account, it is money laundering. Report it to Action Fraud on 0300 123 2040."
    ]
};

s21.nodes[4] = {
    text: "They say their new card is taking weeks and they need the money now. They get frustrated and say \"I'd do it for you.\" You feel guilty for questioning a friend.",
    options: [
        "Give in and let them use your account",
        "Say no and suggest they contact their bank to speed up the new card"
    ],
    next: [5, -1],
    money: [0, 200],
    end_text: [
        "",
        "They are annoyed but find another solution. You later learn that the \"games console money\" was not what they said it was. Another friend who helped them has had their account frozen. Safe outcome. Win £200."
    ]
};

s21.nodes[5] = {
    text: "The £800 arrives. You withdraw it and hand it over. Your bank flags the transaction within a week.",
    options: [
        "Your bank freezes your account",
        "Your friend offers to explain the situation to your bank"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "You learn the £800 came from a scam victim. Regardless of your intention, your account was used to launder stolen money. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Around 65% of money mules are under 30, and 23% are under 21. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job or favour asks you to receive and transfer money through your personal account, it is money laundering. Report it to Action Fraud on 0300 123 2040.",
        "They never follow through. When the investigation starts, your friend distances themselves. You are left dealing with the consequences alone. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Around 65% of money mules are under 30, and 23% are under 21. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job or favour asks you to receive and transfer money through your personal account, it is money laundering. Report it to Action Fraud on 0300 123 2040."
    ]
};

s21.nodes[7] = {
    text: "You search and find multiple warnings from the National Crime Agency, Cifas, and UK Finance. They all say the same thing: allowing your account to be used to receive and move money for someone else is money laundering, even if you did not know the money was stolen.",
    options: [
        "Show your friend what you found and tell them you cannot help",
        "Decide the risk is not worth it and say no without explaining why"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "They say the websites are \"over the top\" and that \"no one actually gets caught.\" You hold firm. Weeks later, their account is frozen. Safe outcome. Win £200.",
        "Your friend is disappointed but moves on. You protect yourself without damaging the friendship. Safe outcome. Win £200."
    ]
};

s21.nodes[9] = {
    text: "They explain that even if your friend's story is true, letting someone else's money pass through your account puts you at risk. If the money turns out to be stolen, it is your account and your name on the investigation.",
    options: [
        "Take their advice and say no to your friend",
        "Suggest your friend goes into their bank branch to speed up their new card"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "You avoid getting involved. Your account stays clean. Safe outcome. Win £200.",
        "Your friend does this and the issue is resolved without involving your account. Safe outcome with practical solution. Win £200."
    ]
};

array_push(scenarios, s21);

// Scenario 22 - Money Mule: The Sixth Former
var s22 = {};
s22.age_group = "13-17";
s22.red_herring = false;
s22.nodes = [];

s22.nodes[0] = {
    text: "An older student at your school approaches you outside the gates. They say they know a way to make quick money and offer you £100 if you let them use your bank account for one day. They say their own account is \"maxed out\" and they just need yours to receive a payment from a buyer.",
    options: [
        "Agree and give them your bank details",
        "Say no because it sounds risky",
        "Report the approach to the school or police"
    ],
    next: [1, 5, -1],
    money: [0, 0, 200],
    end_text: ["", "", "The police take it seriously. Money mule recruitment at schools is a growing problem. They visit the school to educate students and investigate the recruiter. Safe outcome. Win £200."]
};

s22.nodes[1] = {
    text: "£2,500 is deposited into your account. The older student tells you to withdraw £2,400 in cash and keep £100. You go to an ATM and withdraw it.",
    options: [
        "Hand over the £2,400 cash",
        "Feel uneasy after the withdrawal and do not hand over the cash"
    ],
    next: [2, 3],
    money: [0, 0],
    end_text: ["", ""]
};

s22.nodes[2] = {
    text: "The older student takes the money and leaves. Three days later, your bank freezes your account. The £2,500 came from a fraud victim. You are now under investigation for money laundering.",
    options: [
        "Try to explain that you did not know where the money came from",
        "Cooperate fully with the investigation"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "Your bank closes your account regardless. You are placed on a fraud register which affects your ability to open accounts, get phone contracts, or apply for student finance in the future. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Around 65% of money mules are under 30, and 23% are under 21. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job or favour asks you to receive and transfer money through your personal account, it is money laundering. Report it to Action Fraud on 0300 123 2040.",
        "Your cooperation is noted but the consequences still apply. Your account is closed and you are flagged on the Cifas database. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Around 65% of money mules are under 30, and 23% are under 21. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job or favour asks you to receive and transfer money through your personal account, it is money laundering. Report it to Action Fraud on 0300 123 2040."
    ]
};

s22.nodes[3] = {
    text: "The older student becomes aggressive and threatening. You feel scared.",
    options: [
        "Give in to the pressure and hand over the money",
        "Tell a parent or teacher immediately"
    ],
    next: [-1, -1],
    money: [-500, -150],
    end_text: [
        "Your account is frozen, investigation opened, and the older student disappears. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Around 65% of money mules are under 30, and 23% are under 21. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job or favour asks you to receive and transfer money through your personal account, it is money laundering. Report it to Action Fraud on 0300 123 2040.",
        "They help you contact your bank and the police. The money is returned. The older student is identified as part of a wider mule recruitment network targeting schools. Limited consequences due to reporting. Lose £150."
    ]
};

s22.nodes[5] = {
    text: "They call you paranoid and say you are missing out on easy money. They move on to someone else.",
    options: [
        "Feel tempted when they show you £100 in cash",
        "Tell a teacher or parent what happened"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "The money looks real. But £100 is not worth a criminal record that follows you for years. You stayed firm. Win £200.",
        "The school investigates. The older student was recruiting multiple younger students. Your report protects others. Win £200."
    ]
};

array_push(scenarios, s22);

// =====================================================
// AGE GROUP: 13-17 (Online Fraud)
// =====================================================

// Scenario 23 - Online Fraud: The Giveaway
var s23 = {};
s23.age_group = "13-17";
s23.red_herring = false;
s23.nodes = [];

s23.nodes[0] = {
    text: "You see a post on TikTok from an account that looks like a major brand. It says: \"We're giving away 50 PlayStation 5 consoles! Like this video, follow us, and click the link in bio to enter.\" The link takes you to a page asking for your name, email, phone number, and card details \"for delivery charges of £1.99.\"",
    options: [
        "Enter your details and pay the £1.99",
        "Check whether the account is the brand's official page",
        "Be suspicious because real giveaways never ask for card details"
    ],
    next: [1, 4, -1],
    money: [0, 0, 200],
    end_text: ["", "", "You recognise that legitimate giveaways do not require payment. A \"delivery charge\" is a common trick to capture card details. Safe outcome. Win £200."]
};

s23.nodes[1] = {
    text: "You receive a confirmation email saying you are entered. No PS5 arrives. Two weeks later, you notice charges on your card from companies you do not recognise.",
    options: [
        "Check your bank statement and find multiple small charges",
        "Realise no PS5 is coming and worry about your card details"
    ],
    next: [2, -1],
    money: [0, -150],
    end_text: ["", "You tell a parent. They help you cancel the card before any further charges go through. Quick action. Lose £150."]
};

s23.nodes[2] = {
    text: "There are six transactions between £5 and £15 from different companies. Your card details were sold to multiple fraudsters.",
    options: [
        "Tell a parent and contact the bank immediately",
        "Ignore the small charges because they seem minor"
    ],
    next: [-1, -1],
    money: [-150, -250],
    end_text: [
        "Your bank cancels the card and reverses some of the charges. The total loss is limited because you acted quickly. Lose £150.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases. Remote purchase fraud rose by 22% to nearly 2.6 million cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully and look for reviews on independent sites.",
        "The charges continue and increase in size. By the time you act, over £200 has been taken. Lose £250.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases. Remote purchase fraud rose by 22% to nearly 2.6 million cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully and look for reviews on independent sites."
    ]
};

s23.nodes[4] = {
    text: "The real brand has a verified blue tick and millions of followers. This account has no tick, 12,000 followers, and was created two weeks ago. The giveaway is fake.",
    options: [
        "Report the account and move on",
        "Comment warning others it is fake"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "TikTok removes the account. No money or data was lost. Safe outcome. Win £200.",
        "Some people thank you. The scam account blocks you but your warning may have saved others. Win £200."
    ]
};

array_push(scenarios, s23);

// Scenario 24 - Online Fraud: The Cheap V-Bucks
var s24 = {};
s24.age_group = "13-17";
s24.red_herring = false;
s24.nodes = [];

s24.nodes[0] = {
    text: "Someone in an online gaming lobby sends you a message saying they can get you 10,000 V-Bucks for £5 instead of the usual £63.99. They send a link to a website that looks like the Fortnite store. It asks you to log in with your Epic Games username and password, then enter payment details for the £5 charge.",
    options: [
        "Log in and pay the £5",
        "Check the website URL before entering anything",
        "Know that V-Bucks can only be bought through official stores"
    ],
    next: [1, 4, -1],
    money: [0, 0, 200],
    end_text: ["", "", "You ignore the message because you know V-Bucks are only sold through official stores. Safe outcome. Win £200."]
};

s24.nodes[1] = {
    text: "No V-Bucks appear. Within hours, you are locked out of your Epic Games account. The scammer has changed your password and email. They begin selling your account's skins and items.",
    options: [
        "Try to recover your account through Epic Games support",
        "Notice you are locked out and panic"
    ],
    next: [2, -1],
    money: [0, -150],
    end_text: ["", "You try the password multiple times. The scammer has already changed it. You need to act through official support. Lose £150.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully."]
};

s24.nodes[2] = {
    text: "Recovery takes several weeks. By the time you get your account back, your purchased items have been transferred or sold. Your card details from the fake site are also compromised.",
    options: [
        "Tell a parent and contact the bank about the card details",
        "Do not tell anyone because you feel embarrassed"
    ],
    next: [-1, -1],
    money: [-150, -250],
    end_text: [
        "Your bank cancels the card. The £5 was taken but no further charges go through. Your gaming account is eventually recovered but items are gone. Lose £150.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully.",
        "Your card is used for purchases you did not make. Your gaming account is sold. The longer you wait, the worse the damage. Lose £250.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully."
    ]
};

s24.nodes[4] = {
    text: "The URL says epic-vbucks-free.com instead of epicgames.com. You close the page and do not enter your details.",
    options: [
        "Report the player and the link to Epic Games",
        "Block the player and move on"
    ],
    next: [-1, -1],
    money: [200, 150],
    end_text: [
        "The player is banned. The phishing site is flagged. You kept your account and your money. Safe outcome. Win £200.",
        "You are safe but the scammer continues targeting others. Reporting helps protect the whole community. Win £150."
    ]
};

array_push(scenarios, s24);

// Scenario 25 - Online Fraud: The QR Code
var s25 = {};
s25.age_group = "13-17";
s25.red_herring = false;
s25.nodes = [];

s25.nodes[0] = {
    text: "You see a poster at a bus stop advertising a competition to win concert tickets. It says \"Scan to enter - takes 30 seconds!\" with a large QR code. You scan it and it takes you to a page asking for your name, email, phone number, and date of birth.",
    options: [
        "Enter your details to enter the competition",
        "Check the URL the QR code takes you to before entering anything",
        "Search for the competition online instead of scanning the code"
    ],
    next: [1, -1, -1],
    money: [0, 200, 200],
    end_text: [
        "",
        "The URL does not match any official concert promoter or ticketing site. It is a random string of characters. You close the page. Safe outcome. Win £200.",
        "You cannot find any mention of the competition on the artist's official page or any ticketing website. The poster was placed by scammers to harvest personal data. Safe outcome. Win £200."
    ]
};

s25.nodes[1] = {
    text: "You submit the form. No confirmation email arrives. Over the next week, you start receiving spam texts and calls. Your details have been harvested and sold.",
    options: [
        "Click a prize link in one of the texts and enter card details",
        "Recognise the follow-up texts as scams and block them",
        "Tell a parent about the spam"
    ],
    next: [-1, -1, -1],
    money: [-250, -150, -150],
    end_text: [
        "Your card is charged for subscriptions and purchases you did not make. The QR code was the entry point for a chain of fraud. Lose £250.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully.",
        "You report the numbers to 7726. Your personal data is still out there but you prevent further damage. Lose £150.",
        "They help you report the QR code poster to the local council and block the spam numbers. Lose £150."
    ]
};

array_push(scenarios, s25);

// Scenario 26 - Online Fraud: The Free Wi-Fi
var s26 = {};
s26.age_group = "13-17";
s26.red_herring = false;
s26.nodes = [];

s26.nodes[0] = {
    text: "You are in a café with friends and want to connect to the Wi-Fi. Your phone shows two networks: \"Café_Guest\" (password required, ask at counter) and \"Café_Free_WiFi\" (open, no password). You connect to the open one because it is easier.",
    options: [
        "Connect and start browsing",
        "Ask at the counter which network is the real one",
        "Use your mobile data instead of connecting to any Wi-Fi"
    ],
    next: [1, -1, -1],
    money: [0, 200, 200],
    end_text: [
        "",
        "The staff confirm \"Café_Guest\" is theirs and give you the password. They say they have had problems with fake networks appearing before. Safe outcome. Win £200.",
        "Your mobile data connection is encrypted and secure. You avoid the risk of fake networks entirely. Safe outcome. Win £200."
    ]
};

s26.nodes[1] = {
    text: "The network works normally. You check social media, log into your email, and open your banking app to check your balance. Later that evening, you notice a login attempt on your email from an unknown location.",
    options: [
        "Change your passwords immediately from a secure network",
        "Ignore the notification",
        "Notice nothing because the attacker is collecting data silently"
    ],
    next: [-1, -1, -1],
    money: [-150, -250, -250],
    end_text: [
        "You change your email and banking passwords from home Wi-Fi. You enable two-factor authentication. The attacker is locked out before doing damage. Near miss. Lose £150.",
        "The attacker gains access to your email and uses it to reset passwords on other accounts. Your social media is taken over and used to message your contacts. Lose £250.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully.",
        "Days later, unauthorised purchases appear on your card. The attacker captured your banking app session data through the fake network. Lose £250.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully."
    ]
};

array_push(scenarios, s26);

// Scenario 27 - Online Fraud: The New Friend
var s27 = {};
s27.age_group = "13-17";
s27.red_herring = false;
s27.nodes = [];

s27.nodes[0] = {
    text: "You receive a follow request on Instagram from someone who says they go to a nearby school. After a few weeks of chatting, they ask for your home address to post you a \"surprise.\"",
    options: [
        "Give them your address because the friendship feels genuine",
        "Decline to give your address and suggest meeting at school instead",
        "Ask mutual friends if they actually know this person"
    ],
    next: [1, 4, -1],
    money: [0, 0, 200],
    end_text: ["", "", "None of your friends have met them in person. The \"mutual followers\" accepted the follow request without knowing them either. The profile is fake. Safe outcome. Win £200."]
};

s27.nodes[1] = {
    text: "Nothing arrives. A week later, you notice your address is being used in conversations you were not part of. You start receiving post addressed to you from companies you have never heard of. Someone has used your name and address to open accounts.",
    options: [
        "Tell a parent immediately",
        "Ignore the post and hope it stops",
        "Realise you should not have shared your address"
    ],
    next: [-1, -1, -1],
    money: [-150, -250, -150],
    end_text: [
        "They contact Cifas to put a protective registration on your identity. The damage is limited because you acted quickly. Lose £150.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully.",
        "It does not stop. More accounts are opened. Your name and address are now on fraudulent records. Lose £250.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully.",
        "You block the account and tell a parent. They help you report it to the police and the platform. Quick action. Lose £150."
    ]
};

s27.nodes[4] = {
    text: "They make excuses for why they cannot meet in person. Their stories start contradicting each other. You realise they may not be who they say they are.",
    options: [
        "Block them and report the profile",
        "Keep chatting because you are curious"
    ],
    next: [-1, -1],
    money: [200, -150],
    end_text: [
        "The platform removes the account. No personal information was shared. Safe outcome. Win £200.",
        "They eventually ask for other personal details. Each piece of information makes identity fraud easier. Lose £150.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully."
    ]
};

array_push(scenarios, s27);

// =====================================================
// AGE GROUP: 13-17 (Red Herrings)
// =====================================================

// Scenario 28 - Red Herring: The Bank Notification
var s28 = {};
s28.age_group = "13-17";
s28.red_herring = true;
s28.nodes = [];

s28.nodes[0] = {
    text: "You used your debit card to buy a £25 game online. A few minutes later, you receive a text from your bank saying: \"A payment of £25.00 was made to [Game Store] on your card ending 4821. If this was you, no action needed. If not, call us on [number].\"",
    options: [
        "Panic and call the number thinking your card has been stolen",
        "Recognise the purchase and ignore the text",
        "Delete the text because you assume all bank texts are scams",
        "Check your banking app to confirm the transaction matches"
    ],
    next: [-1, -1, -1, -1],
    money: [0, 200, -150, 200],
    end_text: [
        "The bank confirms the transaction matches your purchase. Everything is fine. The text was a standard payment notification. You now know what a real bank alert looks like. This was a genuine notification. Win nothing, lose nothing.",
        "The £25 matches what you just spent. The text is a genuine transaction alert from your bank. No action is needed. Correct response. Win £200.",
        "This was a real alert. In the future, a genuine fraud alert could be missed if you ignore all bank texts. Learning to tell real from fake is the key skill. Lose £150 for not learning to identify it.",
        "The £25 payment appears in your transactions. The text matches. You now have confidence that this type of notification is real. Smart verification. Win £200."
    ]
};

array_push(scenarios, s28);

// Scenario 29 - Red Herring: The School Password
var s29 = {};
s29.age_group = "13-17";
s29.red_herring = true;
s29.nodes = [];

s29.nodes[0] = {
    text: "You receive an email from your school's IT department saying all students need to reset their school account passwords by Friday as part of a routine security update. The email comes from the school's official domain and links to the school's real login page.",
    options: [
        "Ignore it because it looks like a phishing email",
        "Check the sender address and the link before clicking",
        "Ask your teacher or IT support if the email is real",
        "Go directly to the school portal by typing the address yourself"
    ],
    next: [-1, -1, -1, -1],
    money: [-150, 200, 200, 200],
    end_text: [
        "Your account is locked on Friday because you did not reset your password. You cannot access your coursework, email, or online lessons until IT manually resets it for you. This was genuine. Lose £150 for the inconvenience.",
        "The sender matches your school's official email domain. The link goes to the real school login portal. You reset your password safely. Careful and correct. Win £200.",
        "They confirm it is genuine and part of a scheduled security update. You reset your password. Verified. Win £200.",
        "You find the password reset option on the portal. You reset it without clicking the email link, which is an extra-safe approach. Extra cautious. Win £200."
    ]
};

array_push(scenarios, s29);

// Scenario 30 - Red Herring: The Password Reset
var s30 = {};
s30.age_group = "13-17";
s30.red_herring = true;
s30.nodes = [];

s30.nodes[0] = {
    text: "You try to log into your email but your password does not work. You click \"Forgotten password\" and receive a password reset link to your recovery email address. The email comes from a no-reply address at your email provider's official domain.",
    options: [
        "Ignore the email because you think it might be phishing",
        "Click the reset link and create a new password",
        "Check the sender address and the URL before clicking",
        "Go directly to the email provider's website and request a new reset from there"
    ],
    next: [-1, -1, -1, -1],
    money: [-150, 200, 200, 200],
    end_text: [
        "You remain locked out of your email. Important messages go unread. You initiated this reset yourself - it is genuine. This was a real password reset you requested. Lose £150 for staying locked out.",
        "You reset your password using three random words. You regain access to your email. Because you initiated the reset yourself, the link was legitimate. Account recovered. Win £200.",
        "The sender matches your email provider's official domain. The URL in the button points to the correct website. You click through and reset your password securely. Careful and correct approach. Win £200.",
        "You receive a second reset email and use that link instead. Both were legitimate but using the one you just requested gives you extra confidence. You reset your password and enable two-factor authentication. Extra cautious and secure. Win £200."
    ]
};

array_push(scenarios, s30);

// =====================================================
// AGE GROUP: 18-25 (Additional)
// =====================================================

// Scenario 31 - Online Fraud: The Marketplace Deal
var s31 = {};
s31.age_group = "18-25";
s31.red_herring = false;
s31.nodes = [];

s31.nodes[0] = {
    text: "You find a second-hand MacBook on Facebook Marketplace listed for £480, well below the usual price. The seller has a profile with photos and friends. They say they are selling because they are moving abroad next week. They say the Marketplace payment system takes too long and ask you to transfer the money directly to their bank account instead.",
    options: [
        "Transfer £480 directly to their bank account",
        "Ask to meet in person to inspect and pay for the laptop",
        "Insist on paying through Facebook Marketplace's payment system"
    ],
    next: [1, 4, 6],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s31.nodes[1] = {
    text: "You send the money by bank transfer. The seller sends you a photo of a parcel with a tracking label. The tracking number does not work on any courier website.",
    options: [
        "Chase them for a working tracking number",
        "Offer to pay half now and half on delivery"
    ],
    next: [2, 3],
    money: [0, 0],
    end_text: ["", ""]
};

s31.nodes[2] = {
    text: "They say the courier system is \"updating\" and it will appear tomorrow. It never does. After three days, they stop replying. Their profile is deleted.",
    options: [
        "Contact your bank to report the fraud",
        "Accept the loss and move on without reporting"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "Your bank attempts a recall but the funds have been moved. They advise reporting to Action Fraud. Bank transfers offer almost no buyer protection. Lose £500.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully.",
        "Without a report, the seller continues scamming others with the same listing. Lose £500.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully."
    ]
};

s31.nodes[3] = {
    text: "They refuse and say they need the full amount to cover postage. The inflexibility is a red flag but the price is tempting.",
    options: [
        "Pay the full amount anyway",
        "Walk away because they will not compromise"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The laptop never arrives. The seller disappears. Lose £500.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully.",
        "You avoid the scam. A seller who refuses any compromise on payment is almost always fraudulent. Safe outcome. Win £200."
    ]
};

s31.nodes[4] = {
    text: "They say they have already moved and can only post it. They offer to send more photos and a video of the laptop working.",
    options: [
        "Accept the photos as proof and pay by bank transfer",
        "Decide that no meeting and no platform payment is too risky"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The photos were stolen from another listing. The laptop does not exist. Your money is gone. Lose £500.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully.",
        "You move on and find another listing from a seller willing to meet in person or use the platform's payment protection. Safe outcome. Win £200."
    ]
};

s31.nodes[6] = {
    text: "The seller says the fees are too high and that a bank transfer is easier for both of you. Legitimate sellers use platform payment systems because they protect both parties.",
    options: [
        "Agree to a bank transfer to save them the fees",
        "Refuse and only buy from sellers who accept platform payments"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The laptop never arrives. You have no buyer protection because the transaction was outside the platform. Lose £500.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024, with 3.31 million confirmed cases.\n\nWhat to do: Never enter card details on a site you have not verified. Check URLs carefully.",
        "You find the same model from a seller who accepts Marketplace payment protection. Safe outcome. Win £200."
    ]
};

array_push(scenarios, s31);

// Scenario 32 - Online Fraud: The Free Trial
var s32 = {};
s32.age_group = "18-25";
s32.red_herring = false;
s32.nodes = [];

s32.nodes[0] = {
    text: "You see an ad on Instagram for a skincare brand offering a \"free trial - just pay £2.99 shipping.\" You enter your card details for the £2.99 shipping charge. Three weeks after the product arrives, you notice a charge of £49.99 on your bank statement from a company name you do not recognise.",
    options: [
        "Ignore the charge and assume it is a mistake",
        "Notice the charge immediately and check what it is",
        "Read the terms and conditions before entering your card details"
    ],
    next: [1, 4, 6],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s32.nodes[1] = {
    text: "Another £49.99 is charged the following month. You have been enrolled in a recurring subscription that was hidden in the terms and conditions of the \"free trial.\"",
    options: [
        "Try to find the company to cancel",
        "Check your bank statement more carefully"
    ],
    next: [2, 3],
    money: [0, 0],
    end_text: ["", ""]
};

s32.nodes[2] = {
    text: "The website has no phone number. The only contact is an email address that auto-replies saying cancellations take \"7 to 10 working days.\" Meanwhile, another charge processes.",
    options: [
        "Wait the 7 to 10 days",
        "Contact your bank to block future payments"
    ],
    next: [-1, -1],
    money: [-250, -150],
    end_text: [
        "The cancellation never processes. A third charge appears. You have now lost £150 in subscriptions for a product you ordered once. Lose £250.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never enter card details on a site you have not verified.",
        "Your bank cancels the recurring payment authority. You lose the charges already taken but prevent further losses. Lose £150.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never enter card details on a site you have not verified."
    ]
};

s32.nodes[3] = {
    text: "You find the £49.99 matches the company behind the skincare trial. The terms and conditions, which you agreed to, included automatic enrolment into a monthly subscription after 14 days.",
    options: [
        "Contact your bank immediately to cancel the payment",
        "Try to cancel through the website first"
    ],
    next: [-1, -1],
    money: [-150, -150],
    end_text: [
        "Your bank blocks future payments. You dispute the charges and may recover some of the money. Limited loss. Lose £150.",
        "The cancellation process is deliberately difficult. Another charge goes through before it is resolved. Lose £150.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never enter card details on a site you have not verified."
    ]
};

s32.nodes[4] = {
    text: "You search the company name and find hundreds of complaints from people who signed up for \"free trials\" and were charged monthly without clear consent.",
    options: [
        "Contact your bank to block the payment and request a refund",
        "Report the company to Trading Standards and Action Fraud"
    ],
    next: [-1, -1],
    money: [-150, 200],
    end_text: [
        "Your bank cancels the recurring authority and opens a dispute. You recover the £49.99. Quick action. Lose £150.",
        "Your report joins many others. Trading Standards investigates companies that use hidden subscription traps. Safe outcome. Win £200."
    ]
};

s32.nodes[6] = {
    text: "Buried at the bottom in small grey text, you find a clause saying: \"By entering payment details, you agree to a monthly subscription of £49.99 after your 14-day trial period.\"",
    options: [
        "Close the website and do not enter your details",
        "Decide to sign up anyway and plan to cancel before 14 days"
    ],
    next: [-1, -1],
    money: [200, -150],
    end_text: [
        "You avoided a subscription trap. Safe outcome. Win £200.",
        "You forget to cancel. The £49.99 charge appears on day 15. Lose £150.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never enter card details on a site you have not verified."
    ]
};

array_push(scenarios, s32);

// Scenario 33 - Online Fraud: The Tax Refund
var s33 = {};
s33.age_group = "18-25";
s33.red_herring = false;
s33.nodes = [];

s33.nodes[0] = {
    text: "You receive a text message that says: \"HMRC: You are due a tax refund of £247.38. To claim, please verify your details at: hmrc-refund-claim.co.uk. This link expires in 24 hours.\" You started a part-time job six months ago and are not sure how tax works yet.",
    options: [
        "Click the link and enter your details",
        "Check the URL before clicking",
        "Log into your Government Gateway account directly to check",
        "Ask a parent or someone who has done a tax return before"
    ],
    next: [1, 4, -1, -1],
    money: [0, 0, 200, 200],
    end_text: [
        "",
        "",
        "You type gov.uk into your browser and sign in. There is no notification of a refund. The text was a phishing attempt. Safe outcome. Win £200.",
        "They immediately tell you HMRC never sends refund links by text. They show you how to check through Government Gateway. Safe outcome with guidance. Win £200."
    ]
};

s33.nodes[1] = {
    text: "The website looks like the HMRC portal. It asks for your name, date of birth, National Insurance number, and bank details. You enter everything.",
    options: [
        "You receive a confirmation saying the refund will arrive in 5 working days",
        "Start entering details but notice the URL is not gov.uk"
    ],
    next: [2, -1],
    money: [0, -150],
    end_text: ["", "The real HMRC website always ends in gov.uk. This site ends in .co.uk with extra words. You close the page before submitting. Near miss. Lose £150."]
};

s33.nodes[2] = {
    text: "No refund arrives. Instead, your bank details are used to set up direct debits you did not authorise. Your National Insurance number is used to apply for credit in your name.",
    options: [
        "Notice the unauthorised direct debits within a few days",
        "Do not check your account for weeks"
    ],
    next: [-1, -1],
    money: [-250, -500],
    end_text: [
        "You contact your bank and cancel them. You report the identity theft to Cifas and Action Fraud. The financial damage is limited but your personal data is compromised. Lose £250.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never enter card details on a site you have not verified.",
        "Multiple direct debits are processed. A credit card application is approved in your name. The damage to your finances and credit score is significant. Lose £500.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never enter card details on a site you have not verified."
    ]
};

s33.nodes[4] = {
    text: "The link says hmrc-refund-claim.co.uk. Real HMRC links always end in gov.uk. The domain is fake. You delete the message.",
    options: [
        "Forward the text to 7726 to report it",
        "Delete it but do not report it"
    ],
    next: [-1, -1],
    money: [200, 150],
    end_text: [
        "Your report helps phone networks block the number. Safe outcome. Win £200.",
        "You are safe but the number continues sending texts to others. Win £150."
    ]
};

array_push(scenarios, s33);

// Scenario 34 - Online Fraud: The Perfect Flat
var s34 = {};
s34.age_group = "18-25";
s34.red_herring = false;
s34.nodes = [];

s34.nodes[0] = {
    text: "You find a one-bedroom flat on SpareRoom for £650 per month in a popular area - well below the average. The landlord asks for a £650 deposit and first month's rent (£1,300 total) by bank transfer to \"secure the property.\" They say viewings can happen after payment because they are abroad.",
    options: [
        "Transfer the £1,300 to secure the flat",
        "Insist on viewing the property before paying anything",
        "Research the listing before responding"
    ],
    next: [1, 3, 5],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s34.nodes[1] = {
    text: "The landlord confirms receipt and says keys will be available next week. When the day arrives, they stop responding. The address either does not exist, belongs to someone else, or is already occupied.",
    options: [
        "Try to contact the landlord repeatedly",
        "Visit the address before the move-in date"
    ],
    next: [2, -1],
    money: [0, -500],
    end_text: ["", "The flat does not match the photos, is occupied by someone who has never heard of the listing, or does not exist at all. Lose £500.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never enter card details on a site you have not verified."]
};

s34.nodes[2] = {
    text: "Their phone is off. Their email bounces. The SpareRoom profile has been deleted. You have no way to reach them.",
    options: [
        "Report to your bank and Action Fraud",
        "Accept the loss without reporting"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "Your bank attempts a recall but the funds have been moved. They advise reporting to Action Fraud. The £1,300 is gone. Lose £500.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never enter card details on a site you have not verified.",
        "Without a report, the scammer creates new listings and targets more people. Lose £500.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never enter card details on a site you have not verified."
    ]
};

s34.nodes[3] = {
    text: "The landlord makes excuses - they are abroad, the current tenant is not available. A legitimate landlord will always arrange a viewing before taking money.",
    options: [
        "Recognise the excuses as red flags and move on",
        "Agree to pay a smaller \"holding deposit\" to reserve it until you can view"
    ],
    next: [-1, -1],
    money: [200, -250],
    end_text: [
        "You find another flat through a verified letting agent. Safe outcome. Win £200.",
        "You transfer £300. The viewing never happens. The £300 is gone and the landlord disappears. Lose £250.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never enter card details on a site you have not verified."
    ]
};

s34.nodes[5] = {
    text: "You do a reverse image search on the photos and find them on a different property listing in another city. The flat does not belong to this \"landlord.\" The price is too low for the area.",
    options: [
        "Report the listing to SpareRoom and move on",
        "Warn others in local Facebook groups about the fake listing"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "The listing is removed. Safe outcome. Win £200.",
        "Several people say they were also contacted by the same landlord. Your warning prevents others from paying. Win £200."
    ]
};

array_push(scenarios, s34);

// Scenario 35 - Online Fraud: The Pre-Approved Loan
var s35 = {};
s35.age_group = "18-25";
s35.red_herring = false;
s35.nodes = [];

s35.nodes[0] = {
    text: "You receive a text saying: \"Congratulations! You have been pre-approved for a personal loan of £5,000 at 2.9% APR. To complete your application, visit [link] or call us. Offer expires in 48 hours.\" You have been thinking about borrowing for a car.",
    options: [
        "Click the link and complete the application",
        "Check whether the lender is FCA authorised",
        "Be suspicious because you did not apply for a loan"
    ],
    next: [1, 4, -1],
    money: [0, 0, 200],
    end_text: ["", "", "Legitimate lenders do not send pre-approved offers by text to people who have not applied. You delete the message. Safe outcome. Win £200."]
};

s35.nodes[1] = {
    text: "The website asks for your full name, address, date of birth, employer, income, and bank details. You submit everything. They call the next day to say the loan is approved but requires a £150 \"processing fee\" before the funds can be released.",
    options: [
        "Pay the £150 processing fee",
        "Ask why a fee is needed before the loan is paid out"
    ],
    next: [2, 3],
    money: [0, 0],
    end_text: ["", ""]
};

s35.nodes[2] = {
    text: "No loan arrives. They call again asking for a further £200 \"insurance fee.\" Legitimate lenders never charge upfront fees.",
    options: [
        "Pay the insurance fee",
        "Refuse and realise it is a scam"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "A third fee follows. You have now lost £350 and have given your full personal and financial details to criminals. Lose £500.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never enter card details on a site you have not verified.",
        "You lose the £150 processing fee. Your personal details are still in the hands of criminals. You report to Action Fraud and register with Cifas. Lose £250.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never enter card details on a site you have not verified."
    ]
};

s35.nodes[3] = {
    text: "They say it covers \"admin and credit check costs.\" In reality, legitimate UK lenders are prohibited from charging fees before a loan is issued.",
    options: [
        "Recognise this as a red flag and disengage",
        "Pay anyway because you need the loan"
    ],
    next: [-1, -1],
    money: [-150, -250],
    end_text: [
        "You do not pay the fee. However, your personal details have already been submitted through the fake website. You register with Cifas. Lose £150.",
        "The loan never arrives. The fee is gone. Lose £250.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never enter card details on a site you have not verified."
    ]
};

s35.nodes[4] = {
    text: "You search the FCA register. The company is not listed. All legitimate UK lenders must be FCA authorised. The text was a scam.",
    options: [
        "Delete the text and report it to 7726",
        "Search for legitimate loan options through a comparison site"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "Your report helps networks block the number. Safe outcome. Win £200.",
        "You find a real loan at a competitive rate through an FCA-authorised lender with no upfront fees. Safe and practical outcome. Win £200."
    ]
};

array_push(scenarios, s35);

// Scenario 36 - Investment Fraud: The Celebrity Endorsement
var s36 = {};
s36.age_group = "18-25";
s36.red_herring = false;
s36.nodes = [];

s36.nodes[0] = {
    text: "You see a video on Facebook of a well-known financial expert apparently endorsing a new trading platform. They say \"I have been using this platform for three months and the returns have been incredible.\" A link below the video takes you to a sleek website where you can sign up with a minimum deposit of £250.",
    options: [
        "Sign up and deposit £250",
        "Search for the endorsement video on the celebrity's official channels",
        "Check the FCA register before depositing any money"
    ],
    next: [1, 3, -1],
    money: [0, 0, 200],
    end_text: ["", "", "The platform is not registered. It also appears on the FCA's warning list of unauthorised firms. Safe outcome. Win £200."]
};

s36.nodes[1] = {
    text: "The platform shows immediate profits on your dashboard. A \"personal account manager\" calls you to suggest increasing your deposit for \"premium access.\"",
    options: [
        "Increase your deposit to £1,000",
        "Try to withdraw your initial £250 plus profit before investing more"
    ],
    next: [2, -1],
    money: [0, -250],
    end_text: ["", "Withdrawal fails every time with a new reason. The profits are not real - they are numbers on a screen controlled by the scammers. Lose £250.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing."]
};

s36.nodes[2] = {
    text: "The dashboard shows profits of £1,600. When you try to withdraw, you are told there is a \"minimum holding period\" followed by a \"tax clearance fee.\"",
    options: [
        "Pay the tax clearance fee",
        "Refuse to pay any fees and demand your money back"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "Another fee follows. The platform stops responding. Your deposits and fees are unrecoverable. Lose £500.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing.",
        "The account manager becomes aggressive, then stops responding. The website goes offline. You lose your deposits but avoid the additional fees. Lose £250.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing."
    ]
};

s36.nodes[3] = {
    text: "The video does not appear on any of their verified accounts. You find a news article explaining that deepfake videos using this person's likeness have been used to promote scam platforms.",
    options: [
        "Report the video to Facebook and the FCA",
        "Ignore it and scroll past"
    ],
    next: [-1, -1],
    money: [200, 150],
    end_text: [
        "Facebook removes the ad. The FCA adds the platform to their warning list. Safe outcome. Win £200.",
        "You are safe but the video continues reaching others. Reporting helps get it removed. Win £150."
    ]
};

array_push(scenarios, s36);

// Scenario 37 - Money Mule: The Parcel Forwarding Job
var s37 = {};
s37.age_group = "18-25";
s37.red_herring = false;
s37.nodes = [];

s37.nodes[0] = {
    text: "You see an ad on Instagram for a \"Logistics Coordinator\" role paying £400 per week for 5 to 10 hours of work. The job involves receiving parcels at your address and forwarding them to international addresses. The company \"GlobalLink Logistics\" has a professional-looking website.",
    options: [
        "Accept the job and start receiving parcels",
        "Research the company before accepting",
        "Ask why a logistics company needs to use residential addresses"
    ],
    next: [1, 4, 6],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s37.nodes[1] = {
    text: "Parcels begin arriving. They contain electronics - phones, tablets, and laptops, all in sealed retail packaging. You are given shipping labels and told to forward them to addresses in Eastern Europe and West Africa. Your first weekly payment of £400 arrives.",
    options: [
        "Continue forwarding parcels because the pay is good",
        "Start to feel uneasy when you notice the parcels contain expensive electronics"
    ],
    next: [2, 3],
    money: [0, 0],
    end_text: ["", ""]
};

s37.nodes[2] = {
    text: "After three weeks, the police knock on your door. The items you have been forwarding were purchased using stolen credit card details. You have been receiving and redistributing goods bought with fraud victims' money.",
    options: [
        "Cooperate with the police investigation",
        "Try to claim you were just a courier and did not know"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "You explain what happened. The police understand you may not have known, but handling stolen goods is a criminal offence. You are interviewed under caution. Your bank account is frozen. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job asks you to receive and transfer goods or money, it may be money laundering. Report it to Action Fraud on 0300 123 2040.",
        "The police point out that the parcels were addressed to you personally, forwarded from your home, and you were paid for doing it. Ignorance is not a defence. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour.\n\nWhat to do: If a job asks you to receive and transfer goods or money, report it to Action Fraud on 0300 123 2040."
    ]
};

s37.nodes[3] = {
    text: "You wonder why a legitimate logistics company would route high-value electronics through a residential address rather than a warehouse. You open one of the parcels and find a brand new iPhone still in Apple packaging.",
    options: [
        "Stop forwarding and contact the company for answers",
        "Continue forwarding because you need the income"
    ],
    next: [-1, -1],
    money: [-150, -500],
    end_text: [
        "The company email stops responding. The website goes offline within a week. You contact the police and explain. They appreciate your cooperation but your address is still flagged. Lose £150.",
        "More parcels arrive. The police eventually trace the stolen goods to your address. You are arrested and your home is searched. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour. Money laundering carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job asks you to receive and transfer goods or money, report it to Action Fraud on 0300 123 2040."
    ]
};

s37.nodes[4] = {
    text: "You search \"GlobalLink Logistics\" on Companies House and find no registered company with that name. The website domain was registered six weeks ago. You search the job description online and find identical wording on scam warning forums.",
    options: [
        "Decline the offer and report the ad",
        "Ignore the warnings because you need the money"
    ],
    next: [-1, -1],
    money: [200, -500],
    end_text: [
        "You report the ad to Instagram. The account is removed. You have avoided becoming part of a criminal supply chain. Safe outcome. Win £200.",
        "You accept the job. The parcels arrive. The outcome is the same - police trace stolen goods to your address. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour.\n\nWhat to do: If a job asks you to receive and transfer goods or money, report it to Action Fraud on 0300 123 2040."
    ]
};

s37.nodes[6] = {
    text: "They say it is a \"distributed network model\" used by modern e-commerce companies to reduce warehouse costs. The explanation sounds professional but does not make practical sense.",
    options: [
        "Trust the explanation and accept",
        "Decide it does not add up and decline"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The parcels arrive and the outcome is the same - police investigation, criminal record, frozen bank account. Lose £500.\n\nNOTE: In 2023, an estimated 37,000 UK bank accounts showed money mule behaviour.\n\nWhat to do: If a job asks you to receive and transfer goods or money, report it to Action Fraud on 0300 123 2040.",
        "You decline and report the ad. Safe outcome. Win £200."
    ]
};

array_push(scenarios, s37);

// =====================================================
// AGE GROUP: 18-25 (Red Herrings)
// =====================================================

// Scenario 38 - Red Herring: The HMRC Repayment
var s38 = {};
s38.age_group = "18-25";
s38.red_herring = true;
s38.nodes = [];

s38.nodes[0] = {
    text: "You receive a letter through the post from HMRC. It says you have overpaid tax in the previous financial year and are owed a repayment of £384.20. The letter includes your National Insurance number, a reference code, and says the repayment will be sent to your bank account on file. It asks you to log into your Government Gateway account to confirm your bank details are correct.",
    options: [
        "Ignore the letter because you assume it is a scam",
        "Log into your Government Gateway account directly to check",
        "Call HMRC on their official number to verify the letter",
        "Search online for the reference code or letter format to check if it is real"
    ],
    next: [-1, -1, -1, -1],
    money: [-150, 200, 200, 200],
    end_text: [
        "You throw the letter away. The repayment deadline passes. You miss out on £384.20 that was genuinely owed to you. This was a legitimate repayment. Lose £150 for missing out.",
        "You type gov.uk into your browser, navigate to your tax account, and find a notification confirming the overpayment. The repayment is processed within 10 working days. Legitimate repayment received safely. Win £200.",
        "After waiting on hold, an HMRC advisor confirms the repayment is genuine. You confirm your bank details and the payment is processed. Legitimate repayment confirmed. Win £200.",
        "You find the letter format matches genuine HMRC correspondence. You log into Government Gateway to verify and the repayment is confirmed. Safe verification. Win £200."
    ]
};

array_push(scenarios, s38);

// Scenario 39 - Red Herring: The Tuition Payment
var s39 = {};
s39.age_group = "18-25";
s39.red_herring = true;
s39.nodes = [];

s39.nodes[0] = {
    text: "You receive an email from your university's finance department reminding you that your tuition fee instalment of £3,000 is due in two weeks. The email comes from the university's official domain, includes your student number, and links to the university's payment portal. You were expecting this email.",
    options: [
        "Ignore it because you think it might be phishing",
        "Log into the university portal directly by typing the address yourself",
        "Check the sender's email address and the link before clicking",
        "Contact the finance office to confirm before paying"
    ],
    next: [-1, -1, -1, -1],
    money: [-150, 200, 200, 200],
    end_text: [
        "The payment deadline passes. You receive a late payment notice with a £50 penalty. The email was genuine. This was real. Lose £150 for missing the deadline.",
        "You find the same payment reminder on your account. You pay through the secure portal. Everything matches. Safe and correct. Win £200.",
        "The sender matches the university's official domain. The link points to the real payment portal. You pay on time. Careful verification. Win £200.",
        "They confirm the email is genuine and the instalment is due. You pay through the portal. Verified. Win £200."
    ]
};

array_push(scenarios, s39);

// Scenario 40 - Red Herring: The Customs Fee
var s40 = {};
s40.age_group = "18-25";
s40.red_herring = true;
s40.nodes = [];

s40.nodes[0] = {
    text: "You ordered a handmade gift from a seller in Japan three weeks ago. A card is left by Royal Mail saying a parcel is being held at your local sorting office because customs charges of £18.40 are owed. The card includes a reference number and says you can pay online at royalmail.com/pay or at the sorting office in person.",
    options: [
        "Assume it is a scam and ignore it",
        "Go to the Royal Mail website directly and pay the fee",
        "Visit the sorting office in person to pay and collect",
        "Call Royal Mail to verify the card is genuine before paying"
    ],
    next: [-1, -1, -1, -1],
    money: [-150, 200, 200, 200],
    end_text: [
        "The parcel is returned to the sender after 18 days. You lose the gift and the seller charges you again for reshipping. Since Brexit, customs charges on parcels from outside the UK are common and legitimate. This was a real customs fee. Lose £150 for missing the parcel.",
        "You type royalmail.com into your browser, enter the reference number from the card, and pay the £18.40. You collect the parcel the next day. Legitimate fee paid safely. Win £200.",
        "You pay the customs charge at the counter and collect the parcel. The staff confirm this is a standard process for international deliveries. Parcel collected safely. Win £200.",
        "They confirm the reference number matches a parcel from Japan being held for customs charges. You pay over the phone and arrange redelivery. Verified and resolved. Win £200."
    ]
};

array_push(scenarios, s40);

// =====================================================
// AGE GROUP: 26-35 (Additional)
// =====================================================

// Scenario 41 - Abuse of Position: The Community Collection
var s41 = {};
s41.age_group = "26-35";
s41.red_herring = false;
s41.nodes = [];

s41.nodes[0] = {
    text: "A respected leader in your local community approaches you privately. They say they are organising a fundraiser for a family who are struggling financially. They ask you to donate £200 directly to their personal bank account. They ask you not to mention it publicly because the family wants to keep it private.",
    options: [
        "Transfer £200 to their personal account because you trust them",
        "Ask why donations are going to a personal account instead of a community fund",
        "Offer to donate directly to the family yourself",
        "Speak to another community member about the request before doing anything"
    ],
    next: [1, 4, 6, 8],
    money: [0, 0, 0, 0],
    end_text: ["", "", "", ""]
};

s41.nodes[1] = {
    text: "You make the payment. A few weeks later, you mention the fundraiser to another community member. They have never heard of it.",
    options: [
        "Ask the leader directly about the fundraiser",
        "Let it go because you do not want to cause trouble"
    ],
    next: [2, -1],
    money: [0, -250],
    end_text: ["", "The leader approaches you again two months later with a similar story about a different family. Ongoing exploitation. Lose £250.\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006.\n\nWhat to do: Report concerns to Action Fraud on 0300 123 2040."]
};

s41.nodes[2] = {
    text: "They become evasive and say the situation \"resolved itself.\" They cannot provide any evidence that the money reached the family.",
    options: [
        "Ask for the money back",
        "Report the situation to the police"
    ],
    next: [-1, -1],
    money: [-250, -250],
    end_text: [
        "They refuse and accuse you of being suspicious. Other community members later come forward saying they were also asked for money. None of it reached any family. Lose £250.\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006.\n\nWhat to do: Report concerns to Action Fraud on 0300 123 2040.",
        "The police investigate. Multiple people in the community were approached. The leader was using their position to collect money under false pretences. Lose £250.\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006.\n\nWhat to do: Report concerns to Action Fraud on 0300 123 2040."
    ]
};

s41.nodes[4] = {
    text: "They say setting up a proper fund would take too long and the family needs help now. They assure you they will provide receipts later.",
    options: [
        "Accept the explanation and donate",
        "Suggest setting up a transparent GoFundMe or community account instead"
    ],
    next: [-1, -1],
    money: [-250, 200],
    end_text: [
        "The receipts never materialise. The money was never passed on. Lose £250.\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006.\n\nWhat to do: Report concerns to Action Fraud on 0300 123 2040.",
        "They resist the idea, saying the family wants privacy. Their resistance is a red flag. Safe outcome. Win £200."
    ]
};

s41.nodes[6] = {
    text: "The leader says the family \"does not want direct contact\" and that all donations should go through them. They cannot provide the family's name or any way to verify the situation.",
    options: [
        "Recognise this as a red flag and decline to donate",
        "Donate anyway because you feel socially pressured"
    ],
    next: [-1, -1],
    money: [200, -250],
    end_text: [
        "You do not lose any money. You mention the approach to other community members and discover others were also asked. Safe outcome. Win £200.",
        "The money goes to the leader's personal account. There was no family in need. Lose £250.\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006.\n\nWhat to do: Report concerns to Action Fraud on 0300 123 2040."
    ]
};

s41.nodes[8] = {
    text: "They say they were also approached privately. Neither of you can verify the family or the fundraiser. Together you raise concerns with the wider group.",
    options: [
        "The community investigates and discovers the fundraiser was fabricated",
        "The community decides not to act to avoid embarrassment"
    ],
    next: [-1, -1],
    money: [200, -250],
    end_text: [
        "The leader is confronted and removed from their position. No more money is lost. Community protected. Win £200.",
        "The leader continues to exploit their position. Silence enables further abuse. Lose £250.\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006.\n\nWhat to do: Report concerns to Action Fraud on 0300 123 2040."
    ]
};

array_push(scenarios, s41);

// Scenario 42 - Online Fraud: The Parking Fine
var s42 = {};
s42.age_group = "26-35";
s42.red_herring = false;
s42.nodes = [];

s42.nodes[0] = {
    text: "You return to your car and find what looks like an official parking penalty notice under your windscreen wiper. It has a council logo, a fine amount of £70, and a QR code that says \"Scan to pay within 14 days for a reduced rate of £35.\"",
    options: [
        "Scan the QR code and pay the £35",
        "Check the council's official website to verify the fine",
        "Pay through the council's official website instead of scanning the QR code"
    ],
    next: [1, 3, -1],
    money: [0, 0, 200],
    end_text: ["", "", "The fine does not appear on the council's system. You realise the notice was fake. Safe outcome. Win £200."]
};

s42.nodes[1] = {
    text: "The QR code takes you to a page that looks like a council payment portal. You enter your card details and pay £35. Two days later, you notice additional charges on your card from unfamiliar sources.",
    options: [
        "Contact your bank when you notice the extra charges",
        "Do not check your statement for several days"
    ],
    next: [-1, -1],
    money: [-150, -250],
    end_text: [
        "Your bank cancels the card and reverses some of the charges. Partial loss. Lose £150.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never pay from QR codes on physical notices. Always use the official website directly.",
        "Multiple fraudulent transactions are processed. Financial loss. Lose £250.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Never pay from QR codes on physical notices. Always use the official website directly."
    ]
};

s42.nodes[3] = {
    text: "You go to the council's real website and search for the penalty reference number. It does not exist. The notice was fake.",
    options: [
        "Report the fake notice to the council and police",
        "Throw the notice away and move on"
    ],
    next: [-1, -1],
    money: [200, 150],
    end_text: [
        "The council issues a warning to residents. No money was lost. Safe outcome. Win £200.",
        "You are safe but other drivers may fall for the same notice. Win £150."
    ]
};

array_push(scenarios, s42);

// Scenario 43 - Online Fraud: The Premium Membership
var s43 = {};
s43.age_group = "26-35";
s43.red_herring = false;
s43.nodes = [];

s43.nodes[0] = {
    text: "You sign up for a \"7-day free trial\" of a recipe planning app advertised on Facebook. The sign-up page asks for your card details to \"verify your account.\" A week later, you notice a charge of £59.99 labelled as \"Premium Annual Membership.\" You never agreed to an annual plan.",
    options: [
        "Assume it is a mistake and try to find a way to cancel",
        "Check your bank statement immediately when the charge appears",
        "Read the terms and conditions before signing up"
    ],
    next: [1, 3, -1],
    money: [0, 0, 200],
    end_text: ["", "", "Buried in paragraph 14, you find the free trial converts to a £59.99 annual plan after 7 days unless cancelled. You decide not to sign up. Safe outcome. Win £200."]
};

s43.nodes[1] = {
    text: "The app has no phone number. The only contact is a chatbot that loops you through FAQs without offering cancellation.",
    options: [
        "Give up trying to cancel through the app",
        "Contact your bank to dispute the charge and block future payments"
    ],
    next: [-1, -1],
    money: [-150, -150],
    end_text: [
        "The £59.99 stands. Next year it will auto-renew. Lose £150.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Always contact your bank to block unwanted recurring charges.",
        "Your bank opens a dispute and blocks the merchant. You may recover the £59.99. Charge disputed. Lose £150."
    ]
};

s43.nodes[3] = {
    text: "You spot it within 24 hours and contact your bank.",
    options: [
        "Block the merchant and dispute the charge",
        "Try to cancel through the app first"
    ],
    next: [-1, -1],
    money: [-150, -150],
    end_text: [
        "They block the merchant and dispute the charge. Quick action. Lose £150.",
        "The cancellation process is deliberately difficult. Another charge goes through. Lose £150.\n\nNOTE: UK fraud losses totalled £1.17 billion in 2024.\n\nWhat to do: Always contact your bank to block unwanted recurring charges."
    ]
};

array_push(scenarios, s43);

// Scenario 44 - Payment Diversion: The Emergency Call
var s44 = {};
s44.age_group = "26-35";
s44.red_herring = false;
s44.nodes = [];

s44.nodes[0] = {
    text: "You receive a phone call from what sounds exactly like your sister. She is crying and says she has been in a car accident abroad and needs £1,500 transferred immediately to cover hospital costs. She gives you bank details and begs you not to tell your parents. The voice, tone, and speech patterns sound identical to your sister.",
    options: [
        "Transfer the £1,500 immediately because you believe it is her",
        "Tell them you will call back in two minutes",
        "Ask them a personal question only your real sister would know",
        "Notice the request to not tell your parents as a red flag"
    ],
    next: [1, 3, -1, -1],
    money: [0, 0, 200, 200],
    end_text: [
        "",
        "",
        "You ask the name of her childhood pet. The voice hesitates and gives a wrong answer. The AI can clone a voice but cannot access personal memories. Fraud identified. Win £200.",
        "Fraudsters always try to isolate you from people who might talk you out of paying. A real family member in a genuine emergency would want everyone to know. Red flag identified. Win £200."
    ]
};

s44.nodes[1] = {
    text: "You send the money. An hour later, your sister posts a photo on Instagram from a restaurant with friends. She is not abroad. The voice on the phone was generated using AI voice cloning technology. Criminals need as little as three seconds of audio from social media to clone a voice convincingly.",
    options: [
        "Contact your bank to try and recall the payment",
        "Call your sister on her real number"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "Your bank attempts a recall but the funds have been moved. They advise reporting to Action Fraud. Lose £500.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud resulted in £11.7 million in losses.\n\nWhat to do: Always call back on a known number before transferring money in an emergency.",
        "She picks up immediately. She is fine and has no idea what you are talking about. You realise you have been scammed using her cloned voice. Lose £500.\n\nNOTE: Between April 2024 and March 2025, 143 cases of conveyancing fraud resulted in £11.7 million in losses.\n\nWhat to do: Always call back on a known number before transferring money in an emergency."
    ]
};

s44.nodes[3] = {
    text: "You hang up and call your sister's real mobile number. She answers normally. She is not abroad and has not been in an accident. The call was a deepfake audio scam.",
    options: [
        "Report the incident to the police",
        "Warn your family about this type of scam"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "No money was lost. Your report helps police understand the growing threat of AI voice cloning in fraud. Safe outcome. Win £200.",
        "You agree on a family code word that can be used to verify identity in emergencies. This simple step makes AI voice scams much harder to pull off. Safe outcome with prevention. Win £200."
    ]
};

array_push(scenarios, s44);

// Scenario 45 - Red Herring: The Tariff Update
var s45 = {};
s45.age_group = "26-35";
s45.red_herring = true;
s45.nodes = [];

s45.nodes[0] = {
    text: "You receive an email from your energy supplier informing you that your fixed-rate tariff is ending next month and your monthly payment will increase from £95 to £118 unless you switch to a new deal. The email comes from the supplier's official domain and links to their account management page. You have been expecting this because your fixed deal was for 12 months.",
    options: [
        "Ignore it because you think it is a scam",
        "Log into your energy account directly to check",
        "Call your energy supplier to verify before taking action",
        "Check the sender's email address matches your supplier's official domain"
    ],
    next: [-1, -1, -1, -1],
    money: [-150, 200, 200, 200],
    end_text: [
        "Your tariff expires and you are moved to a more expensive variable rate. Your bill increases by £40 per month. The email was genuine. Lose £150 for missing the switch window.",
        "Your account confirms the tariff is ending and shows available new deals. You switch to a competitive fixed rate. Verified and money saved. Win £200.",
        "They confirm the email is real and help you switch tariff over the phone. You lock in a good rate. Verified. Win £200.",
        "It matches exactly. You click through and switch your tariff on their official website. Smart verification. Win £200."
    ]
};

array_push(scenarios, s45);

// Scenario 46 - Red Herring: The Mortgage Letter
var s46 = {};
s46.age_group = "26-35";
s46.red_herring = true;
s46.nodes = [];

s46.nodes[0] = {
    text: "You receive a letter from your mortgage provider informing you that the Bank of England base rate has changed and your variable rate mortgage payment will increase by £47 per month from next quarter. The letter includes your mortgage account number and is printed on the provider's headed paper. It asks you to contact them if you wish to discuss switching to a fixed rate.",
    options: [
        "Throw the letter away assuming it is a scam",
        "Call your mortgage provider using the number on your existing paperwork",
        "Log into your mortgage account online to check",
        "Compare the letter with previous correspondence from the same provider"
    ],
    next: [-1, -1, -1, -1],
    money: [-150, 200, 200, 200],
    end_text: [
        "Your mortgage payment increases as stated. You miss the window to switch to a fixed rate that could have saved you money. The letter was genuine. Lose £150 for missing the opportunity.",
        "They confirm the rate change and discuss your options. You switch to a fixed rate and lock in a predictable monthly payment. Verified and proactive. Win £200.",
        "Your online account confirms the rate change and shows available fixed-rate products. You apply through the portal. Verified. Win £200.",
        "The format, logo, and account number all match. You are satisfied it is genuine and call to discuss your options. Smart comparison. Win £200."
    ]
};

array_push(scenarios, s46);

// Scenario 47 - Red Herring: The Customs Fee (26-35 version)
var s47 = {};
s47.age_group = "26-35";
s47.red_herring = true;
s47.nodes = [];

s47.nodes[0] = {
    text: "You ordered a handmade gift from a seller in Japan three weeks ago. A card is left by Royal Mail saying a parcel is being held at your local sorting office because customs charges of £18.40 are owed. The card includes a reference number and says you can pay online at royalmail.com/pay or at the sorting office in person.",
    options: [
        "Assume it is a scam and ignore it",
        "Go to the Royal Mail website directly and pay the fee",
        "Visit the sorting office in person to pay and collect",
        "Call Royal Mail to verify the card is genuine before paying"
    ],
    next: [-1, -1, -1, -1],
    money: [-150, 200, 200, 200],
    end_text: [
        "The parcel is returned to the sender after 18 days. You lose the gift and the seller charges you again for reshipping. Since Brexit, customs charges on parcels from outside the UK are common and legitimate. This was a real customs fee. Lose £150 for missing the parcel.",
        "You type royalmail.com into your browser, enter the reference number from the card, and pay the £18.40. You collect the parcel the next day. Legitimate fee paid safely. Win £200.",
        "You pay the customs charge at the counter and collect the parcel. The staff confirm this is a standard process for international deliveries. Parcel collected safely. Win £200.",
        "They confirm the reference number matches a parcel from Japan being held for customs charges. You pay over the phone and arrange redelivery. Verified and resolved. Win £200."
    ]
};

array_push(scenarios, s47);

// Scenario 48 - Red Herring: The Job Offer (26-35 version)
var s48 = {};
s48.age_group = "26-35";
s48.red_herring = true;
s48.nodes = [];

s48.nodes[0] = {
    text: "You applied for a marketing role two weeks ago through LinkedIn. You receive an email from an HR manager at the company with a formal job offer. It includes your name, the role title, a salary of £38,000, and a start date. They ask you to complete onboarding documents including a signed contract, bank details for payroll, and a copy of your passport for right-to-work verification. The email comes from a company domain you recognise.",
    options: [
        "Ignore the email because you think it might be a scam",
        "Verify the offer by calling the company's main office number",
        "Check the sender's email domain matches the company's real website",
        "Reply asking to complete onboarding documents in person or via a secure portal"
    ],
    next: [-1, -1, -1, -1],
    money: [-150, 200, 200, 200],
    end_text: [
        "The company follows up with a phone call from the same HR manager. You miss the call. They fill the role with another candidate. You lose a genuine job opportunity. This was a real job offer. Lose £150 for missing the opportunity.",
        "Reception confirms the HR manager's name and transfers you. They verify the offer is genuine. You complete the onboarding process with confidence. Legitimate offer verified. Win £200.",
        "The domain matches exactly. You cross-reference the HR manager on LinkedIn and find they are listed as an employee. You respond and begin onboarding. Safe verification. Win £200.",
        "They agree and send you a link to their official HR portal. You complete the documents securely. This is exactly how legitimate companies operate. Safe and professional approach. Win £200."
    ]
};

array_push(scenarios, s48);

// Scenario 49 - Courier Fraud: The Counterfeit Note Investigation
var s49 = {};
s49.age_group = "36+";
s49.red_herring = false;
s49.nodes = [];

s49.nodes[0] = {
    text: "You receive a phone call from someone who says they are Detective Constable Williams from your local police station. They give you a badge number and say they are calling because your bank account has been linked to a counterfeiting investigation. They say several counterfeit notes have been traced back to your branch and they need your help to identify which cash machines are dispensing fake notes. They ask you to withdraw £500 in cash so it can be tested and say a courier will collect it from your home within the hour.",
    options: [
        "Withdraw the cash and hand it to the courier as instructed",
        "Agree to help but say you want to verify the call first",
        "Tell them you are not comfortable and want to visit the police station in person",
        "Hang up immediately because the call feels suspicious"
    ],
    next: [1, 2, 3, 4],
    money: [0, 0, 0, 0],
    end_text: ["", "", "", ""]
};

s49.nodes[1] = {
    text: "You go to your bank and withdraw £500. An hour later, a smartly dressed man arrives at your door and shows what looks like police identification. He places the cash in a sealed evidence bag and gives you a receipt with a reference number.",
    options: [
        "Wait for them to return the money as promised",
        "Call the reference number on the receipt to check on the investigation"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "They said the cash would be returned within 48 hours. After three days, you call the reference number. It does not connect. You call your local police station and they confirm no officer by that name works there and no counterfeiting investigation exists. Financial loss. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040.",
        "The number rings out. You try several times over the next two days. You then call 101 and give them the badge number. No such officer exists. Financial loss. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040."
    ]
};

s49.nodes[2] = {
    text: "The caller says \"Of course, I understand. Hang up and call your local police station on 101 to confirm – ask for DC Williams in the Fraud Unit.\" You hang up and dial 101.",
    options: [
        "The call connects straight back to the same person – feel reassured and withdraw the cash",
        "Notice the line did not ring or connect normally and become suspicious"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The scammer stayed on the line after you hung up. On a landline, if the caller does not disconnect, the line remains open. You believe you are speaking to a different person at the police station but it is still the fraudster. You hand £500 to the courier. Financial loss through line-holding scam. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040.",
        "You hang up, wait five minutes, and call 101 from a mobile phone instead. The real police confirm there is no such investigation. Fraud avoided. Win £200."
    ]
};

s49.nodes[3] = {
    text: "The caller becomes insistent and says the investigation is \"time-sensitive\" and that visiting the station could \"alert the suspects.\" They say you must act now.",
    options: [
        "Feel pressured by the urgency and agree to withdraw cash",
        "Stand firm and say you will only deal with this at the station"
    ],
    next: [5, -1],
    money: [0, 200],
    end_text: [
        "",
        "The caller hangs up. No one comes to your home. You call 101 and confirm it was a scam. Safe outcome. Win £200."
    ]
};

s49.nodes[4] = {
    text: "You remember hearing that the police will never call and ask you to withdraw cash. You end the call, wait five minutes, and phone 101 from a mobile to report it.",
    options: [
        "Report the call to Action Fraud and your bank",
        "Tell a neighbour or family member in case they receive a similar call"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "Action Fraud logs the report. Your bank adds a note to your account. No money was lost and your report contributes to the intelligence used to catch these gangs. Safe outcome. Win £200.",
        "Courier fraud gangs often target multiple people in the same area. Your heads-up may prevent someone else from being scammed. Safe outcome. Win £200."
    ]
};

s49.nodes[5] = {
    text: "You withdraw £500 and hand it to the courier. The investigation was completely fabricated.",
    options: [
        "Realise something is wrong when no one contacts you afterwards",
        "Tell a family member what happened before the courier arrives"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "You call your local station and discover you have been scammed. The money is gone. Financial loss. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040.",
        "They immediately recognise it as a scam and tell you not to hand over anything. You do not answer the door. You call 101 and report the incident. Fraud avoided through family support. Win £200."
    ]
};

array_push(scenarios, s49);

// Scenario 50 - Courier Fraud: The Compromised Card
var s50 = {};
s50.age_group = "36+";
s50.red_herring = false;
s50.nodes = [];

s50.nodes[0] = {
    text: "You receive a phone call from someone claiming to be from your bank's fraud department. They say suspicious transactions have been detected on your account and that your debit card may have been cloned. They read out the last four digits of your card number to sound legitimate. They say they need to cancel the card immediately and will send a secure courier to collect it from your home. They ask you to place the card in an envelope with your PIN written on a separate piece of paper \"for verification purposes.\"",
    options: [
        "Place the card and PIN in an envelope and hand it to the courier",
        "Ask them why they need your PIN if they are cancelling the card",
        "Tell them you will go to your bank branch in person instead",
        "Refuse and hang up because you know banks never ask for your PIN"
    ],
    next: [1, 2, 3, 4],
    money: [0, 0, 0, 0],
    end_text: ["", "", "", ""]
};

s50.nodes[1] = {
    text: "A courier arrives within the hour wearing a lanyard with your bank's logo. They take the envelope and give you a reference number. They say a new card will arrive in 3 to 5 working days.",
    options: [
        "Wait for the replacement card to arrive",
        "Have second thoughts after handing over the envelope"
    ],
    next: [-1, 5],
    money: [-500, 0],
    end_text: [
        "Two days later, you check your account online and see multiple cash withdrawals and purchases totalling over £3,000. Your bank freezes the account but recovery of funds is not guaranteed. Severe financial loss. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040.",
        ""
    ]
};

s50.nodes[2] = {
    text: "They say it is required \"for security verification\" and that without it they cannot process the cancellation. They say this is standard procedure and that you can check by calling the number on the back of your card.",
    options: [
        "Call the number on the back of your card from the same landline",
        "Hang up and wait five minutes before calling your bank from a mobile"
    ],
    next: [6, -1],
    money: [0, 200],
    end_text: [
        "",
        "Your bank confirms they did not call you. They explain that a bank will never ask for your PIN over the phone or send a courier to collect your card. Safe outcome. Win £200."
    ]
};

s50.nodes[3] = {
    text: "They say the branch \"cannot help with this type of investigation\" and that it must be handled by their specialist fraud team over the phone. They become insistent.",
    options: [
        "Give in to the pressure and agree to the courier collection",
        "Insist on going to the branch and hang up"
    ],
    next: [7, -1],
    money: [0, 200],
    end_text: [
        "",
        "At the branch, you explain what happened. The bank confirms it was a scam and praises you for coming in. They check your account and confirm no money was taken. Safe outcome. Win £200."
    ]
};

s50.nodes[4] = {
    text: "You remember that no legitimate organisation will ever ask for your full PIN. You end the call immediately.",
    options: [
        "Call your bank from a mobile to report the suspicious call",
        "Warn elderly neighbours and family members about this type of scam"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "They confirm no fraud alert was raised on your account. They thank you for reporting it and flag the phone number used by the scammer. Safe outcome. Win £200.",
        "Courier fraud gangs often target entire streets and postcodes. Your warning could prevent someone else from losing thousands of pounds. Safe outcome. Win £200."
    ]
};

s50.nodes[5] = {
    text: "An hour after the courier leaves, you mention the call to your daughter. She is alarmed and tells you banks never collect cards.",
    options: [
        "Call your bank immediately using the number on a statement",
        "Wait until the morning to call the bank"
    ],
    next: [-1, -1],
    money: [-150, -500],
    end_text: [
        "Your bank freezes the card before any major transactions go through. A small amount was taken but the bulk of your money is protected. Limited loss due to quick action. Lose £150.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040.",
        "Overnight, the criminals make several withdrawals. By morning, £2,800 has been taken. Significant financial loss. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040."
    ]
};

s50.nodes[6] = {
    text: "The line connects back to the same person because they held the line open. They pretend to be a different department and confirm the request is genuine.",
    options: [
        "Feel reassured and hand over the card and PIN",
        "Notice the line did not ring properly and try from a mobile phone"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The courier collects them. Cash withdrawals begin within the hour. Financial loss through line-holding scam. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040.",
        "You call your bank's real number from your mobile. They confirm they never called you and would never ask for your PIN. Fraud avoided. Win £200."
    ]
};

s50.nodes[7] = {
    text: "You hand over the card and PIN under pressure. Cash withdrawals start within hours.",
    options: [
        "Realise something is wrong when your new card does not arrive",
        "Tell a family member before the courier arrives"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "You contact your bank. Multiple withdrawals have been made. An investigation is opened. Financial loss. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040.",
        "They recognise the scam immediately and stop you from handing anything over. You call your bank from a mobile and report the incident. Fraud avoided through family support. Win nothing, lose nothing."
    ]
};

array_push(scenarios, s50);

// Scenario 51 - Courier Fraud: The Malware Check
var s51 = {};
s51.age_group = "36+";
s51.red_herring = false;
s51.nodes = [];

s51.nodes[0] = {
    text: "You receive a phone call from someone claiming to be from your bank's technical security team. They say your online banking has been accessed from an unrecognised device in another country and that your computer may be infected with malware. They say the malware could allow criminals to access your account every time you log in. They offer to send a courier to collect your laptop so their \"technical team\" can remove the malware and secure your device. They say it will be returned within 24 hours.",
    options: [
        "Agree and hand your laptop to the courier",
        "Ask why they cannot fix the issue remotely",
        "Tell them you will take the laptop to your bank branch instead",
        "Hang up because you know banks never collect devices from your home"
    ],
    next: [1, 2, 3, 4],
    money: [0, 0, 0, 0],
    end_text: ["", "", "", ""]
};

s51.nodes[1] = {
    text: "A courier arrives with a padded bag and a printed collection form with your name and a reference number. They take your laptop and say it will be returned by tomorrow afternoon.",
    options: [
        "Wait for the laptop to be returned",
        "Mention the call to a family member after the courier has left"
    ],
    next: [5, 6],
    money: [0, 0],
    end_text: ["", ""]
};

s51.nodes[2] = {
    text: "They say the malware is too advanced for a remote fix and that the device must be examined \"in a secure facility.\" They assure you the process is covered by your bank's security guarantee.",
    options: [
        "Accept the explanation and agree to the collection",
        "Feel something is not right and say you want to think about it"
    ],
    next: [7, 8],
    money: [0, 0],
    end_text: ["", ""]
};

s51.nodes[3] = {
    text: "They say branches do not have the technical equipment to handle malware removal and that this must be done by their specialist team. They discourage you from going in.",
    options: [
        "Ignore their advice and visit your bank branch",
        "Feel unsure but decide to follow their instructions"
    ],
    next: [-1, -1],
    money: [200, -500],
    end_text: [
        "The bank confirms they did not call you and would never ask to collect a laptop. They check your account and find no suspicious activity. They suggest running a virus scan at home. Safe outcome. Win £200.",
        "You hand over the laptop. Your device is stolen and your accounts are at risk. Financial loss and device stolen. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040."
    ]
};

s51.nodes[4] = {
    text: "You end the call and wait five minutes before calling your bank from a mobile phone. They confirm there is no security issue with your account and that the call was fraudulent.",
    options: [
        "Report the call to Action Fraud and 101",
        "Run an antivirus scan for your own peace of mind"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "Your report helps police track courier fraud gangs operating in your area. No money or devices were lost. Safe outcome. Win £200.",
        "The scan comes back clean. There was no malware. The entire call was a social engineering attack designed to get your device. Safe outcome. Win £200."
    ]
};

s51.nodes[5] = {
    text: "The laptop is never returned. You call the reference number on the form and it does not connect. Your laptop contained saved passwords, banking apps, personal documents, and photos.",
    options: [
        "Check your bank account and change your passwords immediately",
        "Do nothing for several days because you trust the process"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "You find two unauthorised transfers totalling £1,800. Your bank freezes the account. You also discover your email has been accessed and used to request password resets on other accounts. Severe financial loss plus identity compromise. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040.",
        "By the time you realise the laptop is not coming back, your bank account has been drained, credit applications have been made in your name, and your email account is being used to scam your contacts. Major financial loss and identity theft. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040."
    ]
};

s51.nodes[6] = {
    text: "They are alarmed and say banks never collect laptops. They help you call your bank from a mobile phone immediately.",
    options: [
        "Your bank freezes the account before any transactions go through",
        "Wait until morning to deal with it"
    ],
    next: [-1, -1],
    money: [-150, -500],
    end_text: [
        "You change all your passwords from another device. The laptop is gone but your finances are protected. You report the incident to 101 and Action Fraud. Device lost but finances protected. Lose £150.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040.",
        "Overnight, the criminals access your banking app through the saved login on your laptop. They transfer £2,400 before the account is frozen. Financial loss due to delayed action. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040."
    ]
};

s51.nodes[7] = {
    text: "You hand over the laptop. Within hours, your online banking is accessed from the device.",
    options: [
        "Discover the fraud when you try to log in later that day",
        "You had already logged out of banking apps before handing it over"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "You are locked out of your account. Your bank confirms unauthorised transactions. An investigation is opened. Financial loss. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040.",
        "The criminals cannot access your banking directly but they still have your saved passwords, personal documents, and email access. Your identity is compromised. Device lost and identity at risk. Lose £250.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040."
    ]
};

s51.nodes[8] = {
    text: "They say the malware is \"active right now\" and that every minute you wait puts your account at risk. The pressure is intense.",
    options: [
        "Give in to the pressure and hand over the laptop",
        "Hang up and call your bank from a mobile to check"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "The device is taken. Your accounts are accessed within hours. Financial loss. Lose £500.\n\nNOTE: UK victims lost £28.7 million to courier fraud in the year to March 2024, with an average loss of £20,032 per victim. 85% of victims were aged 60 to 90, and 70% of cases involved criminals pretending to be the police.\n\nWhat to do: The police and your bank will never send someone to your home to collect cash, cards, or valuables. If you receive a suspicious call, hang up, wait five minutes, and call your bank using the number on the back of your card. Report it to Action Fraud on 0300 123 2040.",
        "Your bank confirms they never called you and would never collect a device. No money or device was lost. Fraud avoided. Win £200."
    ]
};

array_push(scenarios, s51);

// Scenario 52 - Abuse of Position of Trust: The Helpful Carer
var s52 = {};
s52.age_group = "36+";
s52.red_herring = false;
s52.nodes = [];

s52.nodes[0] = {
    text: "Your elderly mother has a carer who visits three times a week. The carer has been wonderful – kind, reliable, and your mother speaks highly of them. One day, your mother mentions that the carer has been helping her with online banking because she finds the app difficult to use. She says the carer logs in for her to check her balance and pay bills. Your mother says it is much easier this way and that she trusts them completely.",
    options: [
        "Feel reassured because your mother is happy and the carer seems trustworthy",
        "Tell your mother that no one else should have access to her banking",
        "Contact the care agency to ask about their policy on financial access"
    ],
    next: [1, 2, 3],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s52.nodes[1] = {
    text: "You do not intervene. Over the next three months, the carer continues to access your mother's account regularly.",
    options: [
        "Your mother mentions she has less money than she expected",
        "Check her account proactively after two weeks"
    ],
    next: [4, 5],
    money: [0, 0],
    end_text: ["", ""]
};

s52.nodes[2] = {
    text: "She resists at first because she finds the app difficult. You offer to help her set up a simpler system or visit weekly to help with bills yourself.",
    options: [
        "Set up a system where only family members help with banking",
        "Your mother insists the carer is trustworthy and continues as before"
    ],
    next: [-1, -1],
    money: [200, 150],
    end_text: [
        "You change her passwords and set up a family arrangement where you or a sibling check her account weekly. The carer continues their care duties without financial access. Safe outcome. Win £200.",
        "You monitor the account remotely. If unusual transactions appear, you can act quickly. Monitored outcome. Win £150."
    ]
};

s52.nodes[3] = {
    text: "The agency says carers are strictly prohibited from accessing clients' banking or handling their money. They are unaware this has been happening and launch an immediate review.",
    options: [
        "Cooperate with the review and change your mother's passwords",
        "Ask the agency to assign a different carer as a precaution"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "The review finds no financial harm has occurred yet. The carer is reminded of the policy and your mother's banking access is secured. Preventive action. Win £200.",
        "A new carer is assigned. Your mother is initially upset but adjusts. Her finances are now secure. Safe outcome. Win £200."
    ]
};

s52.nodes[4] = {
    text: "You log into her account and find multiple small transactions to an unfamiliar account – £20 here, £35 there – over several weeks. The total is over £1,800.",
    options: [
        "Confront the carer directly",
        "Report it to the care agency and the police without confronting the carer"
    ],
    next: [-1, -1],
    money: [-200, -200],
    end_text: [
        "They deny it and say they only ever checked the balance. They become upset and your mother defends them. The situation is emotionally difficult but the transactions speak for themselves. Financial loss and emotional harm. Lose £200.\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006. Victims are often elderly or vulnerable people who trust the person exploiting them.\n\nWhat to do: No legitimate professional should ever need your login details or ask you to transfer money directly to them. If something feels wrong, contact the organisation independently and report concerns to Action Fraud on 0300 123 2040.",
        "The agency suspends the carer pending investigation. The police take a statement. Your mother's bank investigates the transactions. Some money may be recovered. Financial loss but properly reported. Lose £200.\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006. Victims are often elderly or vulnerable people who trust the person exploiting them.\n\nWhat to do: No legitimate professional should ever need your login details or ask you to transfer money directly to them. If something feels wrong, contact the organisation independently and report concerns to Action Fraud on 0300 123 2040."
    ]
};

s52.nodes[5] = {
    text: "You spot two small payments to an account you do not recognise. The amounts are £15 and £35 – small enough to go unnoticed.",
    options: [
        "Change your mother's banking passwords immediately and report to the agency",
        "Assume it might be a mistake and wait to see if it happens again"
    ],
    next: [-1, -1],
    money: [-50, -250],
    end_text: [
        "The carer is removed. Only £50 was taken. Early action prevented further losses. Limited loss due to early detection. Lose £50.\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006. Victims are often elderly or vulnerable people who trust the person exploiting them.\n\nWhat to do: No legitimate professional should ever need your login details or ask you to transfer money directly to them. If something feels wrong, contact the organisation independently and report concerns to Action Fraud on 0300 123 2040.",
        "It happens again. And again. By the time you act, over £800 has been taken in small increments. The carer knew the transactions were small enough to avoid attention. Financial loss due to delayed action. Lose £250.\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006. Victims are often elderly or vulnerable people who trust the person exploiting them.\n\nWhat to do: No legitimate professional should ever need your login details or ask you to transfer money directly to them. If something feels wrong, contact the organisation independently and report concerns to Action Fraud on 0300 123 2040."
    ]
};

array_push(scenarios, s52);

// Scenario 53 - Abuse of Position of Trust: Family Pressure
var s53 = {};
s53.age_group = "36+";
s53.red_herring = false;
s53.nodes = [];

s53.nodes[0] = {
    text: "Your uncle has recently moved in with your elderly grandmother to \"help around the house.\" Over the past two months, your grandmother has mentioned several times that your uncle has asked her to transfer money to help him with \"business expenses.\" She says the amounts are getting larger – first £200, then £500, now he is asking for £2,000. She seems uncomfortable but says she does not want to cause a family argument.",
    options: [
        "Talk to your grandmother privately about what is happening",
        "Suggest your grandmother speaks to her bank about the transactions",
        "Contact Adult Social Services or Age UK for advice"
    ],
    next: [1, 2, 3],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s53.nodes[1] = {
    text: "She says your uncle told her the money is a loan and that he will pay it back when his business takes off. She has already given him £1,500 over two months. She admits she feels pressured but does not want to upset him because he is living with her.",
    options: [
        "Speak to your uncle directly about the money",
        "Help your grandmother set up a safeguard on her account"
    ],
    next: [4, -1],
    money: [0, -250],
    end_text: [
        "",
        "You speak to her bank about setting up transaction limits or requiring a second authorisation for transfers above £100. This gives her protection without removing her independence. Preventive action. Lose £250 (previous losses).\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006. Victims are often elderly or vulnerable people who trust the person exploiting them.\n\nWhat to do: No legitimate professional should ever need your login details or ask you to transfer money directly to them. If something feels wrong, contact the organisation independently and report concerns to Action Fraud on 0300 123 2040."
    ]
};

s53.nodes[2] = {
    text: "The bank flags the pattern of increasing transfers to a single individual and asks if she is being pressured. She breaks down and says she feels she cannot say no because he lives with her.",
    options: [
        "The bank offers to put safeguards in place",
        "Your grandmother declines help because she is scared of the consequences"
    ],
    next: [-1, -1],
    money: [200, -250],
    end_text: [
        "They add transaction alerts and recommend contacting Adult Social Services if she feels unsafe. You help her access support. Protection in place. Lose £250 (previous losses). Win £200 going forward.",
        "Financial exploitation by a family member is a form of abuse. You contact Adult Social Services for advice on how to help. External support accessed. Lose £250 (previous losses).\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006. Victims are often elderly or vulnerable people who trust the person exploiting them.\n\nWhat to do: No legitimate professional should ever need your login details or ask you to transfer money directly to them. If something feels wrong, contact the organisation independently and report concerns to Action Fraud on 0300 123 2040."
    ]
};

s53.nodes[3] = {
    text: "They explain that financial exploitation by a family member is a recognised form of elder abuse. They can arrange a welfare visit, provide guidance on safeguarding, and help your grandmother access independent support without confrontation.",
    options: [
        "Accept their help and involve them in the situation",
        "Feel uncomfortable involving outsiders in a family matter"
    ],
    next: [-1, -1],
    money: [200, -500],
    end_text: [
        "A social worker visits your grandmother. They help her establish boundaries and connect her with local support. The financial pressure stops. Protection in place. Win £200.",
        "The exploitation continues. Family loyalty should never mean accepting financial abuse. Professional support exists for exactly this situation. Ongoing risk. Lose £500.\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006. Victims are often elderly or vulnerable people who trust the person exploiting them.\n\nWhat to do: No legitimate professional should ever need your login details or ask you to transfer money directly to them. If something feels wrong, contact the organisation independently and report concerns to Action Fraud on 0300 123 2040."
    ]
};

s53.nodes[4] = {
    text: "He becomes defensive and says it is none of your business. He accuses you of trying to control your grandmother's finances. The conversation becomes heated.",
    options: [
        "Back off to avoid a family conflict",
        "Involve other family members to present a united front"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "The requests continue. Your grandmother gives another £2,000 over the next month. The total now exceeds £3,500. Her savings are being depleted by someone who should be protecting her. Ongoing financial exploitation. Lose £500.\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006. Victims are often elderly or vulnerable people who trust the person exploiting them.\n\nWhat to do: No legitimate professional should ever need your login details or ask you to transfer money directly to them. If something feels wrong, contact the organisation independently and report concerns to Action Fraud on 0300 123 2040.",
        "Together, you explain to your uncle that the financial requests must stop. You help your grandmother set boundaries. The situation is uncomfortable but the exploitation ends. Partial loss but harm stopped. Lose £250.\n\nNOTE: Fraud by abuse of position carries a maximum sentence of 10 years in prison under the Fraud Act 2006. Victims are often elderly or vulnerable people who trust the person exploiting them.\n\nWhat to do: No legitimate professional should ever need your login details or ask you to transfer money directly to them. If something feels wrong, contact the organisation independently and report concerns to Action Fraud on 0300 123 2040."
    ]
};

array_push(scenarios, s53);

// Scenario 54 - Investment Fraud: The Recovery Scam
var s54 = {};
s54.age_group = "36+";
s54.red_herring = false;
s54.nodes = [];

s54.nodes[0] = {
    text: "Six months ago, you lost £4,000 to a fraudulent investment platform. You reported it to Action Fraud and your bank but the money was never recovered. You receive an email from a company called \"UK Financial Recovery Services\" saying they specialise in recovering funds lost to investment scams. They say they have identified your case and believe they can recover up to 80% of your losses. They ask for a £500 \"recovery processing fee\" to begin work on your case.",
    options: [
        "Pay the £500 fee because you want your money back",
        "Research the company before paying anything",
        "Contact Action Fraud to ask if this company is legitimate"
    ],
    next: [1, 2, 3],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s54.nodes[1] = {
    text: "They send you a professional-looking agreement and a case handler is assigned. They provide weekly updates saying progress is being made and that your case is \"in the final stages.\"",
    options: [
        "After four weeks, they ask for an additional £750 legal fee – pay it",
        "Ask them to deduct their fee from the recovered funds instead"
    ],
    next: [4, 5],
    money: [0, 0],
    end_text: ["", ""]
};

s54.nodes[2] = {
    text: "You search for \"UK Financial Recovery Services\" on Companies House and the FCA register. The company is not registered with either. The website domain was created three months ago. You find warnings on scam forums about recovery fraud targeting previous investment scam victims.",
    options: [
        "Ignore the email and report it",
        "Reply asking how they got your details"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "You forward the email to Action Fraud. Your report helps them track recovery scam operations. No money was lost. Safe outcome. Win £200.",
        "They claim to work with Action Fraud, which is false. Recovery scammers often buy lists of previous fraud victims from other criminal groups. You block them and report. Safe outcome. Win £200."
    ]
};

s54.nodes[3] = {
    text: "Action Fraud confirms they do not work with or endorse any private recovery companies. They explain that recovery fraud is a common secondary scam that targets people who have already lost money.",
    options: [
        "Thank them and delete the email",
        "Ask Action Fraud for advice on legitimate recovery options"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "You avoid losing more money. You are already in the system and will be contacted if your original case progresses. Safe outcome. Win £200.",
        "They advise contacting your bank's fraud team and, if applicable, the Financial Ombudsman Service. These are free services that do not charge upfront fees. Safe outcome with guidance. Win £200."
    ]
};

s54.nodes[4] = {
    text: "They say a court order is needed to release the funds and that the legal costs must be paid upfront.",
    options: [
        "Pay the legal fee",
        "Refuse and ask for proof of progress"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "A third fee follows for \"international transfer charges.\" The company stops responding after collecting over £1,500. This was a recovery scam. Double victimisation. Lose £500.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud, with 25,843 reports to Action Fraud. Cryptocurrency accounted for 66% of all reports. WhatsApp was the most frequently used platform by scammers.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing. If you have already sent money, contact your bank immediately and report to Action Fraud on 0300 123 2040.",
        "They send a document that looks like a court filing but the case number format does not match real UK court documents. You realise you are being scammed again. Partial loss. Lose £250.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud, with 25,843 reports to Action Fraud. Cryptocurrency accounted for 66% of all reports. WhatsApp was the most frequently used platform by scammers.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing. If you have already sent money, contact your bank immediately and report to Action Fraud on 0300 123 2040."
    ]
};

s54.nodes[5] = {
    text: "They say this is not possible due to \"regulatory requirements\" and that all fees must be paid upfront. No legitimate recovery service requires large upfront payments.",
    options: [
        "Pay because you are desperate to recover your original loss",
        "Recognise the upfront fee as a red flag and disengage"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "You lose another £500. No funds are ever recovered. The company disappears. Further financial loss. Lose £500.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud, with 25,843 reports to Action Fraud. Cryptocurrency accounted for 66% of all reports. WhatsApp was the most frequently used platform by scammers.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing. If you have already sent money, contact your bank immediately and report to Action Fraud on 0300 123 2040.",
        "You report the company to Action Fraud. No additional money was lost. No further loss. Win £200."
    ]
};

array_push(scenarios, s54);

// Scenario 55 - Investment Fraud: The Advisory Firm
var s55 = {};
s55.age_group = "36+";
s55.red_herring = false;
s55.nodes = [];

s55.nodes[0] = {
    text: "You receive a cold call from someone claiming to work for a financial advisory firm. They say they have reviewed your pension and believe it is underperforming. They offer a \"free pension review\" and say they can move your pension into a fund that has returned 12% annually for the last five years. They sound knowledgeable and mention specific pension regulations by name. They send you a glossy brochure and a link to a professional website.",
    options: [
        "Agree to the pension review and share your pension details",
        "Check whether the firm is FCA regulated before engaging",
        "Tell them you already have a financial advisor"
    ],
    next: [1, 2, 3],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s55.nodes[1] = {
    text: "They produce a report showing your current pension underperforming compared to their recommended fund. They say transferring now will give you an extra £40,000 by retirement. They handle all the paperwork and ask you to sign a transfer authority form.",
    options: [
        "Sign the transfer form",
        "Ask for time to think before signing"
    ],
    next: [4, 5],
    money: [0, 0],
    end_text: ["", ""]
};

s55.nodes[2] = {
    text: "You search the FCA register. The firm is not listed. You also check the FCA's ScamSmart warning list and find an alert about cold calls offering pension reviews with guaranteed returns.",
    options: [
        "End contact and report the call to the FCA",
        "Confront them with what you found"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "The FCA logs your report. Since January 2019, cold calling about pensions has been illegal in the UK. Your report helps the regulator take action. Safe outcome. Win £200.",
        "They claim to be \"in the process of registering\" with the FCA. This is false – firms must be authorised before giving financial advice. You hang up and report them. Safe outcome. Win £200."
    ]
};

s55.nodes[3] = {
    text: "They say your current advisor may not have access to the same opportunities and that a second opinion costs nothing. They offer to send a comparison report.",
    options: [
        "Agree to receive the report but check with your own advisor first",
        "Engage with the report and consider transferring"
    ],
    next: [-1, -1],
    money: [200, -500],
    end_text: [
        "Your financial advisor immediately identifies the approach as a pension scam. They explain that cold calls about pensions are illegal and that no legitimate fund guarantees 12% returns. You block the number. Fraud avoided through professional advice. Win £200.",
        "The comparison report makes your current pension look poor. But the data is fabricated. Your pension is moved to a fraudulent fund and cannot be recovered. Risk of pension loss. Lose £500.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud, with 25,843 reports to Action Fraud. Cryptocurrency accounted for 66% of all reports. WhatsApp was the most frequently used platform by scammers.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing. If you have already sent money, contact your bank immediately and report to Action Fraud on 0300 123 2040."
    ]
};

s55.nodes[4] = {
    text: "Your pension is transferred out of your existing scheme. Within months, the new fund stops sending statements. The website goes offline. The advisory firm's phone number is disconnected.",
    options: [
        "Contact your original pension provider",
        "Try to contact the new fund directly"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "They confirm the transfer went through but they cannot reverse it. The fund your pension was moved into is not FCA regulated. Your retirement savings may be gone. Devastating financial loss. Lose £500.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud, with 25,843 reports to Action Fraud. Cryptocurrency accounted for 66% of all reports. WhatsApp was the most frequently used platform by scammers.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing. If you have already sent money, contact your bank immediately and report to Action Fraud on 0300 123 2040.",
        "The address on the brochure is a virtual office. The company is not registered with the FCA. There is no way to reach them or recover your pension. Pension lost. Lose £500.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud, with 25,843 reports to Action Fraud. Cryptocurrency accounted for 66% of all reports. WhatsApp was the most frequently used platform by scammers.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing. If you have already sent money, contact your bank immediately and report to Action Fraud on 0300 123 2040."
    ]
};

s55.nodes[5] = {
    text: "They say the opportunity is \"time-limited\" and that the fund is closing to new investors next week. The pressure feels intense.",
    options: [
        "Give in to the pressure and sign",
        "Use the time to check the FCA register and seek independent advice"
    ],
    next: [-1, -1],
    money: [-500, 200],
    end_text: [
        "Your pension is transferred to a fraudulent fund and cannot be recovered. Pension lost. Lose £500.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud, with 25,843 reports to Action Fraud. Cryptocurrency accounted for 66% of all reports. WhatsApp was the most frequently used platform by scammers.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing. If you have already sent money, contact your bank immediately and report to Action Fraud on 0300 123 2040.",
        "The firm is not on the FCA register. Your own financial advisor confirms the cold call is a pension scam. You do not sign anything. Fraud avoided. Win £200."
    ]
};

array_push(scenarios, s55);

// Scenario 56 - Investment Fraud: The Overseas Property
var s56 = {};
s56.age_group = "36+";
s56.red_herring = false;
s56.nodes = [];

s56.nodes[0] = {
    text: "You attend a free property investment seminar at a hotel in your city. The presenter shows photos of luxury apartments in Cape Verde and says early investors are seeing 15% annual rental returns. They offer a \"discounted\" unit for £45,000 with a £5,000 deposit to secure it today. The brochure includes testimonials from \"satisfied investors\" and a glossy floor plan. Other attendees seem enthusiastic.",
    options: [
        "Pay the £5,000 deposit at the event",
        "Take the brochure home and research before committing",
        "Ask the presenter for proof of previous completed developments"
    ],
    next: [1, 2, 3],
    money: [0, 0, 0],
    end_text: ["", "", ""]
};

s56.nodes[1] = {
    text: "You hand over your card details and receive a receipt and a \"reservation certificate.\" Over the next few weeks, you receive emails with construction updates and photos of building work.",
    options: [
        "Pay the remaining £40,000 when they say the build is nearing completion",
        "Start to have doubts when they ask for the balance earlier than agreed"
    ],
    next: [4, 5],
    money: [0, 0],
    end_text: ["", ""]
};

s56.nodes[2] = {
    text: "You search the company on Companies House, the FCA register, and property scam warning sites. The company was registered six months ago. The Cape Verde address does not appear on Google Maps satellite view. Online forums contain warnings about identical seminars in other cities.",
    options: [
        "Walk away and report the seminar to Action Fraud",
        "Contact other investors listed in the brochure"
    ],
    next: [-1, -1],
    money: [200, 200],
    end_text: [
        "Your report joins others about the same company. No money was lost. Safe outcome. Win £200.",
        "The phone numbers do not connect or belong to people who have never heard of the development. The testimonials were fabricated. Fraud confirmed. No money lost. Win £200."
    ]
};

s56.nodes[3] = {
    text: "They show photos of finished apartments but cannot provide addresses you can independently verify. They become evasive when you ask for names of current tenants or property management contacts.",
    options: [
        "Recognise the evasion as a red flag and leave",
        "Accept their explanations and invest anyway"
    ],
    next: [-1, -1],
    money: [200, -500],
    end_text: [
        "You do not invest. Other attendees who did later discover the development does not exist. Safe outcome. Win £200.",
        "The development does not exist. Your money is gone. Financial loss. Lose £500.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud, with 25,843 reports to Action Fraud. Cryptocurrency accounted for 66% of all reports. WhatsApp was the most frequently used platform by scammers.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing. If you have already sent money, contact your bank immediately and report to Action Fraud on 0300 123 2040."
    ]
};

s56.nodes[4] = {
    text: "You transfer the full balance. The emails continue for a few months, then slow down, then stop entirely. The company's phone number is disconnected.",
    options: [
        "Try to visit the development in person",
        "Try to get a refund through your bank"
    ],
    next: [-1, -1],
    money: [-500, -500],
    end_text: [
        "The address does not exist or the site is an empty plot. The construction photos were taken from other projects. Your £45,000 is gone. Major financial loss. Lose £500.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud, with 25,843 reports to Action Fraud. Cryptocurrency accounted for 66% of all reports. WhatsApp was the most frequently used platform by scammers.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing. If you have already sent money, contact your bank immediately and report to Action Fraud on 0300 123 2040.",
        "Your bank attempts a recall but the receiving accounts have been emptied. They advise reporting to Action Fraud. Recovery is unlikely. Financial loss. Lose £500.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud, with 25,843 reports to Action Fraud. Cryptocurrency accounted for 66% of all reports. WhatsApp was the most frequently used platform by scammers.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing. If you have already sent money, contact your bank immediately and report to Action Fraud on 0300 123 2040."
    ]
};

s56.nodes[5] = {
    text: "They say a \"supply chain issue\" means they need payment now to secure materials. The urgency feels manufactured.",
    options: [
        "Pay to avoid losing your deposit",
        "Refuse to pay early and investigate the company"
    ],
    next: [-1, -1],
    money: [-500, -250],
    end_text: [
        "The development does not exist. Both your deposit and the balance are gone. Total financial loss. Lose £500.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud, with 25,843 reports to Action Fraud. Cryptocurrency accounted for 66% of all reports. WhatsApp was the most frequently used platform by scammers.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing. If you have already sent money, contact your bank immediately and report to Action Fraud on 0300 123 2040.",
        "You find the company is not registered with any property regulator. The testimonials in the brochure are fake. You lose your £5,000 deposit but avoid losing the full £45,000. Partial loss. Lose £250.\n\nNOTE: In 2024, UK victims lost £649 million to investment fraud, with 25,843 reports to Action Fraud. Cryptocurrency accounted for 66% of all reports. WhatsApp was the most frequently used platform by scammers.\n\nWhat to do: Check the FCA register at fca.org.uk/register before investing. If you have already sent money, contact your bank immediately and report to Action Fraud on 0300 123 2040."
    ]
};

array_push(scenarios, s56);

// Scenario 57 - Red Herring: The HMRC Repayment (18-25)
var s57 = {};
s57.age_group = "18-25";
s57.red_herring = true;
s57.nodes = [];

s57.nodes[0] = {
    text: "You receive a letter through the post from HMRC. It says you have overpaid tax in the previous financial year and are owed a repayment of £384.20. The letter includes your National Insurance number, a reference code, and says the repayment will be sent to your bank account on file. It asks you to log into your Government Gateway account to confirm your bank details are correct.",
    options: [
        "Ignore the letter because you assume it is a scam",
        "Log into your Government Gateway account directly (not through any link) to check",
        "Call HMRC on their official number to verify the letter",
        "Search online for the reference code or letter format to check if it is real"
    ],
    next: [-1, -1, -1, -1],
    money: [-50, 200, 200, 200],
    end_text: [
        "You throw the letter away. The repayment deadline passes. HMRC sends a reminder but you ignore that too. You miss out on £384.20 that was genuinely owed to you. This was a legitimate repayment. Lose £50 for missing out.",
        "You type gov.uk into your browser, navigate to your tax account, and find a notification confirming the overpayment. Your bank details are correct and the repayment is processed within 10 working days. Legitimate repayment received safely. Win £200.",
        "After waiting on hold, an HMRC advisor confirms the repayment is genuine. They verify the reference number from the letter. You confirm your bank details and the payment is processed. Legitimate repayment confirmed. Win £200.",
        "You find the letter format matches genuine HMRC correspondence. You log into Government Gateway to verify and the repayment is confirmed. Safe verification. Win £200."
    ]
};

array_push(scenarios, s57);

// Scenario 58 - Red Herring: The Police Welfare Call (36+)
var s58 = {};
s58.age_group = "36+";
s58.red_herring = true;
s58.nodes = [];

s58.nodes[0] = {
    text: "You receive a phone call from someone who says they are a police community support officer. They say your elderly neighbour was found confused in the street earlier today and has been taken home safely. They are calling because your name was listed as an emergency contact on a card in your neighbour's wallet. They ask if you can check on your neighbour this evening and whether you are aware of any family members they should contact.",
    options: [
        "Refuse to engage because you think it might be a scam",
        "Ask for the officer's name, collar number, and call 101 to verify",
        "Go and check on your neighbour without verifying the call",
        "Call your neighbour directly to check if they are okay"
    ],
    next: [-1, -1, -1, -1],
    money: [-50, 200, 150, 200],
    end_text: [
        "You hang up. Your neighbour was genuinely in need of help. They spend the evening alone and confused. A real welfare check was missed because the call seemed suspicious. This was a genuine welfare call. Lose £50 for not responding.",
        "You call 101 and give the details. The operator confirms the officer and the welfare check. You visit your neighbour and help contact their family. Your verification approach was exactly right. Verified and neighbour supported. Win £200.",
        "Your neighbour confirms a PCSO visited earlier and they are grateful you came. The call was genuine and your neighbour is safe. Kind response. Win £150.",
        "They confirm a PCSO brought them home and that they are fine but shaken. You visit and help them contact family. The call was genuine. Practical and caring response. Win £200."
    ]
};

array_push(scenarios, s58);

return scenarios;
}
