mixin AppLocale {
  static const String proceedixButton = 'proceedixButton';
  static const String loginButton = 'loginButton';
  // form steps title
  static const String formPersonalInformations = 'formPersonalInformations';
  static const String formChooseTier = 'formChooseTier';
  static const String formSummary = 'formSummary';

  // step 1 fields
  static const String formFullName = 'formFullName';
  static const String formEmail = 'formEmail';
  static const String formPhoneNumber = 'formPhoneNumber';

  // form buttons
  static const String formCancelButton = 'formCancelButton';
  static const String formNextButton = 'formNextButton';
  static const String formConfirmButton = 'formConfirmButton';
  static const String formBackButton = 'formBackButton';

  // step 2
  static const String basicTier = 'basic';
  static const String normalTier = 'normal';
  static const String advancedTier = 'advanced';
  static const String monthlyLabelTier = 'monthly';
  static const String yearlyLabelTier = 'yearly';
  static const String twoMonthsFree = 'twoMonthsFree';

  // step 3
  static const String fullName = 'fullName';
  static const String email = 'email';
  static const String phoneNumber = 'phoneNumber';
  static const String plan = 'plan';
  static const String billingSchedule = 'billingSchedule';
  static const String discount = 'discount';
  static const String discountTwoMonths = 'discountTwoMonths';
  static const String noDiscount = 'noDiscount';
  static const String total = 'total';

  // invalid messages
  static const String invalidFirstName = 'errorFirstName';
  static const String invalidEmail = 'errorEmail';
  static const String invalidPhoneNumber = 'errorPhoneNumber';

  // confirmations
  static const String confirmationDialogTitle = 'confirmationDialogTitle';
  static const String confirmationDialogBody = 'confirmationDialogBody';
  static const String confirmButtonText = 'confirmButtonText';
  static const String declineButtonText = 'declineButtonText';

  static const Map<String, dynamic> EN = {
    proceedixButton: 'Proceedix Enterprise',
    loginButton: 'Login',
    // form titles
    formPersonalInformations: 'Personal Informations',
    formChooseTier: 'Choose tier',
    formSummary: 'Choose Summary',
    // step 1 fields
    formFullName: 'Full name',
    formEmail: 'Email',
    formPhoneNumber: 'Phone number',

    invalidFirstName: 'Invalid First name',
    invalidEmail: 'Invalid email',
    invalidPhoneNumber: 'Invalid phone number',

    // form buttons
    formCancelButton: 'Cancel',
    formBackButton: 'Back',
    formNextButton: 'Next',
    formConfirmButton: 'Confirm',

    // step 2 tiers
    basicTier: 'Basic',
    normalTier: 'Normal',
    advancedTier: 'Advanced',
    monthlyLabelTier: 'Monthly',
    yearlyLabelTier: 'Yearly',
    twoMonthsFree: 'You have 2 months free',
    // step 3 summary
    fullName: 'Full name',
    email: 'Email',
    phoneNumber: 'Phone number',
    plan: 'Plan',
    billingSchedule: 'Billing schedule',
    discount: 'Discount',
    total: 'Total',
    discountTwoMonths: '2 months discount',
    noDiscount: 'No discount',

    // confirmation dialog
    confirmationDialogTitle: 'Confirmation dialog',
    confirmationDialogBody: 'After confirming you are going to enjoy this tier',
    confirmButtonText: 'Yes',
    declineButtonText: 'No',
  };

  static const Map<String, dynamic> ESP = {
    proceedixButton: 'Empresa Proceedix',
    loginButton: 'Acceso',
    // form titles
    formPersonalInformations: 'Informaciones personales',
    formChooseTier: 'Elige nivel',
    formSummary: 'Resumen',
    // step 1 fields
    formFullName: 'Nombre completo',
    formEmail: 'Correo electrónico',
    formPhoneNumber: 'Número de teléfono',

    invalidFirstName: 'Nombre inválido',
    invalidEmail: 'Email inválido',
    invalidPhoneNumber: 'Numero de telefono invalido',

    // form buttons
    formCancelButton: 'Cancelar',
    formBackButton: 'Atrás',
    formNextButton: 'Próximo',
    formConfirmButton: 'Confirmar',

    // step 2 tiers
    basicTier: 'Básico',
    normalTier: 'Normal',
    advancedTier: 'Avanzado',
    monthlyLabelTier: 'Mensual',
    yearlyLabelTier: 'Anual',
    twoMonthsFree: 'Tienes meses gratis',
    // step 3 summary
    fullName: 'Nombre completo',
    email: 'Correo electrónico',
    phoneNumber: 'Número de teléfono',
    plan: 'Plan',
    billingSchedule: 'Calendario de facturación',
    discount: 'Descuento',
    total: 'Total',
    discountTwoMonths: '2 meses de descuento',
    noDiscount: 'Sin descuento',

    // confirmation dialog
    confirmationDialogTitle: 'Diálogo de confirmación',
    confirmationDialogBody: 'Después de confirmar que vas a disfrutar de este nivel.',

    confirmButtonText: 'Sí',
    declineButtonText: 'No'
  };
}
