function scr_setup_scenarios() {

var scenarios = [];

// =====================================================
// AGE GROUP: 13-17
// =====================================================

// Scenario 6 - Money Mule Job Scam
var s1 = {};
s1.age_group = "13-17";
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

return scenarios;
}
