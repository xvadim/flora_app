enum FloraService { trackPeriod, getPregnant }

// we can use easy_translation for translations our texts
// or any other similar package
const serviceDescription = {
  FloraService.trackPeriod: (
    title: 'Track my period',
    descr: 'contraception and wellbeing',
  ),
  FloraService.getPregnant: (
    title: 'Get pregnant',
    descr: 'learn about reproductive health',
  ),
};
