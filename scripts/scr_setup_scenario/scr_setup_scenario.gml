function scr_setup_scenarios() {

var scenarios = [];

// =====================================================
// AGE GROUP: 13-17
// =====================================================

// Scenario 6 - Money Mule Job Scam
var s6 = {};
s6.age_group = "13-17";
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
        "A few days later, your bank contacts you about suspicious activity. The funds you moved were linked to fraud. Your account is frozen and under investigation. You lose access to your money. Financial loss and potential criminal record. Lose £500\n\nNOTE: Cifas estimates there were 37,000 bank accounts showing money mule behaviour in 2023, and around 65% of money mules are under 30. Money muling carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job asks you to receive and transfer money through your personal account, it's money laundering. Report it to Action Fraud.",
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
        "Your bank flags the activity and your account is frozen and under investigation. You lose access to your money. Financial loss and potential criminal record. Lose £500.\n\nNOTE: Cifas estimates there were 37,000 bank accounts showing money mule behaviour in 2023, and around 65% of money mules are under 30. Money muling carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job asks you to receive and transfer money through your personal account, it's money laundering. Report it to Action Fraud.",
        "You avoid further involvement, but the initial transfer is still investigated. Lose £150 for the close call.\n\nNOTE: Cifas estimates there were 37,000 bank accounts showing money mule behaviour in 2023, and around 65% of money mules are under 30. Money muling carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job asks you to receive and transfer money through your personal account, it's money laundering. Report it to Action Fraud."
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
        "You transfer multiple payments before realising something is wrong. Your account is frozen and under investigation. You lose access to your money. Financial loss and potential criminal record. Lose £500\n\nNOTE: Cifas estimates there were 37,000 bank accounts showing money mule behaviour in 2023, and around 65% of money mules are under 30. Money muling carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job asks you to receive and transfer money through your personal account, it's money laundering. Report it to Action Fraud.",
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
        "You become involved in transferring criminal funds. Account frozen and investigated. Lose £500.\n\nNOTE: Cifas estimates there were 37,000 bank accounts showing money mule behaviour in 2023, and around 65% of money mules are under 30. Money muling carries a maximum sentence of 14 years in prison.\n\nWhat to do: If a job asks you to receive and transfer money through your personal account, it's money laundering. Report it to Action Fraud.",
        "The listing is removed. You avoided financial and legal harm. Win £200!"
    ]
};

array_push(scenarios, s6);

// Scenario 8 - Missed Delivery Fee
var s8 = {};
s8.age_group = "13-17";
s8.nodes = [];

s8.nodes[0] = {
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

s8.nodes[1] = {
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

s8.nodes[3] = {
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

array_push(scenarios, s8);

// Scenario 10 - Friend in Need
var s10 = {};
s10.age_group = "13-17";
s10.nodes = [];

s10.nodes[0] = {
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

s10.nodes[1] = {
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

s10.nodes[3] = {
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

s10.nodes[5] = {
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

array_push(scenarios, s10);

// Scenario 11 - Suspicious Login Alert
var s11 = {};
s11.age_group = "13-17";
s11.nodes = [];

s11.nodes[0] = {
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

s11.nodes[1] = {
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

s11.nodes[3] = {
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

s11.nodes[5] = {
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

array_push(scenarios, s11);

// =====================================================
// AGE GROUP: 18-25
// =====================================================

// Scenario 9 - Account Locked Email
var s9 = {};
s9.age_group = "18-25";
s9.nodes = [];

s9.nodes[0] = {
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

s9.nodes[1] = {
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

s9.nodes[3] = {
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

s9.nodes[5] = {
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

array_push(scenarios, s9);

// Scenario 12 - Sold Out Tickets
var s12 = {};
s12.age_group = "18-25";
s12.nodes = [];

s12.nodes[0] = {
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

s12.nodes[1] = {
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

s12.nodes[3] = {
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

s12.nodes[5] = {
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

array_push(scenarios, s12);

// Scenario 22 - Sextortion
var s22 = {};
s22.age_group = "18-25";
s22.nodes = [];

s22.nodes[0] = {
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

s22.nodes[1] = {
    text: "You transfer £500 in a panic. Two days later, they message again demanding another £750, saying the price has gone up because you took too long.",
    options: [
        "Pay the second demand out of fear",
        "Tell them you are going to the police"
    ],
    next: [2, 3],
    money: [0, 0],
    end_text: ["", ""]
};

s22.nodes[2] = {
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

s22.nodes[3] = {
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

s22.nodes[4] = {
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

s22.nodes[6] = {
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

s22.nodes[7] = {
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

s22.nodes[9] = {
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

s22.nodes[10] = {
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

array_push(scenarios, s22);

return scenarios;
}
