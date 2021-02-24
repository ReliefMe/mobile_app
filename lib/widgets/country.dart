import "package:flutter/material.dart";
import "../record_sample.dart";

 class Country extends StatefulWidget {
     Country({Key key}) : super(key: key);
   @override
   _CountryState createState() => _CountryState();
 }
 
 class _CountryState extends State<Country> {
  String _dropdownValue ; 
  String _country = '';

  RecordSample obj = RecordSample();

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _dropdownValue,
      icon: Icon(Icons.arrow_downward),
      hint: Text("Select Country"),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      // onChanged: (String newValue) {
      //   setState(() {
      //     dropdownValue = newValue;
      //     country = newValue;
      //     // Navigator.of(context).push(MaterialPageRoute(
      //     // builder: (context)=> RecordSample(country:country),));
      //   });
      // },

      // Countries = ['Country','United States of America', 'Afghanistan', 'Albania',' Algeria', 'Argentina',' Armenia', 'Australia',' Austria',' Azerbaijan', 'Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize', 'Benin',' Bhutan',' Bolivia',' Bosnia Herzegovina', 'Botswana',' Brazil', 'Brunei', 'Bulgaria',' Burkina', 'Burma', 'Burundi', 'Cambodia', 'Cameroon', 'Canada', 'Cape Verde', 'Central African Rep', 'Chad', 'Chile', 'People\'s Republic of China', 'Republic of China',' Colombia', 'Comoros', 'Democratic Republic of the Congo', 'Republic of the Congo', 'Costa Rica', 'Croatia', 'Cuba', 'Cyprus', 'Czech Republic', 'Danzig', 'Denmark', 'Djibouti', 'Dominica', 'Dominican Republic', 'East Timor', 'Ecuador', 'Egypt',' El Salvador', 'Equatorial Guinea',' Eritrea', 'Estonia', 'Ethiopia', 'Fiji', 'Finland', 'France', 'Gabon', 'Gaza Strip', 'The Gambia', 'Georgia', 'Germany', 'Ghana', 'Greece', 'Grenada', 'Guatemala', 'Guinea', 'Guinea-Bissau', 'Guyana',' Haiti', 'Holy Roman Empire', 'Honduras', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Iran', 'Iraq', 'Republic of Ireland', 'Israel', "Italy", 'Ivory Coast', 'Jamaica', 'Japan', 'Jonathanland', 'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', 'North Korea', 'South Korea', 'Kosovo, Kuwait', 'Kyrgyzstan', 'Laos', 'Latvia', 'Lebanon', 'Lesotho', 'Liberia', 'Libya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Macedonia', 'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta', 'Marshall Islands',' Mauritania', 'Mauritius', 'Mexico', 'Micronesia',' Moldova', 'Monaco', 'Mongolia', 'Montenegro',' Morocco', 'Mount Athos', 'Mozambique', 'Namibia',' Nauru', 'Nepal',' Newfoundland', 'Netherlands', "New Zealand", 'Nicaragua', 'Niger', 'Nigeria', 'Norway', 'Oman', 'Ottoman Empire', 'Pakistan', 'Palau', 'Panama', 'Papua New Guinea', 'Paraguay', 'Peru', 'Philippines',' Poland',' Portugal', 'Prussia', 'Qatar', 'Romania', 'Rome', 'Russian Federation',' Rwanda',' St Kitts & Nevis', 'St Lucia', 'Saint Vincent & the, Grenadines',' Samoa',' San Marino', 'Sao Tome & Principe', 'Saudi Arabia', 'Senegal', 'Serbia', 'Seychelles',' Sierra Leone', 'Singapore', 'Slovakia', 'Slovenia', 'Solomon Islands', 'Somalia', 'South Africa', 'Spain', 'Sri Lanka', 'Sudan', 'Suriname', 'Swaziland', 'Sweden', 'Switzerland', 'Syria', 'Tajikistan', 'Tanzania', 'Thailand', 'Togo', 'Tonga', 'Trinidad & Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'Tuvalu', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'Uruguay', 'Uzbekistan', 'Vanuatu', 'Vatican City', 'Venezuela', 'Vietnam', 'Yemen', 'Zambia', 'zimbabwe']
      items: <String>['Country','United States of America', 'Afghanistan', 'Albania',' Algeria', 'Argentina',' Armenia', 'Australia',' Austria',' Azerbaijan', 'Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize', 'Benin',' Bhutan',' Bolivia',' Bosnia Herzegovina', 'Botswana',' Brazil', 'Brunei', 'Bulgaria',' Burkina', 'Burma', 'Burundi', 'Cambodia', 'Cameroon', 'Canada', 'Cape Verde', 'Central African Rep', 'Chad', 'Chile', 'People\'s Republic of China', 'Republic of China',' Colombia', 'Comoros', 'Democratic Republic of the Congo', 'Republic of the Congo', 'Costa Rica', 'Croatia', 'Cuba', 'Cyprus', 'Czech Republic', 'Danzig', 'Denmark', 'Djibouti', 'Dominica', 'Dominican Republic', 'East Timor', 'Ecuador', 'Egypt',' El Salvador', 'Equatorial Guinea',' Eritrea', 'Estonia', 'Ethiopia', 'Fiji', 'Finland', 'France', 'Gabon', 'Gaza Strip', 'The Gambia', 'Georgia', 'Germany', 'Ghana', 'Greece', 'Grenada', 'Guatemala', 'Guinea', 'Guinea-Bissau', 'Guyana',' Haiti', 'Holy Roman Empire', 'Honduras', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Iran', 'Iraq', 'Republic of Ireland', 'Israel', "Italy", 'Ivory Coast', 'Jamaica', 'Japan', 'Jonathanland', 'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', 'North Korea', 'South Korea', 'Kosovo, Kuwait', 'Kyrgyzstan', 'Laos', 'Latvia', 'Lebanon', 'Lesotho', 'Liberia', 'Libya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Macedonia', 'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta', 'Marshall Islands',' Mauritania', 'Mauritius', 'Mexico', 'Micronesia',' Moldova', 'Monaco', 'Mongolia', 'Montenegro',' Morocco', 'Mount Athos', 'Mozambique', 'Namibia',' Nauru', 'Nepal',' Newfoundland', 'Netherlands', "New Zealand", 'Nicaragua', 'Niger', 'Nigeria', 'Norway', 'Oman', 'Ottoman Empire', 'Pakistan', 'Palau', 'Panama', 'Papua New Guinea', 'Paraguay', 'Peru', 'Philippines',' Poland',' Portugal', 'Prussia', 'Qatar', 'Romania', 'Rome', 'Russian Federation',' Rwanda',' St Kitts & Nevis', 'St Lucia', 'Saint Vincent & the, Grenadines',' Samoa',' San Marino', 'Sao Tome & Principe', 'Saudi Arabia', 'Senegal', 'Serbia', 'Seychelles',' Sierra Leone', 'Singapore', 'Slovakia', 'Slovenia', 'Solomon Islands', 'Somalia', 'South Africa', 'Spain', 'Sri Lanka', 'Sudan', 'Suriname', 'Swaziland', 'Sweden', 'Switzerland', 'Syria', 'Tajikistan', 'Tanzania', 'Thailand', 'Togo', 'Tonga', 'Trinidad & Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'Tuvalu', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'Uruguay', 'Uzbekistan', 'Vanuatu', 'Vatican City', 'Venezuela', 'Vietnam', 'Yemen', 'Zambia', 'zimbabwe']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),

      onChanged: (String newValue) {
        setState(() {
          _dropdownValue = newValue;
          _country = newValue;
          obj.setCountry = _country;
          // Navigator.of(context).push(MaterialPageRoute(
          // builder: (context)=> RecordSample(country:country),));
        });
      },
    );
  }
}