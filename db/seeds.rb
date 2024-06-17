# frozen_string_literal: true

# require 'open-uri'

puts 'Destroy payslips'
Payslip.destroy_all

puts 'Destroy job profiles to contributions links'
JobProfilesToContributionsLink.destroy_all

puts 'Destroy payslips to contributions links'
PayslipsToContributionsLink.destroy_all

puts 'Destroy employees'
Employee.destroy_all

puts 'Destroy contributions'
Contribution.destroy_all

puts 'Destroy performances'
Performance.destroy_all

puts 'Destroy company_links'
CompanyLink.destroy_all

puts 'Destroy companies'
Company.destroy_all

puts 'Destroy job_profiles'
JobProfile.destroy_all

puts 'Destroy users'
User.destroy_all

puts 'Creatings users'

user1 = User.create!(email: 'demo@cachetons.com', password: 's¤õNðâfÏLúQÒDew¦C¨ÕaúbS¼r±Nû²»²¦')
user2 = User.create!(email: 'titi@gmail.com', password: 'YDs!cWhJ9YEV*RC9h44n')

puts 'Users created'

puts 'Creatings companies'

company1 = Company.create!(
  name: 'Les cantonniers de Corcové',
  siret: '123 568 941 00056',
  naf: '90.01Z',
  address: '3 rue dugenou, 44156 Pâté-sur-mer',
  license_number: '1076958',
  specialty: 'troupe de théâtre'
)
company2 = Company.create!(
  name: 'Pumped Up',
  siret: '124 456 789 00025',
  naf: '90.01Z',
  address: '47 boulevard de la seed, 13568 Lingottière',
  license_number: '1076598',
  specialty: 'groupe de musique'
)
company3 = Company.create!(
  name: 'Les illusionnés du bocal',
  siret: '125 741 258 00963',
  naf: '90.01Z',
  address: 'ZI La bellevie, 92125 Industrielle-sur-Oise',
  license_number: '1078552',
  specialty: 'companie de danse'
)

puts 'Companies created'

puts 'Creatings performances'

p1 = Performance.create!(company_id: company1.id, name: 'To be',             num_objet: '123Z68686634')
p2 = Performance.create!(company_id: company2.id, name: 'La Déglingue',      num_objet: '321Z68686635')
p3 = Performance.create!(company_id: company3.id, name: 'Mais oui mais non', num_objet: '741Z68686147')

Performance.create!(company_id: company1.id, name: 'Jeux de Pouvoirs',               num_objet: '456Z68686661')
Performance.create!(company_id: company1.id, name: 'Les Désossés',                   num_objet: '286Z68686628')
Performance.create!(company_id: company1.id, name: 'Martine chez les bonnes soeurs', num_objet: '789Z68686613')
Performance.create!(company_id: company1.id, name: 'Pli Pla Plou',                   num_objet: '147Z68686605')
Performance.create!(company_id: company1.id, name: 'Partout',                        num_objet: '285Z68686601')
Performance.create!(company_id: company2.id, name: 'Nulle Part Ici',                 num_objet: '369Z68686689')
Performance.create!(company_id: company2.id, name: 'Duvel et des pelles',            num_objet: '654Z68686477')
Performance.create!(company_id: company2.id, name: 'Paroles !',                      num_objet: '987Z68686111')
Performance.create!(company_id: company3.id, name: "Sans dec'",                      num_objet: '159Z68686789')
Performance.create!(company_id: company3.id, name: 'Le Grand Barzingue',             num_objet: '296Z68686456')

puts 'Performances created'

puts 'Creating employees'

jean_mich = Employee.create!(
  firstname: 'Jean-Mich',
  lastname: 'Wallouhoualla',
  company_id: company1.id,
  address: '142 rue du Cotentin, 44000 Nantes',
  phone: '0642457895',
  NIR: '185021708565428',
  conges_spectacles: '98746421',
  date_of_birth: Date.new(1981, 5, 28),
  place_of_birth: 'Pétaouchnok',
  departement_of_birth: '28',
  country_of_birth: 'France'
)
fabrice = Employee.create!(
  firstname: 'Fabrice',
  lastname: 'Le Meunier',
  company_id: company2.id,
  address: "8 allée des grands sages, 29400 Ploumeuneuc'h",
  phone: '0785458326',
  NIR: '011100110001111',
  conges_spectacles: '12345678',
  date_of_birth: Date.new(1951, 11, 2),
  place_of_birth: 'Montreuil',
  departement_of_birth: '63',
  country_of_birth: 'France'
)
mamadou = Employee.create!(
  firstname: 'Mamadou',
  lastname: 'Cissoko',
  company_id: company3.id,
  address: "34 rue de l'Ouganda, 35000 Rennes",
  phone: '0788556699',
  NIR: '336633663336633',
  conges_spectacles: '85285285',
  date_of_birth: Date.new(1992, 10, 5),
  place_of_birth: 'Bamako',
  departement_of_birth: '',
  country_of_birth: 'Mali'
)
luke = Employee.create!(
  firstname: 'Luke',
  lastname: 'Skywalker',
  company_id: company1.id,
  address: '32 passage du trou, 25060 Montcuq',
  phone: '0698798798',
  NIR: '555445554445544',
  conges_spectacles: '45645645',
  date_of_birth: Date.new(1962, 9, 12),
  place_of_birth: 'Villedieu-Les-Poêles-sur-Saône',
  departement_of_birth: '77',
  country_of_birth: 'France'
)
albert = Employee.create!(
  firstname: 'Albert',
  lastname: 'de la Grenouillères des Andes',
  company_id: company2.id,
  address: '366 place des monuments aux vétérans, 55800 Argenton-le-Pont',
  phone: '0685789445',
  NIR: '225413584684585',
  conges_spectacles: '12312531',
  date_of_birth: Date.new(2000, 1, 2),
  place_of_birth: 'Châlon-sur-Saône',
  departement_of_birth: '28',
  country_of_birth: 'France'
)
luke2 = Employee.create!(
  firstname: 'Luke',
  lastname: 'Skywalker',
  company_id: company3.id,
  address: '32 passage du trou, 25060 Montcuq',
  phone: '0698798798',
  NIR: '555445554445544',
  conges_spectacles: '45645645',
  date_of_birth: Date.new(1962, 9, 12),
  place_of_birth: 'Villedieu-Les-Poêles-sur-Saône',
  departement_of_birth: '77',
  country_of_birth: 'France'
)
albert2 = Employee.create!(
  firstname: 'Albert',
  lastname: 'de la Grenouillères des Andes',
  company_id: company3.id,
  address: '366 place des monuments aux vétérans, 55800 Argenton-le-Pont',
  phone: '0685789445',
  NIR: '225413584684585',
  conges_spectacles: '12312531',
  date_of_birth: Date.new(2000, 1, 2),
  place_of_birth: 'Châlon-sur-Saône',
  departement_of_birth: '28',
  country_of_birth: 'France'
)

puts 'Employees created'

puts 'Creating contributions'

used_contributions = {
  fund: [
    'URSSAF',
    'URSSAF',
    'URSSAF',
    'URSSAF',
    'Assedic',
    'URSSAF',
    'URSSAF',
    'URSSAF',
    'Audiens',
    'Audiens',
    'Audiens',
    'Audiens',
    'CMB',
    'URSSAF',
    'URSSAF',
    'FNAS',
    'FCAP'
  ],
  name: [
    '100 RG Base déplafonnée :  maladie, maternité, invalidité, décès, solidarité.',
    '100D RG Base déplafonnée : allocations familiales.',
    '100P RG Base plafonnée (vieillesse).',
    'CSG déductible.',
    "104 Assur. Chômage + 125 CDD contrat d'usage de - de 3 mois.",
    '312D Artistes : vieillesse.',
    '312A Artistes Accident du travail (code risque : 923AC).',
    '334P FNAL Artistes et médecins - de 20 salariés.',
    'Retraite ARRCO artiste non cadre Tranche A.',
    'Retraite ARRCO non artiste non cadre Tranche A.',
    'Prévoyance Artiste NC T1.',
    'Prévoyance NC T1.',
    'Médecine du travail (+ TVA à 20%).',
    '671P Réduction Fillon Base plafonnée.',
    '027D Contribution au dialogue social',
    "Fond National d'Activités Sociales des entreprises artistiques et culturelles.",
    "Fond Commun d'Aide au Paritarisme"
  ],
  employee_part: [0, 0, 0.069, 0.068, 0.0335, 0.0028, 0, 0, 0.0437, 0.0387, 0, 0, 0, 0, 0, 0, 0],
  employer_part: [0.133, 0.03450, 0.08550, 0, 0.09551, 0.01331, 0.01191, 0.00071, 0.04380, 0.03880,
                  0.00420, 0.00420, 0.00381, 0.28090, 0.0001, 0.01251, 0.00251],
  start_date: '2023-01-01',
  end_date: '2023-12-31'
}

used_contributions_array = []
used_contributions[:fund].each_with_index do |fund, index|
  used_contributions_array << Contribution.create!(
    fund:,
    name: used_contributions[:name][index],
    employee_part: used_contributions[:employee_part][index],
    employer_part: used_contributions[:employer_part][index],
    start_date: used_contributions[:start_date],
    end_date: used_contributions[:end_date]
  )
end

#TODO : la mème mais pour les cotisations non utilisées

Contribution.create!(fund: 'URSSAF'  , name: '100D RG Base déplafonnée : vieillesse'                                          , employee_part: 0.004   , employer_part: 0.019   , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'URSSAF'  , name: '100A RG Accident du travail (code risque : 923AD).'                             , employee_part: 0       , employer_part: 0.017   , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'URSSAF'  , name: '332P FNAL cas général et sect. public - de 20 salariés.'                        , employee_part: 0       , employer_part: 0.001   , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'URSSAF'  , name: 'CSG/CRDS imposable.'                                                            , employee_part: 0.029   , employer_part: 0       , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'URSSAF'  , name: '312D Artistes :  maladie, maternité, invalidité, décès, solidarité.'            , employee_part: 0       , employer_part: 0.094   , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'URSSAF'  , name: '312D Artistes : allocations familiales.'                                        , employee_part: 0       , employer_part: 0.02421 , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'URSSAF'  , name: '312P Artistes vieillesse.'                                                      , employee_part: 0.0483  , employer_part: 0.05991 , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'Assedic' , name: '301 AGS.'                                                                       , employee_part: 0       , employer_part: 0.00151 , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'Audiens' , name: 'Retraite ARRCO cadres Tranche A + APEC'                                         , employee_part: 0.03894 , employer_part: 0.0391  , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'Audiens' , name: 'AGFF Tranche A (ARRCO).'                                                        , employee_part: 0.008   , employer_part: 0.012   , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'Audiens' , name: 'Prévoyance Artiste Cadre T1.'                                                   , employee_part: 0       , employer_part: 0.01951 , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'CS'      , name: 'Congés Spectacles.'                                                             , employee_part: 0       , employer_part: 0.152   , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'AFDAS'   , name: 'Congés Formation (+ TVA à 20%).'                                                , employee_part: 0       , employer_part: 0.02521 , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'Audiens' , name: 'CET Tranche A.'                                                                 , employee_part: 0.0013  , employer_part: 0.00221 , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'URSSAF'  , name: '100A RG Accident du travail (code risque : 923AD).'                             , employee_part: 0       , employer_part: 0.017   , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'AUDIENS' , name: 'Garantie minimale de points (GMP)'                                              , employee_part: 1.42    , employer_part: 2.32    , start_date: '2023-01-01' , end_date: '2023-12-31')
Contribution.create!(fund: 'AUDIENS' , name: 'Garantie minimale de points (GMP)'                                              , employee_part: 1.52    , employer_part: 2.48    , start_date: '2023-01-01' , end_date: '2023-12-31')

puts 'Contributions created'

puts 'Creating job profiles'

jp_artiste_c_1 =  JobProfile.create!(user: user1, artist:true, executive: true, name: 'Directeur(trice) artistique')
jp_artiste_c_2 =  JobProfile.create!(user: user1, artist:true, executive: true, name: 'Metteur(teuse) en scène')
jp_artiste_c_3 =  JobProfile.create!(user: user1, artist:true, executive: true, name: 'Metteur(teuse) en piste')
jp_artiste_c_4 =  JobProfile.create!(user: user1, artist:true, executive: true, name: 'Metteur(teuse) en espace')

jp_artiste_nc_1  = JobProfile.create!(user: user1, artist:true, executive: false, name: 'Artistes dramatiques')
jp_artiste_nc_2  = JobProfile.create!(user: user1, artist:true, executive: false, name: 'Artistes chorégraphiques')
jp_artiste_nc_3  = JobProfile.create!(user: user1, artist:true, executive: false, name: 'Tuttiste')
jp_artiste_nc_4  = JobProfile.create!(user: user1, artist:true, executive: false, name: 'Soliste')
jp_artiste_nc_5  = JobProfile.create!(user: user1, artist:true, executive: false, name: 'Chef de pupitre')

jp_non_artiste_c_1 =  JobProfile.create!(user: user1, artist:false, executive: true, name: 'Directeur de production')
jp_non_artiste_c_2 =  JobProfile.create!(user: user1, artist:false, executive: true, name: 'Directeur technique')
jp_non_artiste_c_3 =  JobProfile.create!(user: user1, artist:false, executive: true, name: 'Régisseur général')
jp_non_artiste_c_4 =  JobProfile.create!(user: user1, artist:false, executive: true, name: 'Régisseur/Régisseur de production')

txt = File.read(Rails.root.join('liste_metiers_techos_admin.txt'))
array = txt.split(',')
array.pop
array.each do |job|
  JobProfile.create!(user: user1, artist:false, executive: false, name: job)
  JobProfile.create!(user: user2, artist:false, executive: false, name: job)
end

puts 'Job profiles created'

puts 'creating job profiles to contributions links'

all_job_profiles = JobProfile.all
all_job_profiles.each do |job_profile|
  used_contributions_array.each do |contribution|
    JobProfilesToContributionsLink.create!(job_profile:, contribution:)
  end
end

puts 'job profiles to contributions links created'

puts 'creating payslips'

Payslip.create!(payslip_number: 1, employee_id: jean_mich.id, company_id: company1.id, contract_start: '2018-01-12', contract_end: '2018-01-13', payment_date: '2018-01-17', performance_id: p1.id, hours_per_day: 8, executive: false, allowance: 1, basis: 212.00, basis_per_day: 106.00, allowance_basis: 212.00, number_of_hours: 16, employer_s_contribution: 115.09, employee_s_contribution: 52.77, net_salary: 159.23, taxable_net: 165.30, urssaf_limit: 400.00, employer_cost: 286.68, number_of_performance: 0, number_of_rehearsal: 0, gross_salary_accumulation: 138, taxable_net_accumulation: 109.93, net_accumulation: 105.98, urssaf_limit_accumulation: 288.00, employer_cost_accumulation: 214.20, hours_accumulation: 12, artist: false)
Payslip.create!(payslip_number: 1, employee_id: fabrice.id,   company_id: company2.id, contract_start: '2018-01-12', contract_end: '2018-01-13', payment_date: '2018-01-17', performance_id: p2.id, hours_per_day: 8, executive: false, allowance: 1, basis: 212.00, basis_per_day: 106.00, allowance_basis: 212.00, number_of_hours: 16, employer_s_contribution: 115.09, employee_s_contribution: 52.77, net_salary: 159.23, taxable_net: 165.30, urssaf_limit: 400.00, employer_cost: 286.68, number_of_performance: 0, number_of_rehearsal: 0, gross_salary_accumulation: 138, taxable_net_accumulation: 109.93, net_accumulation: 105.98, urssaf_limit_accumulation: 288.00, employer_cost_accumulation: 214.20, hours_accumulation: 12, artist: false)
Payslip.create!(payslip_number: 1, employee_id: mamadou.id,   company_id: company3.id, contract_start: '2018-01-12', contract_end: '2018-01-13', payment_date: '2018-01-17', performance_id: p3.id, hours_per_day: 8, executive: false, allowance: 1, basis: 212.00, basis_per_day: 106.00, allowance_basis: 212.00, number_of_hours: 16, employer_s_contribution: 115.09, employee_s_contribution: 52.77, net_salary: 159.23, taxable_net: 165.30, urssaf_limit: 400.00, employer_cost: 286.68, number_of_performance: 0, number_of_rehearsal: 0, gross_salary_accumulation: 138, taxable_net_accumulation: 109.93, net_accumulation: 105.98, urssaf_limit_accumulation: 288.00, employer_cost_accumulation: 214.20, hours_accumulation: 12, artist: false)
Payslip.create!(payslip_number: 1, employee_id: luke.id,      company_id: company1.id, contract_start: '2018-01-12', contract_end: '2018-01-13', payment_date: '2018-01-17', performance_id: p1.id, hours_per_day: 8, executive: false, allowance: 1, basis: 212.00, basis_per_day: 106.00, allowance_basis: 212.00, number_of_hours: 16, employer_s_contribution: 115.09, employee_s_contribution: 52.77, net_salary: 159.23, taxable_net: 165.30, urssaf_limit: 400.00, employer_cost: 286.68, number_of_performance: 0, number_of_rehearsal: 0, gross_salary_accumulation: 138, taxable_net_accumulation: 109.93, net_accumulation: 105.98, urssaf_limit_accumulation: 288.00, employer_cost_accumulation: 214.20, hours_accumulation: 12, artist: false)
Payslip.create!(payslip_number: 1, employee_id: albert.id,    company_id: company2.id, contract_start: '2018-01-12', contract_end: '2018-01-13', payment_date: '2018-01-17', performance_id: p2.id, hours_per_day: 8, executive: false, allowance: 1, basis: 212.00, basis_per_day: 106.00, allowance_basis: 212.00, number_of_hours: 16, employer_s_contribution: 115.09, employee_s_contribution: 52.77, net_salary: 159.23, taxable_net: 165.30, urssaf_limit: 400.00, employer_cost: 286.68, number_of_performance: 0, number_of_rehearsal: 0, gross_salary_accumulation: 138, taxable_net_accumulation: 109.93, net_accumulation: 105.98, urssaf_limit_accumulation: 288.00, employer_cost_accumulation: 214.20, hours_accumulation: 12, artist: false)
Payslip.create!(payslip_number: 1, employee_id: luke2.id,     company_id: company3.id, contract_start: '2018-01-12', contract_end: '2018-01-13', payment_date: '2018-01-17', performance_id: p3.id, hours_per_day: 8, executive: false, allowance: 1, basis: 212.00, basis_per_day: 106.00, allowance_basis: 212.00, number_of_hours: 16, employer_s_contribution: 115.09, employee_s_contribution: 52.77, net_salary: 159.23, taxable_net: 165.30, urssaf_limit: 400.00, employer_cost: 286.68, number_of_performance: 0, number_of_rehearsal: 0, gross_salary_accumulation: 138, taxable_net_accumulation: 109.93, net_accumulation: 105.98, urssaf_limit_accumulation: 288.00, employer_cost_accumulation: 214.20, hours_accumulation: 12, artist: false)
Payslip.create!(payslip_number: 1, employee_id: albert2.id,   company_id: company3.id, contract_start: '2018-01-12', contract_end: '2018-01-13', payment_date: '2018-01-17', performance_id: p3.id, hours_per_day: 8, executive: false, allowance: 1, basis: 212.00, basis_per_day: 106.00, allowance_basis: 212.00, number_of_hours: 16, employer_s_contribution: 115.09, employee_s_contribution: 52.77, net_salary: 159.23, taxable_net: 165.30, urssaf_limit: 400.00, employer_cost: 286.68, number_of_performance: 0, number_of_rehearsal: 0, gross_salary_accumulation: 138, taxable_net_accumulation: 109.93, net_accumulation: 105.98, urssaf_limit_accumulation: 288.00, employer_cost_accumulation: 214.20, hours_accumulation: 12, artist: false)

puts 'Payslips created'

puts 'Creatings company links'

CompanyLink.create!(company: company1, user: user1)
CompanyLink.create!(company: company2, user: user1)
CompanyLink.create!(company: company2, user: user2)
CompanyLink.create!(company: company3, user: user2)

puts 'Companies links created'
