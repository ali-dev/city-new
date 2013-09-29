package city.admin


class CityDatePickerTagLib {
    /**
     * Renders the body with an emoticon.
     *
     * @attr property - Name of field
     * @attr minutesList - values in the minutes field
     * @attr value - date value
     * @attr type - type of date - default dateAndTime
     *
     */
    def cityDatePicker = { attrs, body ->
        String property = attrs.property
        String type = 'dateAndTime';
        def date = new Date()

        List minutesOptions = attrs.minutesList;
        List hoursOptions = ['08','09',10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,'01','02','03','04','05','06','07'];
        List daysOptions = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31];
        List monthValues = [1,2,3,4,5,6,7,8,9,10,11,12];
        List monthsOptions = [
                'January',
                'February',
                'March',
                'April',
                'May',
                'June',
                'July',
                'August',
                'September',
                'October',
                'November',
                'December'
        ];

        List yearsOptions = [2013,2014];
        if (attrs.value) {
            date = attrs.value
        }
        if (attrs.type) {
            type = attrs.type
        }


        def c = new GregorianCalendar()
        c.setTime(date)


        def years = g.select([name:property+'_year', class: 'select2',from:yearsOptions,value: date.getAt(GregorianCalendar.YEAR), 'data-placeholder':'Year']);
        def months = g.select([name:property+'_month', class: 'select2',from:monthsOptions,keys: monthValues, value: date.getAt(Calendar.MONTH)+1,'data-placeholder':'Month']);
        def days = g.select([name:property+'_day', class: 'select2',from:daysOptions,value: date.getAt(Calendar.DAY_OF_MONTH), 'data-placeholder':'Day']);

        def hours = g.select([name:property+'_hour', class: 'select2',from:hoursOptions,value: date.getAt(Calendar.HOUR_OF_DAY), 'data-placeholder':'Hour']);
        def minutes = g.select([name:property+'_minute', class: 'select2',from:minutesOptions,value: date.getAt(Calendar.MINUTE), 'data-placeholder':'Minutes']);

        def fields = 'Date: '+days+months+years
        if (type == 'dateAndTime') {
            fields = fields+' |Time: '+hours+minutes
        }
        out << body() << fields;
    }
}
