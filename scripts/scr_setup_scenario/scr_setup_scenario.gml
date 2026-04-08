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

return scenarios;
}