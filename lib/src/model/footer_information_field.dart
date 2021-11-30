class FooterInformationField {
  String title;
  List<String> value;

  FooterInformationField({required this.title, required this.value});
}

FooterInformationField addressFooterInformationField = FooterInformationField(
  title: 'Address',
  value: [
    'HMU Library, Estavromenos, 71410, Heraklion Crete',
  ],
);

FooterInformationField emailFooterInformationField = FooterInformationField(
  title: 'Email',
  value: [
    'libher@hmu.gr',
  ],
);

FooterInformationField telephoneFooterInformationField = FooterInformationField(
  title: 'Telephone',
  value: [
    '+30 2810 379330',
    '+30 2810 379332',
  ],
);

FooterInformationField workingHoursFooterInformationField = FooterInformationField(
  title: 'Working Hours',
  value: [
    'Monday - Tuesday: 08:00 - 15:30',
    'Wednesday - Friday: 08:00 - 19:00',
  ],
);
