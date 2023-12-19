view: school_discipline_line_demographics {
   derived_table: {
     sql: select school_year, district_code, location_code, 'Male' demographic, males_with_infractions demographic_infractions, male_students demographic_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Female', females_with_infractions, female_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Hispanic', hispanics_with_infractions, hispanic_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Caucasian', whites_with_infractions, white_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Black or African American', blacks_with_infractions, black_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'American Indian/Alaskan Native', natives_with_infractions, native_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Multiracial', multiracials_with_infractions, multiracial_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Asian', asians_with_infractions, asian_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Native Hawaiian or Other Pacific Islander', islanders_with_infractions, islander_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Homeless', homeless_with_infractions, homeless_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Not Homeless', students_with_infractions-homeless_with_infractions, total_students-homeless_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'English Learner', english_learners_with_infractions, english_learner_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Not English Learner', students_with_infractions-english_learners_with_infractions, total_students-english_learner_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Students with disabilities', special_eds_with_infractions, special_ed_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Regular Education and Gifted only students', students_with_infractions-special_eds_with_infractions, total_students-special_ed_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'SNAP Direct Cert', snap_direct_with_infractions, snap_direct_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'OTHER Direct Cert', other_direct_with_infractions, other_direct_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Family Members of SNAP identified', snap_family_with_infractions, snap_family_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'Not Economically Disadvantaged', students_with_infractions-snap_family_with_infractions-other_direct_with_infractions-snap_direct_with_infractions, total_students-snap_family_students-snap_direct_students-other_direct_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'PK', pk_with_infractions, pk_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, 'KF', kf_with_infractions, kf_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, '01', g1_with_infractions, g1_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, '02', g2_with_infractions, g2_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, '03', g3_with_infractions, g3_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, '04', g4_with_infractions, g4_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, '05', g5_with_infractions, g5_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, '06', g6_with_infractions, g6_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, '07', g7_with_infractions, g7_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, '08', g8_with_infractions, g8_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, '09', g9_with_infractions, g9_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, '10', g10_with_infractions, g10_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, '11', g11_with_infractions, g11_students
from looker.school_discipline_demographics
union select school_year, district_code, location_code, '12', g12_with_infractions, g12_students
from looker.school_discipline_demographics
       ;;
   }

   dimension: school_year {
     type: string
     hidden: yes
     sql: ${TABLE}.school_year ;;
   }

   dimension: district_code {
     type: string
     hidden: yes
     sql: ${TABLE}.district_code ;;
   }

   dimension: location_code {
     type: string
     hidden: yes
     sql: ${TABLE}.location_code ;;
   }

   dimension: demographic {
     type: string
     sql: ${TABLE}.demographic ;;
   }

    measure: students_with_infractions {
      type: sum
      sql: ${TABLE}.demographic_infractions ;;
    }

    measure: students {
      type: sum
      sql: ${TABLE}.demographic_students ;;
    }

}
