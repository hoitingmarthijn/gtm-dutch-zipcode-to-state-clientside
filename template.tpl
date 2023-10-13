___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Dutch Zipcode (Postcode) to State or Region (Provincie)",
  "description": "Based on the first 4 digits of a dutch zipcode the state, region or province in the Netherlands will be returned.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "zipcode",
    "displayName": "Dutch Zipcode",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "help": "Give the zipcode with or without the letters, or with or without the space between the digits and the letters. \n\n1234AB or \n1234 or\n1234 AB",
    "valueHint": "9999AB"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
var zipcode = data.zipcode;

var state = "Unknown";

if(zipcode !== undefined)
{
  //Strip first 4 digits from zipcode
  zipcode = zipcode.slice(0, 4);
}
else
{
 zipcode = "0000"; 
}

  var stateRanges = [
    { start: 1000, end: 1299, state: 'Noord-Holland' },
    { start: 1300, end: 1379, state: 'Flevoland' },
    { start: 1380, end: 1384, state: 'Noord-Holland' },
    { start: 1390, end: 1393, state: 'Utrecht' },
    { start: 1394, end: 1394, state: 'Noord-Holland' },
    { start: 1396, end: 1396, state: 'Utrecht' },
    { start: 1398, end: 1425, state: 'Noord-Holland' },
    { start: 1426, end: 1427, state: 'Utrecht' },
    { start: 1428, end: 1429, state: 'Zuid-Holland' },
    { start: 1430, end: 2158, state: 'Noord-Holland' },
    { start: 2159, end: 2164, state: 'Zuid-Holland' },
    { start: 2165, end: 2165, state: 'Noord-Holland' },
    { start: 2170, end: 3381, state: 'Zuid-Holland' },
    { start: 3382, end: 3464, state: 'Utrecht' },
    { start: 3465, end: 3466, state: 'Zuid-Holland' },
    { start: 3467, end: 3769, state: 'Utrecht' },
    { start: 3770, end: 3794, state: 'Gelderland' },
    { start: 3795, end: 3836, state: 'Utrecht' },
    { start: 3837, end: 3888, state: 'Gelderland' },
    { start: 3890, end: 3899, state: 'Flevoland' },
    { start: 3900, end: 3924, state: 'Utrecht' },
    { start: 3925, end: 3925, state: 'Gelderland' },
    { start: 3926, end: 3999, state: 'Utrecht' },
    { start: 4000, end: 4119, state: 'Gelderland' },
    { start: 4120, end: 4125, state: 'Utrecht' },
    { start: 4126, end: 4129, state: 'Utrecht' },
    { start: 4130, end: 4146, state: 'Utrecht' },
    { start: 4147, end: 4162, state: 'Gelderland' },
    { start: 4163, end: 4169, state: 'Utrecht' },
    { start: 4170, end: 4199, state: 'Gelderland' },
    { start: 4200, end: 4209, state: 'Zuid-Holland' },
    { start: 4211, end: 4212, state: 'Gelderland' },
    { start: 4213, end: 4213, state: 'Zuid-Holland' },
    { start: 4214, end: 4219, state: 'Gelderland' },
    { start: 4220, end: 4229, state: 'Zuid-Holland' },
    { start: 4230, end: 4239, state: 'Utrecht' },
    { start: 4240, end: 4241, state: 'Zuid-Holland' },
    { start: 4242, end: 4249, state: 'Utrecht' },
    { start: 4250, end: 4299, state: 'Noord-Brabant' },
    { start: 4300, end: 4599, state: 'Zeeland' },
    { start: 4600, end: 4671, state: 'Noord-Brabant' },
    { start: 4672, end: 4679, state: 'Zeeland' },
    { start: 4680, end: 4681, state: 'Noord-Brabant' },
    { start: 4682, end: 4699, state: 'Zeeland' },
    { start: 4700, end: 5299, state: 'Noord-Brabant' },
    { start: 5300, end: 5335, state: 'Gelderland' },
    { start: 5340, end: 5765, state: 'Noord-Brabant' },
    { start: 5766, end: 5817, state: 'Limburg' },
    { start: 5820, end: 5846, state: 'Noord-Brabant' },
    { start: 5850, end: 6019, state: 'Limburg' },
    { start: 6020, end: 6029, state: 'Noord-Brabant' },
    { start: 6030, end: 6499, state: 'Limburg' },
    { start: 6500, end: 6583, state: 'Gelderland' },
    { start: 6584, end: 6599, state: 'Limburg' },
    { start: 6600, end: 7399, state: 'Gelderland' },
    { start: 7400, end: 7438, state: 'Overijssel' },
    { start: 7439, end: 7439, state: 'Gelderland' },
    { start: 7440, end: 7739, state: 'Overijssel' },
    { start: 7740, end: 7766, state: 'Drenthe' },
    { start: 7767, end: 7799, state: 'Overijssel' },
    { start: 7800, end: 7949, state: 'Drenthe' },
    { start: 7950, end: 7955, state: 'Overijssel' },
    { start: 7956, end: 7999, state: 'Drenthe' },
    { start: 8000, end: 8049, state: 'Overijssel' },
    { start: 8050, end: 8054, state: 'Gelderland' },
    { start: 8055, end: 8069, state: 'Overijssel' },
    { start: 8070, end: 8099, state: 'Gelderland' },
    { start: 8100, end: 8159, state: 'Overijssel' },
    { start: 8160, end: 8195, state: 'Gelderland' },
    { start: 8196, end: 8199, state: 'Overijssel' },
    { start: 8200, end: 8259, state: 'Flevoland' },
    { start: 8260, end: 8299, state: 'Overijssel' },
    { start: 8300, end: 8322, state: 'Flevoland' },
    { start: 8323, end: 8349, state: 'Overijssel' },
    { start: 8350, end: 8354, state: 'Drenthe' },
    { start: 8355, end: 8379, state: 'Overijssel' },
    { start: 8380, end: 8387, state: 'Drenthe' },
    { start: 8388, end: 9299, state: 'Friesland' },
    { start: 9300, end: 9349, state: 'Drenthe' },
    { start: 9350, end: 9399, state: 'Groningen' },
    { start: 9400, end: 9478, state: 'Drenthe' },
    { start: 9479, end: 9479, state: 'Groningen' },
    { start: 9480, end: 9499, state: 'Drenthe' },
    { start: 9500, end: 9509, state: 'Groningen' },
    { start: 9510, end: 9539, state: 'Drenthe' },
    { start: 9540, end: 9563, state: 'Groningen' },
    { start: 9564, end: 9564, state: 'Drenthe' },
    { start: 9565, end: 9569, state: 'Groningen' },
    { start: 9570, end: 9579, state: 'Drenthe' },
    { start: 9580, end: 9653, state: 'Groningen' },
    { start: 9654, end: 9659, state: 'Drenthe' },
    { start: 9660, end: 9748, state: 'Groningen' },
    { start: 9749, end: 9749, state: 'Drenthe' },
    { start: 9750, end: 9759, state: 'Groningen' },
    { start: 9760, end: 9769, state: 'Drenthe' },
    { start: 9770, end: 9849, state: 'Groningen' },
    { start: 9850, end: 9859, state: 'Friesland' },
    { start: 9860, end: 9869, state: 'Groningen' },
    { start: 9870, end: 9879, state: 'Friesland' },
    { start: 9880, end: 9999, state: 'Groningen' },
  ];

  for(var i = 0; i < stateRanges.length; i++) {
    var range = stateRanges[i];
    if (zipcode >= range.start && zipcode <= range.end) 
    {
      state = range.state;
    }
  }


return state;


___TESTS___

scenarios:
- name: Untitled test 1
  code: |-
    const mockData = {
      // Mocked field values
      zip
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isNotEqualTo(undefined);


___NOTES___

Created on 10/13/2023, 1:13:04 PM


