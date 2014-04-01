user = User.create(
  username: "user",
  email: "user@example.com",
  password: "password",
  password_confirmation: "password"
)

mod = User.create(
  username: "mod",
  email: "mod@example.com",
  password: "password",
  password_confirmation: "password",
  moderator: true
)

admin = User.create(
  username: "admin",
  email: "admin@example.com",
  password: "password",
  password_confirmation: "password",
  admin: true
)







category = ReportCategory.create(
    name: 'Authentication', 
    description: 'Authentication generally means verifying the identity of a user. Most websites and services require you to register your details and then log in to use the service, often using a username and password. Only the true owner of the identity specified by the username should know the matching password. Related to authentication is session management, which is maintaining the state of authentication across multiple transactions.',
    icon_url: 'icons/Buzz-Private-icon.png' 
)



item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Design and documentation',
    help: 'Documentation detailing design, architecture or usage'
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "No documentation",
  description: "No authentication documentation is publicly available",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Basic documentation",
  description: "Has some authentication documentation but does not go into details",
  bonus: false,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "High-level overview",
  description: "Provides a high-level overview of authentication but does not contain technical details",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Detailed technical documentation",
  description: "Has well detailed technical design and implementation documentation for authentication",
  bonus: false,
  points: 25,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Support documentation",
  description: "Has basic help or support authentication documentation",
  bonus: true,
  points: 5,
  help: ''
)




item = ReportItem.create(
  report_category_id: category.id, 
  name: 'Authentication mechanisms',
  help: 'Methods available for authentication'
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "None, trust assumed",
  description: "No authentication available, trust is assumed",
  bonus: false,
  points: -50,

  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "None, not applicable",
  description: "Authentication not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Username and password",
  description: "Username and passwords available for authentication",
  bonus: true,
  points: 5,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "OpenID",
  description: "OpenID available for authentication",
  bonus: true,
  points: 10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "SMS two-factor",
  description: "SMS two-factor available for authentication",
  bonus: true,
  points: 25,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Mobile two-factor",
  description: "Mobile two-factor application available for authentication",
  bonus: true,
  points: 25,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Mutual SSL/TLS",
  description: "Mutual SSL/TLS available for authentication",
  bonus: true,
  points: 25,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "SAML",
  description: "SAML available for authentication",
  bonus: true,
  points: 25,
  help: ''
)




item = ReportItem.create(
  report_category_id: category.id, 
  name: 'Authorisation mechanisms',
  help: 'Methods available for service/API authorisation'
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "None, trust assumed",
  description: "Authorisation not available, trust assumed",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "None, not applicable",
  description: "Authorisation not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "O-Auth",
  description: "O-Auth available for authorisation",
  bonus: true,
  points: 25,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "XACML",
  description: "XACML available for authorisation",
  bonus: true,
  points: 25,
  help: ''
)




item = ReportItem.create(
  report_category_id: category.id, 
  name: 'Password policy',
  help: 'Restrictions on password selection and usage'
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Password policy not appliacble",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Very limited character set",
  description: "Password policy uses a very limited character set (e.g. only alpha numerics)",
  bonus: true,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Very limited password length",
  description: "Password policy uses a very limited password length (e.g. only up to 8 characters)",
  bonus: true,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Restricted character set",
  description: "Password policy uses a restricted character set (e.g. no special characters)",
  bonus: true,
  points: -5,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Restricted password length",
  description: "Password policy uses a restricted password length (e.g. only up to 16 characters)",
  bonus: true,
  points: -5,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Unrestricted password character set",
  description: "Password policy uses an unrestricted character set",
  bonus: true,
  points: 10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Unlimited password length",
  description: "Password policy uses an unlimited password length",
  bonus: true,
  points: 10,
  help: ''
)




item = ReportItem.create(
  report_category_id: category.id, 
  name: 'Recovery process',
  help: 'Password reset etc.'
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Password recovery is not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Email containing existing password",
  description: "Password reset sends existing password via email",
  bonus: true,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Email containing new password",
  description: "Password reset sends a new password via email",
  bonus: true,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Email containing reset URL",
  description: "Password reset sends a reset URL",
  bonus: true,
  points: 10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Fixed security questions",
  description: "Password reset uses fixed security questions (e.g. first pet, mother's maiden name)",
  bonus: true,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "User selected security questions",
  description: "Password reset uses user selected security questions",
  bonus: true,
  points: 5,
  help: ''
)




item = ReportItem.create(
  report_category_id: category.id, 
  name: 'Session management',
  help: 'How authentication sessions are maintained across transactions'
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Session management not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Insecure cookie",
  description: "Authentication session management uses an insecure cookie",
  bonus: true,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Secure cookie",
  description: "Authentication session management uses a secure cookie",
  bonus: true,
  points: 10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "URL parameter token",
  description: "Authentication session management uses a URL parameter token",
  bonus: true,
  points: 5,
  help: ''
)



item = ReportItem.create(
  report_category_id: category.id, 
  name: 'Credential storage',
  help: 'How sensitive credentials are stored'
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Credential storage not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Unknown",
  description: "Unknown method used for credential storage",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Plaintext",
  description: "Credentials are stored in plain text",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Insecure hash",
  description: "An insecure hash is used for credential storage (e.g. MD5)",
  bonus: false,
  points: -25,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Inappropriate hash",
  description: "An inappropriate secure hash is used for credential storage (e.g. SHA-256)",
  bonus: false,
  points: -5,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Appropriate hash",
  description: "An appropriate secure hash is used for credential storage (e.g. scrypt)",
  bonus: false,
  points: 25,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Inappropriate Encrption",
  description: "Encryption of the credentials is used inappropriately",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Appropriate Encrption",
  description: "Encryption of the credentials is used appropriately",
  bonus: false,
  points: 25,
  help: ''
)






category = ReportCategory.create(
    name: 'Data at rest', 
    description: 'Data at rest refers to inactive data which is stored physically in any digital form (e.g. harddisk, USB drive, CDs and DVDs etc.).',
    icon_url: 'icons/It-Infrastructure-Hdd-icon.png'
)



item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Design and documentation',
    help: 'Documentation detailing design, architecture or usage'
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "No documentation",
  description: "No documentation for data at rest is publicly available",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Basic documentation",
  description: "Has some documentation regarding data at rest, but doesn not go into details",
  bonus: false,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "High-level overview",
  description: "Provides a high-level overview on data at rest, but does not contain technical details",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Detailed technical documentation",
  description: "Has well detailed technical design and implementation documentation",
  bonus: false,
  points: 25,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Support documentation",
  description: "Only has basic help or support documentation",
  bonus: true,
  points: 5,
  help: ''
)



item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Data encryption',
    help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Data encryption is not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Unknown",
  description: "Method of encrypting stored data not specified or closed proprietry systems",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "No encryption",
  description: "No encryption is used to protect stored data",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Obfuscation",
  description: "Stored data is only obfuscated (e.g. base64 or proprietry method)",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Weak encryption",
  description: "A weak encryption system is used to protect stored data (e.g DES)",
  bonus: false,
  points: -25,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Strong encrpytion",
  description: "A strong encryption system is used to protect stored data (e.g. AES-256)",
  bonus: false,
  points: 50,
  help: ''
)




item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Data retention',
    help: 'How long data is stored for'
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Data retention period is not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not specified",
  description: "Data is retained for an unspecified amount of time",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Indefinitely",
  description: "Data is retained indefinitely",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "2+ years",
  description: "Data is retained for 2 or more years",
  bonus: false,
  points: -20,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "0 to 2 years",
  description: "Data is retained for up to 2 years",
  bonus: false,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Less than 1 day",
  description: "Data is retained for less than a day",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Temporary (cache)",
  description: "Data is only held temporarily (e.g. in memory)",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "User controlled",
  description: "Use is able to control the data retention period",
  bonus: false,
  points: 10,
  help: ''
)




item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Data scope',
    help: 'The type of data stored'
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Data scope is not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Unspecified",
  description: "Types of data stored is unspecified",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Personal",
  description: "Types of data stored includes personal information (e.g. address)",
  bonus: true,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Financial",
  description: "Types of data stored includes financial information (e.g. credit card details)",
  bonus: true,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "User activity",
  description: "Types of data stored includes user activity (e.g. browsing habbits)",
  bonus: true,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "User generated content",
  description: "Types of data stored includes user generated content (e.g. uploaded images)",
  bonus: true,
  points: 0,
  help: ''
)




category = ReportCategory.create(
    name: 'Data in Motion',
    description: 'Data in motion means any data which is not at rest, so is actively being transfered from one place to another. This transfer could be over a network, but also within the memory and CPU of a computer. Generally speaking, a USB drive containing data and is being physically moved does not count as data in motion.',
    icon_url: 'icons/It-Infrastructure-Remote-working-icon.png'
)



item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Design and documentation',
    help: 'Documentation detailing design, architecture or usage'
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "No documentation",
  description: "No documentation for data in motion is publicly available",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Basic documentation",
  description: "Has some documentation for data in motion, but does not go into details",
  bonus: false,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "High-level overview",
  description: "Provides a high-level overview of data in motion but does not contain technical details",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Detailed technical documentation",
  description: "Has well detailed technical design and implementation documentation for data in motion",
  bonus: false,
  points: 25,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Support documentation",
  description: "Only has basic help or support documentation for data in motion",
  bonus: true,
  points: 5,
  help: ''
)




item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Transport encryption',
    help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Transport encryption is not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Unknown",
  description: "Transport encryption method Not specified or uses closed proprietry systems",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "No encryption",
  description: "No transport encryption is used",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Obfuscation",
  description: "Obfuscation is the only means of protecting data transport",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Weak encryption",
  description: "Weak encryption is the only means of protecting data transport (e.g. 3DES)",
  bonus: false,
  points: -25,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Strong encrpytion",
  description: "Strong encryption is used to protect the data ransport (e.g. AES-256)",
  bonus: false,
  points: 50,
  help: ''
)




item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Qualys SSL/TLS score',
    help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Service does not publicly use TLS so not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Qualys SSL Labs score D or worse",
  description: "Received a Qualys SSL Labs score of D or worse",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Qualys SSL Labs score B or C",
  description: "Received a Qualys SSL Labs score of B or C",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Qualys SSL Labs score A",
  description: "Received a Qualys SSL Labs score of A",
  bonus: false,
  points: 10,
  help: ''
)




category = ReportCategory.create(
    name: 'Privacy & EULA',
    description: 'Many web services have a privacy policy that outlines what they can and cannot do with any data they obtain from its users, either directly or indirectly. Some services sell your data to third parties and some just use it for internal marketing purposes. Most websites monitor their traffic levels and may use cookies to track visitor uniqueness.',
    icon_url: 'icons/Buzz-Visible-icon.png'
)



item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Privacy policy',
    help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "A privacy policy is not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not available",
  description: "A privacy policy is not publicly available",
  bonus: false,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Available but hard to find",
  description: "The privacy policy is available, but hard to find",
  bonus: false,
  points: -5,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Available and easy to find",
  description: "The privacy policy is available and easy to find",
  bonus: false,
  points: 10,
  help: ''
)




item = ReportItem.create(
    report_category_id: category.id, 
    name: 'End User Licence Agreement',
    help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "A EULA is not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not available",
  description: "The EULA is not publicly available",
  bonus: false,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Available but hard to find",
  description: "The EULA is available, but hard to find",
  bonus: false,
  points: -5,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Available and easy to find",
  description: "The EULA is available and easy to find",
  bonus: false,
  points: 10,
  help: ''
)


item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Sales and Marketing',
    help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Sales and marketing data collection not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Unknown",
  description: "Use of personal data for internal sales and marketing is unknown",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Collected",
  description: "Collects personal information for internal sales or marketing purposes",
  bonus: false,
  points: -5,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not collected",
  description: "Does not collect personal information for internal sales or marketing purposes",
  bonus: false,
  points: 10,
  help: ''
)


item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Third parties',
    help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Third party data sharing not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Unknown",
  description: "Unknown whether personal information is provided to third parties",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Shared",
  description: "Shares personal information with third parties",
  bonus: false,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Sold",
  description: "Sells personal information to third parties",
  bonus: false,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not shared",
  description: "Does not share personal information with third parties",
  bonus: false,
  points: 10,
  help: ''
)



item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Data analytics',
    help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Data analytics not applicable",
  bonus: false,
  points: 0,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Unknown",
  description: "Unknown whether data is collected for analytics",
  bonus: false,
  points: -50,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Tracking information",
  description: "Uses tracking information for data analytics",
  bonus: false,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Does not track",
  description: "Does not track for data analytics",
  bonus: false,
  points: 10,
  help: ''
)



category = ReportCategory.create(
    name: 'Disclosure',
    description: 'Many services have a support support channel that users can use to report problems with the product, service or website. However, not many services make it clear how to raise security issues to them nor do they tend to outline how security reports are handled. A disclosure policy outlines how security problems should be raised, what the expecations are for handling the problems and may outline timeframes etc.',
    icon_url: 'icons/Users-Talk-icon.png'
)



item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Disclosure policy',
    help: ''
)


ReportChoice.create(
  report_item_id: item.id, 
  name: "Not available",
  description: "A disclosure policy is not available",
  bonus: false,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Available but hard to find",
  description: "A disclosure policy is available, but hard to find",
  bonus: false,
  points: -5,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Available and easy to find",
  description: "A disclosure policy is available and is easy to find",
  bonus: false,
  points: 10,
  help: ''
)

item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Documented security contact',
    help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Not available",
  description: "No security contact details are documented",
  bonus: false,
  points: -10,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Available but hard to find",
  description: "Security contact details are available but are hard to find",
  bonus: false,
  points: -5,
  help: ''
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Available and easy to find",
  description: "Security contact details are available and are easy to find",
  bonus: false,
  points: 10,
  help: ''
)


item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Bug bounty program',
    help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Not available",
  description: "Does not operate a bug bounty or recognition program",
  bonus: false,
  points: 0,
  help: ''
)


ReportChoice.create(
  report_item_id: item.id, 
  name: "Formal recognition",
  description: "Provides formal recogition for submitted vulnerabilities",
  bonus: false,
  points: 10,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Token bounties",
  description: "Provides token bounties such as t-shirts for vulnerabilities",
  bonus: false,
  points: 20,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Monetary bounties",
  description: "Provides monetary boutnies for vulnerabilties found",
  bonus: false,
  points: 10,
  help: ''
)

item = ReportItem.create(
    report_category_id: category.id, 
    name: 'History and reputation',
    help: ''
)



category = ReportCategory.create(
    name: 'Advertising',
    description: 'Many web services are free to its users. These services are often supported by displaying advertisments to the users. The adverts are often delivered by large advertising networks and may track users and target ads based on previous activity. Some services also offer premium versions that do not show adverts.',
    icon_url: 'icons/Business-Money-bag-icon.png'
)



item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Adverts on site',
    help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Does not display any adverts on its site",
  bonus: false,
  points: 0,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Partner or sponsorship",
  description: "Displays adverts on its site, but only fixed partner or sponsor ads",
  bonus: false,
  points: 0,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Advertising Networks",
  description: "Displays adverts on its site, distributed using an ad network",
  bonus: false,
  points: -10,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "History of serving malware",
  description: "Has a history of serving malware through advertising on its site",
  bonus: true,
  points: -50,
  help: ''
)


item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Adverts on client software',
    help: ''
)



ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Does not display any adverts in its client software",
  bonus: false,
  points: 0,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Partner or sponsorship",
  description: "Displays adverts in its client software, but only fixed partner or sponsor ads",
  bonus: false,
  points: 0,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Advertising Networks",
  description: "Displays adverts in its client software, distributed using an ad network",
  bonus: false,
  points: -10,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "History of serving malware",
  description: "Has a history of serving malware through advertising in its client software",
  bonus: true,
  points: -50,
  help: ''
)




category = ReportCategory.create(
    name: 'Incident History',
    description: 'If a service suffers a significant security breach, users and the press may be notified and the breach becomes public knowledge. There are a number of websites that track publicly disclosed incidents. Some services even provide a detailed analysis of the breach so that other companies can avoid making the same mistakes. However, it should be noted and an unknown percentage of incidents go unreported.',
    icon_url: 'icons/Office-Stuff-Planner-icon.png'
)



item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Public disclosures',
    help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "No public disclosures as has no known incident history",
  bonus: false,
  points: 0,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Contraversial disclosures",
  description: "Has provided contravserial, contradictory or misleading information in a public disclosure of an incident",
  bonus: false,
  points: 0,
  help: ''
)


ReportChoice.create(
  report_item_id: item.id, 
  name: "Minimal details",
  description: "Has provided on minimal details on incidents",
  bonus: false,
  points: 0,
  help: ''
)


ReportChoice.create(
  report_item_id: item.id, 
  name: "Detailed analysis",
  description: "Has provided detailed technical analisys of incidents",
  bonus: false,
  points: 50,
  help: ''
)


item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Recent Events',
    help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "None",
  description: "There have been no known security incidents",
  bonus: false,
  points: 0,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Previous minor incident",
  description: "There have been one or more minor security incidents prior to the last 6 months",
  bonus: false,
  points: -10,
  help: ''
)


ReportChoice.create(
  report_item_id: item.id, 
  name: "Recent minor incident",
  description: "There have been one or more minor security incidents within the last 6 months",
  bonus: false,
  points: -20,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Previous major incident",
  description: "There have been one or more major security incidents prior to the last 6 months",
  bonus: false,
  points: -20,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Recent major incident",
  description: "There have been one or more major security incidents within the last 6 months",
  bonus: false,
  points: -40,
  help: ''
)




category = ReportCategory.create(
    name: 'Software',
    description: 'Many online services also have client applications that are used on desktops, mobile phones etc. When a service has a bug in their hosted software, they can update it with the user noticing. With client software however, things are generally not as transparent. If there is a vulnerability in the client software and the user does not keep it up to date, then the user may be at risk.',
    icon_url: 'icons/Office-Stuff-Planner-icon.png'
)


item = ReportItem.create(
    report_category_id: category.id, 
    name: 'Known serious vulnerabilities',
    help: 'Please link to CVEs etc where possible.'
)
ReportChoice.create(
  report_item_id: item.id, 
  name: "Not applicable",
  description: "Service does not have client software",
  bonus: false,
  points: 0,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "None",
  description: "No known client software vulnerabilities at present",
  bonus: false,
  points: 0,
  help: ''
)

ReportChoice.create(
  report_item_id: item.id, 
  name: "Previous vulnerabilities",
  description: "Client software has previously had known serious vulnerabilties but patches are available",
  bonus: false,
  points: -10,
  help: ''
)


ReportChoice.create(
  report_item_id: item.id, 
  name: "Unpatched vulnerabilties",
  description: "Client software currently has unpatched serious known vulnerabilities",
  bonus: false,
  points: -50,
  help: ''
)



