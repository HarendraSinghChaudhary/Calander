List projects = [
  project1,
];

var project1 = {
  "title": "Florida Private Bonded & Nonbonded Projects",
  "obj": [
    {
      "title": "Architect, Engineer, or Surveyor",
      "content": "(my contract is with the owner, architect or engineer)",
      "object": {
        "title": "What to file and when",
        "content":
            "	•	No Notice to Owner required \n•	Record lien within 90 days of my last work \n•	Serve lien within 15 days of recording \n•	File lawsuit on lien within 1 year from the recording date of the lien",
      }
    },
    {
      "title": "Contractor (or supplier to the owner)",
      "content": "(my contract is with the owner)",
      "object": {
        "title": "What to file and when",
        "content":
            "	•	No Notice to Owner required \n•	Record lien within 90 days of my last work \n•	Serve lien within 15 days of recording \n•	Serve Contractor’s Final Affidavit (CFA) at least 5 days prior to lien foreclosure lawsuit (CFA no needed for suppliers) \n•	File lawsuit on lien within 1 year from the recording date of the lien",
      }
    },
    {
      "title": "Subcontractor (or supplier to the contractor)",
      "content": "(my contract is with the contractor)",
      "object": {
        "title": "What to file and when",
        "content":
            "     If contractor issued a payment bond … \n•	No Notice to Contractor required \n•	Serve Notice of Nonpayment within 90 days from my last work or delivery of materials (except for exclusively retainage of 10% or less)  \n•	File lawsuit on bond within 1 year after my last work or delivery of materials \n \n If contractor did NOT issue a payment bond …\n•	Serve Notice to Owner within 45 days of my first work\n•	Record lien within 90 days of my last work\n•	Serve lien within 15 days of recording\n•	File lawsuit on lien within 1 year from the recording date of the lien",
      }
    },
    {
      "title": "Sub-Subcontractor (or supplier to the subcontractor)",
      "content": "(my contract is with the subcontractor)",
      "object": {
        "title": "What to file and when",
        "content":
            "     If contractor issued a payment bond …\n•	Serve Notice to Contractor within 45 days from my first work or delivery of materials\n•	Serve Notice of Nonpayment within 90 days from my last work or delivery of materials (except for exclusively retainage of 10% or less) \n•	File lawsuit on bond within 1 year after my last work or delivery of materials\n•	Also check for subcontractor payment bond, obtain a copy, and comply with its requirements \n\n If contractor did NOT issue a payment bond …\n•	Serve Notice to Owner within 45 days of my first work (with copy to Contractor)\n•	Record lien within 90 days of my last work\n•	Serve lien within 15 days of recording\n•	File lawsuit on lien within 1 year from the recording date of the lien\n•	Also check for subcontractor payment bond, obtain a copy, and comply with its requirements",
      }
    },
    {
      "title": "Supplier to the sub-subcontractor",
      "content": "(my contract is with the sub-subcontractor)",
      "object": {
        "title": "What to file and when",
        "content":
            "     If contractor issued a payment bond …\n•	Serve Notice to Contractor within 45 days from my first work or delivery of materials\n•	Serve Notice of Nonpayment within 90 days from my last work or delivery of materials (except for exclusively retainage of 10% or less) \n•	File lawsuit on bond within 1 year after my last work or delivery of materials\n•	Also check for subcontractor payment bond, obtain a copy, and comply with its requirements \n\n If contractor did NOT issue a payment bond …\n•	Serve Notice to Owner within 45 days of my first work (with copy to Contractor)\n•	Record lien within 90 days of my last work\n•	Serve lien within 15 days of recording\n•	File lawsuit on lien within 1 year from the recording date of the lien\n•	Also check for subcontractor payment bond, obtain a copy, and comply with its requirements",
      }
    },
    {
      "title": "Nope, I blew my deadlines (or I’m not on the list above)",
      "content": "(Uh-oh! What now?)",
      "object": {
        "title": "What to file and when",
        "content":
            "	•	Primary recourse may be breach of contract lawsuit against my customer \n\n•	Double check for timely recorded Notice of Commencement or payment bond, failure of which may extend the time to serve certain notices \n•	Double check for subcontractor and sub-subcontractor payment bonds, obtain copies, and comply with their requirements \n•	Don’t delay in retaining legal counsel  ",
      }
    },
  ]
};

const staticData = [
  {
    "heading": "Florida Private Bonded & Nonbonded Projects",
    "subheading":"Private Projects",
    "obj": [
      {
        "name": "Architect Engineer, or Surveyor",
        "namedes": "(my contract is with the owner, architect or engineer)",
        "points": [
          "No Notice to Owner required",
          "Record lien within 90 days of my last work",
          "Serve lien within 15 days of recording",
          "File lawsuit on lien within 1 year from the recording date of the lien"
        ],
        "points1": [
          {
            "subheading": "",
            "subpoints": [
              "",
              "",
            ]
          },
        ]
      },
      {
        "name": "Contractor (or supplier to the owner)",
        "namedes": " (my contract is with the owner)",
        "points": [
          "No Notice to Owner required",
          "Record lien within 90 days of my last work",
          "Serve lien within 15 days of recording",
          "Serve Contractor’s Final Affidavit (CFA) at least 5 days prior to lien foreclosure lawsuit (CFA no needed for suppliers)",
          "File lawsuit on lien within 1 year from the recording date of the lien"
        ]
      },
      {
        "name": "Subcontractor (or supplier to the contractor)",
        "namedes": "(my contract is with the contractor)",
        "points": [],
        "points1": [
          {
            "subheading": "If contractor issued a payment bond",
            "subpoints": [
              "No Notice to Contractor required",
              "Serve Notice of Nonpayment within 90 days from my last work or delivery of materials (except for exclusively retainage of 10% or less)",
              "File lawsuit on bond within 1 year after my last work or delivery of materials"
            ]
          },
          {
            "subheading": "If contractor did NOT issue a payment bond",
            "subpoints": [
              "Serve Notice to Owner within 45 days of my first work",
              "Record lien within 90 days of my last work",
              "Serve lien within 15 days of recording",
              "File lawsuit on lien within 1 year from the recording date of the lien"
            ]
          }
        ]
      },
      {
        "name": "Sub-Subcontractor (or supplier to the subcontractor)",
        "namedes": " (my contract is with the subcontractor)",
        "points": [],
        "points1": [
          {
            "subheading": "If contractor issued a payment bond",
            "subpoints": [
              "Serve Notice to Contractor within 45 days from my first work or delivery of materials",
              "Serve Notice of Nonpayment within 90 days from my last work or delivery of materials (except for exclusively retainage of 10% or less)",
              "File lawsuit on bond within 1 year after my last work or delivery of materials",
              "Also check for subcontractor payment bond, obtain a copy, and comply with its requirements"
            ]
          },
          {
            "subheading": "If contractor did NOT issue a payment bond",
            "subpoints": [
              "Serve Notice to Owner within 45 days of my first work (with copy to Contractor)",
              "Record lien within 90 days of my last work",
              "Serve lien within 15 days of recording",
              "File lawsuit on lien within 1 year from the recording date of the lien",
              "Also check for subcontractor payment bond, obtain a copy, and comply with its requirements"
            ]
          }
        ]
      },
      {
        "name": "Supplier to the sub-subcontractor",
        "namedes": "(my contract is with the sub-subcontractor)",
        "points": [],
        "points1": [
          {
            "subheading": "If contractor issued a payment bond",
            "subpoints": [
              "Serve Notice to Contractor within 45 days from my first delivery of materials",
              "Serve Notice of Nonpayment not later than 90 days from my last delivery of materials (except for exclusively retainage of 10% or less)",
              "File lawsuit on bond within 1 year after my last delivery of materials",
              "Also check for subcontractor and sub-subcontractor payment bonds, obtain copies, and comply with their requirements"
            ]
          },
          {
            "subheading": "If contractor did NOT issue a payment bond",
            "subpoints": [
              "Serve Notice to Owner within 45 days of my first delivery of materials (with copy to Contractor)",
              "Record lien within 90 days of my last delivery of materials",
              "Serve lien within 15 days of recording",
              "File lawsuit on lien within 1 year from the recording date of the lien",
              "Also check for subcontractor and sub-subcontractor payment bonds, obtain copies, and comply with their requirements"
            ]
          }
        ]
      },
      {
        "name": "Nope, I blew my deadlines (or I’m not on the list above)",
        "namedes": "(Uh-oh! What now?)",
        "points": [
          "Primary recourse may be breach of contract lawsuit against my customer",
          "Double check for timely recorded Notice of Commencement or payment bond, failure of which may extend the time to serve certain notices",
          "Double check for subcontractor and sub-subcontractor payment bonds, obtain copies, and comply with their requirements",
          "Don’t delay in retaining legal counsel"
        ]
      },
    ]
  },
  {
    "heading": "Florida State/Municipal Projects",
    "subheading":"Public Projects",
    "obj": [
      {
        "name": "Contractor (or supplier to the owner)",
        "namedes": "(my contract is with the state or municipality)",
        "points": [
          "No lien on public property",
          "Primary recourse may be breach of contract lawsuit against the owner"
        ],
        "points1": []
      },
      {
        "name": "Subcontractor (or supplier to the contractor)",
        "namedes": "(my contract is with the contractor)",
        "points": [],
        "points1": [
          {
            "subheading": "If contractor issued a payment bond",
            "subpoints": [
              "No Notice to Contractor required",
              "No Notice of Nonpayment required",
              "File lawsuit on bond within 1 year after my last work or delivery of materials (except actions exclusively for retainage)"
            ]
          },
          {
            "subheading": "If contractor did NOT issue a payment bond",
            "subpoints": [
              "No lien or bond rights",
              "Primary recourse may be breach of contract lawsuit against contractor"
            ]
          }
        ]
      },
      {
        "name": "Sub-Subcontractor(or supplier to the subcontractor)",
        "namedes": "(my contract is with the subcontractor)",
        "points": [],
        "points1": [
          {
            "subheading": "If contractor issued a payment bond",
            "subpoints": [
              "Serve Notice to Contractor within 45 days from my first work or delivery of materials",
              "Serve Notice of Nonpayment not earlier than 45 days from my first work or delivery of materials and not later than 90 days from my last work or delivery of materials",
              "File lawsuit on bond within 1 year after my last work or delivery of materials (except actions exclusively for retainage)",
              "Also check for subcontractor payment bond, obtain a copy, and comply with its requirements"
            ]
          },
          {
            "subheading": "If contractor did NOT issue a payment bond",
            "subpoints": [
              "No lien or bond rights against owner or contractor",
              "Check for subcontractor payment bond, obtain a copy, and comply with its requirements",
              "Primary recourse may be breach of contract lawsuit against subcontractor"
            ]
          }
        ]
      },
      {
        "name": "Supplier to the sub-subcontractor",
        "namedes": "(my contract is with the sub-subcontractor)",
        "points": [],
        "points1": [
          {
            "subheading": "If contractor issued a payment bond",
            "subpoints": [
              "Serve Notice to Contractor within 45 days from my first delivery of materials",
              "Serve Notice of Nonpayment not earlier than 45 days from my first delivery of materials and not later than 90 days from my last delivery of materials",
              "File lawsuit on bond within 1 year after my delivery of materials (except actions exclusively for retainage)",
              "Also check for subcontractor and sub-subcontractor payment bonds, obtain copies, and comply with their requirements"
            ]
          },
          {
            "subheading": "If contractor did NOT issue a payment bond",
            "subpoints": [
              "No lien or bond rights against owner or contractor",
              "Check for subcontractor and sub-subcontractor payment bonds, obtain copies, and comply with their requirements",
              "Primary recourse may be breach of contract lawsuit against sub-subcontractor"
            ]
          }
        ]
      },
      {
        "name": "Nope, I blew my deadlines (or I’m not on the list above)",
        "namedes": "(Uh-oh! What now?)",
        "points": [
          "Primary recourse may be breach of contract lawsuit against my customer",
          "Double check for timely recorded Notice of Commencement or payment bond, failure of which may extend the time to serve certain notices",
          "Double check for subcontractor and sub-subcontractor payment bonds, obtain copies, and comply with their requirements",
          "Don’t delay in retaining legal counsel"
        ]
      },
    ]
  },
  {
    "heading": "Florida Department of Transportation Projects",
    "subheading":"FDOT Projects",
    "obj": [
      {
        "name": "Contractor (or supplier to the owner)",
        "namedes": "(my contract is with the FDOT)",
        "points": [
          "No lien on public property",
          "Primary recourse may be breach of contract lawsuit against the owner"
        ],
        "points1": []
      },
      {
        "name": "Subcontractor (or supplier to the contractor)",
        "namedes": "(my contract is with the contractor)",
        "points": [],
        "points1": [
          {
            "subheading": "If contractor issued a payment bond",
            "subpoints": [
              "No Notice to Contractor required",
              "No Notice of Nonpayment required",
              "File lawsuit on bond within 365 days from FDOT final acceptance of the contract work"
            ]
          },
          {
            "subheading": "If contractor did NOT issue a payment bond",
            "subpoints": [
              "No lien or bond rights",
              "Primary recourse may be breach of contract lawsuit against contractor"
            ]
          }
        ]
      },
      {
        "name": "Sub-Subcontractor (or supplier to the subcontractor)",
        "namedes": "(my contract is with the subcontractor)",
        "points": [],
        "points1": [
          {
            "subheading": "If contractor issued a payment bond",
            "subpoints": [
              "Serve Notice to Contractor within 90 days from my first work or delivery of materials",
              "Serve Notice of Nonpayment not earlier than 45 days from my first work or delivery of materials and not later than 90 days from my last work or delivery of materials",
              "File lawsuit on bond within 365 days from FDOT final acceptance of the contract work",
              "Also check for subcontractor payment bond, obtain a copy, and comply with its requirements"
            ]
          },
          {
            "subheading": "If contractor did NOT issue a payment bond",
            "subpoints": [
              "No lien or bond rights against owner or contractor",
              "Check for subcontractor payment bond, obtain a copy, and comply with its requirements",
              "Primary recourse may be breach of contract lawsuit against subcontractor"
            ]
          }
        ]
      },
      {
        "name": "Supplier to the sub-subcontractor",
        "namedes": "(my contract is with the sub-subcontractor)",
        "points": [],
        "points1": [
          {
            "subheading": "If contractor issued a payment bond",
            "subpoints": [
              "Serve Notice to Contractor within 90 days from my first delivery of materials",
              "Serve Notice of Nonpayment not earlier than 45 days from my first delivery of materials and not later than 90 days from my last delivery of materials",
              "File lawsuit on bond within 365 days from FDOT final acceptance of the contract work",
              "Also check for subcontractor and sub-subcontractor payment bonds, obtain copies, and comply with their requirements"
            ]
          },
          {
            "subheading": "If contractor did NOT issue a payment bond",
            "subpoints": [
              "No lien or bond rights against owner or contractor",
              "Check for subcontractor and sub-subcontractor payment bonds, obtain copies, and comply with their requirements",
              "Primary recourse may be breach of contract lawsuit against sub-subcontractor"
            ]
          }
        ]
      },
      {
        "name": "Nope, I blew my deadlines (or I’m not on the list above)",
        "namedes": "(Uh-oh! What now?)",
        "points": [
          "Primary recourse may be breach of contract lawsuit against my customer",
          "Double check for subcontractor and sub-subcontractor payment bonds, obtain copies, and comply with their requirements",
          "Don’t delay in retaining legal counsel"
        ],
        "points1": []
      },
    ]
  },
  {
    "heading": "Federal Miller Act Projects",
    "subheading":"Federal Projects",
    "obj": [
      {
        "name": "Contractor (or supplier to the owner)",
        "namedes": "(my contract is with the federal government)",
        "points": [
          "No lien on federal public property",
          "Primary recourse may be breach of contract lawsuit against the owner"
        ],
        "points1": []
      },
      {
        "name": "Subcontractor (or supplier to the contractor)",
        "namedes": "(my contract is with the contractor)",
        "points": [],
        "points1": [
          {
            "subheading": "If contractor issued a payment bond",
            "subpoints": [
              "No Notice to Contractor required",
              "No Notice of Nonpayment required",
              "File lawsuit on bond no sooner than 90 days and no later than 1 year after my last work or delivery of materials"
            ]
          },
          {
            "subheading": "If contractor did NOT issue a payment bond",
            "subpoints": [
              "No lien or bond rights",
              "Primary recourse may be breach of contract lawsuit against contractor"
            ]
          }
        ]
      },
      {
        "name": "Sub-Subcontractor (or supplier to the subcontractor)",
        "namedes": "(my contract is with the subcontractor)",
        "points": [],
        "points1": [
          {
            "subheading": "If contractor issued a payment bond",
            "subpoints": [
              "No Notice to Contractor required",
              "Serve Notice of Nonpayment no later than 90 days from my last work or delivery of materials",
              "File lawsuit on bond no sooner than 90 days and no later than 1 year after my last work or delivery of materials",
              "Also check for subcontractor payment bond, obtain a copy, and comply with its requirements"
            ]
          },
          {
            "subheading": "If contractor did NOT issue a payment bond",
            "subpoints": [
              "No lien or bond rights against owner or contractor",
              "Check for subcontractor payment bond, obtain a copy, and comply with its requirements",
              "Primary recourse may be breach of contract lawsuit against subcontractor"
            ]
          }
        ]
      },
      {
        "name": "Nope, I blew my deadlines (or I’m not on the list above)",
        "namedes": "(Uh-oh! What now?)",
        "points": [
          "Primary recourse may be breach of contract lawsuit against my customer",
          "Double check for subcontractor and sub-subcontractor payment bonds, obtain copies, and comply with their requirements",
          "Don’t delay in retaining legal counsel"
        ],
        "points1": []
      },
    ]
  },
];




// text for privacy policy 

const priPolicy = "PRIVACY POLICY";

const whatPersInfo = "What personal information do we collect from the people that visit our blog, website or app?"; //underlined

const whenDoConnect = "When do we collect information?"; // Underlined

const howDoWe = "How do we use your information?"; //underlined