*** Variables ***

#----------------------------------------------------
# Generic
#----------------------------------------------------
${DEV_URL}                      			https://dev.facile.it/
${QA4_URL}									https://qa4.facile.it/
${QA5_URL}                      			https://qa5.facile.it/
${CANARY_URL}								https://www.facile.it:444/
${CHROME_BROWSER}                  			Chrome
${PREVENTIVO_BUTTON}						class:ZZ_button
${FACILE_LOGO}								id:ZZ_logo
${FIRST_VAI}								css:li.col4 > a
${FIRST_RESULT_MOBILE}						css:a.row-button
${SECOND_RESULT_MOBILE}						//*[@id="AS_price_table_content"]/div[2]/div[1]/a
${SECOND_VAI}								//*[@id="AS_price_table_content"]/div[2]/div/ul/li[4]/a
${PDF_VIEWER}								.pdf
${SPINNER}									id:loading
${PERSONALIZATION_TOOLTIP}					id:AS_price_cloud
${RICALCOLA_BUTTON}							id:ricalcola-link

#----------------------------------------------------
# NavBar and Sub-Menu
#----------------------------------------------------
${ASSICURAZIONI}							css:li.first > a
${ASSICURAZIONE_VIAGGI}						class:viaggi
${ASSICURAZIONE_VITA}						class:vita
${ASSICURAZIONE_INFORTUNI}					class:infortuni
${ASSICURAZIONE_CASA}						class:casa
${ASSICURAZIONE_MUTUO}						class:mutuo-mutuo
${ASSICURAZIONE_SMARTPHONE}					class:smartphone
${ASSICURAZIONE_TECH}						class:tech
${ASSICURAZIONE_CANE_E_GATTO}				class:animali
${CONTI_E_CARTE}							//*[@id="ZZ_upper_menu"]/li[5]/a
${CONTI_CORRENTI}							class:conti-correnti
${CONTI_DEPOSITO}							class:conti-deposito
${CARTE_DI_CREDITO}							class:carte-credito
${CARTE_PREPAGATE}							class:carte-prepagate-ricaricabili
${CARTE_BUSINESS}							class:carte-business
${INVESTIMENTI}								class:genertel-life
${DEPOSITO_TITOLI}							class:deposito-titoli
${TRADING_ONLINE}							class:trading-online
${PAY_TV}									//*[@id="ZZ_upper_menu"]/li[6]/a
${PAY_TV_TRADIZIONALE}						class:paytv-tradizionale
${PAY_TV_ONLINE}							class:paytv-online
${PAY_TV_E_ADSL}							class:paytv-adsl

#----------------------------------------------------
# Assicurazione Viaggi
#----------------------------------------------------
${VIAGGI}									assicurazioni-viaggi
${RISULTATI_VIAGGI}							assicurazioni-viaggi/risultati
${SCONTO}									id:sconto
${POPOLARITA}								id:popolarita
${VIAGGIO_SINGOLO}							id:AS_extra1
${MULTIVIAGGIO_ANNUALE}						id:AS_extra2
${VACANZA_STUDIO_GIOVANI}					id:AS_extra3
${ANNULLAMENTO}								id:AS_extra4
${SPESE_MEDICHE}							id:AS_extra5
${BAGAGLIO_SI}								id:AS_extra6
${BAGAGLIO_NO}								id:AS_extra7
${COPERTURE_BAGAGLIO}						id:AS_coperture_bagaglio
${SET_INFORMATIVO}							css:ul.ZZ_pdflist > li > a

#----------------------------------------------------
# Assicurazione Vita
#----------------------------------------------------
${VITA}										assicurazioni-vita
${RISULTATI_VITA}							assicurazioni-vita/risultati
${CAPITALE_DA_ASSICURARE}					id:AS_capitale
${CAPITALE_DROPDOWN}						id:AS_extra1
${CAPITALE_FIRST_OPTION}					//*[@id="AS_extra1"]/option[1]
${CAPITALE_SECOND_OPTION}					//*[@id="AS_extra1"]/option[2]
${CAPITALE_THIRD_OPTION}					//*[@id="AS_extra1"]/option[3]
${CAPITALE_FOURTH_OPTION}					//*[@id="AS_extra1"]/option[4]

#----------------------------------------------------
# Assicurazione Infortuni
#----------------------------------------------------
${INFORTUNI}								assicurazioni-infortuni
${RISULTATI_INFORTUNI}						assicurazioni-infortuni/risultati
${TIPO_DI_COPERTURA}						id:ZZ_tipo_salute
${INFORTUNIO}								id:AS_extra1
${INFORTUNIO_E_MALATTIA}					id:AS_extra2
${INVALIDITA_PERMANENTE}					id:AS_extra3
${METLIFE_FORM}								assicurazioni-infortuni/form-lungo
${METLIFE_SUBMIT}							id:form_submit
${METLIFE_NOME}								id:ASF_nome
${METLIFE_COGNOME}							id:ASF_cognome
${METLIFE_TELEFONO}							id:ASF_telefono
${METLIFE_EMAIL}							id:ASF_email
${METLIFE_PRIVACY_TEXTLINK}					//*[@id="ZZ_privacy"]/div[2]/span[1]/label/a[2]
${EXPANDED_PRIVACY}							id:singolePrivacy
${SINGOLA_FIRST}							id:ASF_privacy_trattamento
${SINGOLA_SECOND}							id:ASF_privacy_condizioni
${SINGOLA_THIRD}							id:ASF_privacy_isvap
${SINGOLA_FOURTH}							id:ASF_privacy_metlife_1
${METLIFE_PRIVACY}							id:ASF_privacy_autorizzazione
${METLIFE_OPZIONALI}						id:ASF_privacy_opzionali_autorizzazione
${METLIFE_SUCCESS}							assicurazioni-infortuni/richiesta-inviata

#----------------------------------------------------
# Assicurazione Casa
#----------------------------------------------------
${CASA}										assicurazioni-casa
${RISULTATI_CASA}							assicurazioni-casa/risultati
${COPERTURA_CASA}							id:ZZ_tipo_casa
${DANNI_AL_CONTENUTO}						//*[@id="ZZ_tipo_casa"]/li[1]/a[1]
${DANNI_AI_LOCALI}							//*[@id="ZZ_tipo_casa"]/li[2]/a[1]
${RC_FAMIGLIA}								id:AS_coperture_rc_famiglia
${RC_FAMIGLIA_SI}							//*[@id="ZZ_list_rc_famiglia"]/li[1]/a
${RC_FAMIGLIA_NO}							//*[@id="ZZ_list_rc_famiglia"]/li[2]/a

#----------------------------------------------------
# Assicurazione Mutuo
#----------------------------------------------------
${MUTUO}									assicurazione-mutuo
${RISULTATI_MUTUO}							assicurazione-mutuo/risultati

#----------------------------------------------------
# Assicurazione Smartphone
#----------------------------------------------------
${SMARTPHONE}								assicurazioni-gadget/smartphone-cellulare
${RISULTATI_SMARTPHONE}						https://www.simplesurance.it/assicurazione-smartphone?

#----------------------------------------------------
# Assicurazione Tech
#----------------------------------------------------
${TECH}										assicurazioni-gadget
${PREVENTIVO_FOTOCAMERA}					css:div.ZZ_assi-fotocamera > a.ZZ_button
${PREVENTIVO_COMPUTER}						css:div.ZZ_assi-computer > a.ZZ_button
${PREVENTIVO_TABLET}						css:div.ZZ_assi-tablet > a.ZZ_button
${RISULTATI_FOTOCAMERA}						https://www.simplesurance.it/assicurazione-macchina-fotografica?
${RISULTATI_COMPUTER}						https://www.simplesurance.it/assicurazione-laptop?
${RISULTATI_TABLET}							https://www.simplesurance.it/assicurazione-tablet?
${POLIZZA_FOTOCAMERA}						css:div.ZZ_assi-fotocamera > h3 > a
${POLIZZA_COMPUTER}							css:div.ZZ_assi-computer > h3 > a
${POLIZZA_TABLET}							css:div.ZZ_assi-tablet > h3 > a
${ASSICURAZIONE_FOTOCAMERA_LANDING}			assicurazioni-gadget/macchina-fotografica
${ASSICURAZIONE_COMPUTER_LANDING}			assicurazioni-gadget/notebook-computer
${ASSICURAZIONE_TABLET_LANDING}				assicurazioni-gadget/tablet
${BREADCRUMB_TECH}							//*[@id="ZZ_breadcrumb"]/li[2]/a

#----------------------------------------------------
# Assicurazione Cane e Gatto
#----------------------------------------------------
${CANE}										assicurazione-cane
${RISULTATI_CANE}							assicurazione-cane/risultati

#----------------------------------------------------
# Conti e Carte - Conti Correnti
#----------------------------------------------------
${LANDING_CONTI_CORRENTI}					conti-correnti
${RISUTATI_CONTI_CORRENTI}					conti-correnti/risultati
${CONTI_CORRENTI_FILTERS}					id:CCF_servizi_inclusi_box
${APERTURA_ON_LINE_CB}						id:servizio_incluso_1
${APERTURA_ON_LINE}							//*[@id="CCF_servizi_inclusi_box"]/div[1]/ul/li[1]
${APERTURA_IN_FILIALE_CB}					id:servizio_incluso_2
${APERTURA_IN_FILIALE}						//*[@id="CCF_servizi_inclusi_box"]/div[1]/ul/li[2]
${APERTURA_DA_APP_CB}						id:servizio_incluso_17
${APERTURA_DA_APP}							//*[@id="CCF_servizi_inclusi_box"]/div[1]/ul/li[3]
${CARTA_DI_CREDITO_CB}						id:servizio_incluso_3
${CARTA_DI_CREDITO}							//*[@id="CCF_servizi_inclusi_box"]/div[2]/ul/li[1]
${BANCOMAT_CB}								id:servizio_incluso_4
${BANCOMAT}									//*[@id="CCF_servizi_inclusi_box"]/div[2]/ul/li[2]
${INTERNET_BANKING_CB}						id:servizio_incluso_5
${INTERNET_BANKING}							//*[@id="CCF_servizi_inclusi_box"]/div[2]/ul/li[3]
${CARTA_PREPAGATA_CB}						id:servizio_incluso_11
${CARTA_PREPAGATA}							//*[@id="CCF_servizi_inclusi_box"]/div[2]/ul/li[4]
${ZERO_SPESE_CB}							id:servizio_incluso_13
${ZERO_SPESE}								//*[@id="CCF_servizi_inclusi_box"]/div[2]/ul/li[5]
${CARTA_DEBITO_INTERNAZIONALE_CB}			id:servizio_incluso_18
${CARTA_DEBITO_INTERNAZIONALE}				//*[@id="CCF_servizi_inclusi_box"]/div[2]/ul/li[6]
${TRADING_CB}								id:servizio_incluso_9
${TRADING}									//*[@id="CCF_servizi_inclusi_box"]/div[3]/ul/li[1]
${RICHIESTA_FIDO_CB}						id:servizio_incluso_10
${RICHIESTA_FIDO}							//*[@id="CCF_servizi_inclusi_box"]/div[3]/ul/li[2]
${GIOVANI_CB}								id:servizio_incluso_16
${GIOVANI}									//*[@id="CCF_servizi_inclusi_box"]/div[3]/ul/li[3]
${NO_RESULTS}								css:div.no-results
${INVIA_PREVENTIVO}							id:invia-preventivo
${INVIA_PREVENTIVO_POPUP}					id:PT_overlay
${INVIA_BUTTON}								id:CTF_submit_popup
${INFORMATIVA_PRIVACY_LINK}					//*[@id="CMB_conti_deposito"]/div[4]/a
${INFORMATIVA_PRIVACY_PAGE}					privacy
${INVIA_PREVENTIVO_CLOSE}					//*[@id="PT_overlay"]/a

#----------------------------------------------------
# Conti e Carte - Conti Deposito
#----------------------------------------------------
${LANDING_CONTI_DEPOSITO}					conti-deposito
${RISULTATI_CONTI_DEPOSITO}					conti-deposito/risultati
${IMPORTO_DEPOSITATO}						id:importo
${NON_VINCOLATO_CB}							id:non_vincolato
${NON_VINCOLATO}							//*[@id="CTF_console_vincolato"]/li[1]
${VINCOLATO_CB}								id:vincolato
${VINCOLATO}								//*[@id="CTF_console_vincolato"]/li[2]
${DURATA3_RB}								id:CTF_console_durata_3
${DURATA3}									//*[@id="CTF_console_durata"]/li[1]
${DURATA6_RB}								id:CTF_console_durata_6
${DURATA6}									//*[@id="CTF_console_durata"]/li[2]
${DURATA9_RB}								id:CTF_console_durata_9
${DURATA9}									//*[@id="CTF_console_durata"]/li[3]
${DURATA12_RB}								id:CTF_console_durata_12
${DURATA12}									//*[@id="CTF_console_durata"]/li[4]
${DURATA18_RB}								id:CTF_console_durata_18
${DURATA18}									//*[@id="CTF_console_durata"]/li[5]
${DURATA24_RB}								id:CTF_console_durata_24
${DURATA24}									//*[@id="CTF_console_durata"]/li[6]
${DURATA36_RB}								id:CTF_console_durata_36
${DURATA36}									//*[@id="CTF_console_durata"]/li[7]
${DURATA48_RB}								id:CTF_console_durata_48
${DURATA48}									//*[@id="CTF_console_durata"]/li[8]
${DURATA60_RB}								id:CTF_console_durata_60
${DURATA60}									//*[@id="CTF_console_durata"]/li[9]
${DURATA72_RB}								id:CTF_console_durata_72
${DURATA72}									//*[@id="CTF_console_durata"]/li[10]
${DURATA84_RB}								id:CTF_console_durata_84
${DURATA84}									//*[@id="CTF_console_durata"]/li[11]
${RICALCOLA_BUTTON}							//*[@id="ZZ_result_right"]/div[1]/div[2]/div[2]/a

#----------------------------------------------------
# Conti e Carte - Carte di Credito
#----------------------------------------------------
${LANDING_CARTE_DI_CREDITO}					carta-di-credito
${RISULTATI_CARTE_DI_CREDITO}				carta-di-credito/risultati
${CLASSICA}									id:AS_extra1
${PREPAGATA}								id:AS_extra2
${MOSTRA_TUTTE}								id:AS_extra13
${A_SALDO}									id:AS_extra11
${A_RATE}									id:AS_extra10
${CC_SI}									id:AS_extra7
${CC_NO}									id:AS_extra8
${CC_MOSTRA_TUTTE}							id:AS_extra9
${CON_IBAN}									id:AS_extra5
${SENZA_IBAN}								id:AS_extra6
${CP_MOSTRA_TUTTE}							id:AS_extra12

#----------------------------------------------------
# Conti e Carte - Carte Prepagate
#----------------------------------------------------
${LANDING_CARTE_PREPAGATE}					carta-prepagata-ricaricabile
${RISULTATI_CARTE_PREPAGATE}				carta-di-credito/risultati/prepagate

#----------------------------------------------------
# Conti e Carte - Carte Business
#----------------------------------------------------
${LANDING_CARTE_BUSINESS}					carte-business

#----------------------------------------------------
# Risparmio e investimenti - Investimenti
#----------------------------------------------------
${LANDING_INVESTIMENTI}						investimenti/genertellife.html

#----------------------------------------------------
# Risparmio e investimenti - Conti Deposito
#----------------------------------------------------
${LANDING_DEPOSITO_TITOLI}					investimenti/deposito-titoli.html
${RISULTATI_DEPOSITO_TITOLI}				investimenti/deposito-titoli-risultati.html
${CONTI_DEPOSITO_FILTERS}					id:CCF_servizi_inclusi_box
${CONSULENZA_CB}							id:servizio_incluso_3
${CONSULENZA}								//*[@id="CCF_servizi_inclusi_box"]/div[2]/ul/li[1]
${FONDI_COMUNI_E_SICAV_CB}					id:servizio_incluso_4
${FONDI_COMUNI_E_SICAV}						//*[@id="CCF_servizi_inclusi_box"]/div[2]/ul/li[2]
${PORTAFOGLIO_VIRTUALE_CB}					id:servizio_incluso_5
${PORTAFOGLIO_VIRTUALE}						//*[@id="CCF_servizi_inclusi_box"]/div[2]/ul/li[3]
${OBBLIGAZIONI_ESTERO_CB}					id:servizio_incluso_9
${OBBLIGAZIONI_ESTERO}						//*[@id="CCF_servizi_inclusi_box"]/div[3]/ul/li[1]
${AZIONI_ESTERO_CB}							id:servizio_incluso_10
${AZIONI_ESTERO}							//*[@id="CCF_servizi_inclusi_box"]/div[3]/ul/li[2]

#----------------------------------------------------
# Risparmio e investimenti - Trading Online
#----------------------------------------------------
${LANDING_TRADING_ONLINE}					trading.html
${RISULTATI_TRADING_ONLINE}					trading/risultati.html
${BASE}										//*[@id="AS_garanzie"]/div/div[1]/ul/li[1]/a
${AVANZATA}									//*[@id="AS_garanzie"]/div/div[1]/ul/li[2]/a
${TO_CC_SI}									//*[@id="ZZ_list_conto_abbinato"]/ul/li[1]/a
${TO_CC_NO}									//*[@id="ZZ_list_conto_abbinato"]/ul/li[2]/a
${TO_CC_TUTTE}								//*[@id="ZZ_list_conto_abbinato"]/ul/li[3]/a
${VERSIONE_PROVA_SI}						//*[@id="ZZ_list_copertura"]/li[1]/a
${VERSIONE_PROVA_NO}						//*[@id="ZZ_list_copertura"]/li[2]/a
${VERSIONE_PROVA_TUTTE}						//*[@id="ZZ_list_copertura"]/li[3]/a

#----------------------------------------------------
# Pay TV - Pay TV Tradizionale
#----------------------------------------------------
${LANDING_PAY_TV}							pay-tv.html
${LANDING_PAY_TV_TRADIZIONALE}				pay-tv-tradizionale.html
${RISULTATI_PAY_TV_TRADIZIONALE}			pay-tv/risultati.html
${SERIE_TV_CB}								id:offerta_offerta_interesse_list_4
${SERIE_TV}									//*[@id="TV_form"]/div/div/div[1]/ul/li[1]
${CALCIO_CB}								id:offerta_offerta_interesse_list_1
${CALCIO}									//*[@id="TV_form"]/div/div/div[1]/ul/li[2]
${ALTRI_SPORT_CB}							id:offerta_offerta_interesse_list_2
${ALTRI_SPORT}								//*[@id="TV_form"]/div/div/div[1]/ul/li[3]
${CINEMA_CB}								id:offerta_offerta_interesse_list_3
${CINEMA}									//*[@id="TV_form"]/div/div/div[1]/ul/li[4]
${FAMIGLIA_BAMBINI_CB}						id:offerta_offerta_interesse_list_5
${FAMIGLIA_BAMBINI}							//*[@id="TV_form"]/div/div/div[1]/ul/li[5]
${HD_CB}									id:offerta_offerta_interesse_list_7
${HD}										//*[@id="TV_form"]/div/div/div[2]/ul/li[1]
${ON_DEMAND_CB}								id:offerta_offerta_interesse_list_9
${ON_DEMAND}								//*[@id="TV_form"]/div/div/div[2]/ul/li[2]
${INTERNET_CB}								id:offerta_offerta_interesse_list_8
${INTERNET}									//*[@id="TV_form"]/div/div/div[2]/ul/li[3]
${SKY_CB}									id:offerta_offerta_operatore_list_1
${SKY}										//*[@id="TV_form"]/div/div/div[3]/ul/li[1]
${SKY_FASTWEB_CB}							id:offerta_offerta_operatore_list_2
${SKY_FASTWEB}								//*[@id="TV_form"]/div/div/div[3]/ul/li[2]
${VODAFONE_TV_CB}							id:offerta_offerta_operatore_list_19
${VODAFONE_TV}								//*[@id="TV_form"]/div/div/div[3]/ul/li[3]
${DAZN_CB}									id:offerta_offerta_operatore_list_20
${DAZN}										//*[@id="TV_form"]/div/div/div[3]/ul/li[4]

#----------------------------------------------------
# Pay TV - Pay TV Online
#----------------------------------------------------
${LANDING_PAY_TV_ONLINE}					pay-tv-online.html
${RISULTATI_PAY_TV_ONLINE}					pay-tv/risultati/tv-online.html
${ABBONAMENTO_MENSILE_CB}					id:offerta_offerta_tipologia_list_0
${ABBONAMENTO_MENSILE}						//*[@id="ZZ_result_left"]/div/div[2]/ul/li[1]
${ONLINE_ON_DEMAND_CB}						id:offerta_offerta_tipologia_list_1
${ONLINE_ON_DEMAND}							//*[@id="ZZ_result_left"]/div/div[2]/ul/li[2]
${SMART_TV_CB}								id:offerta_offerta_dispositivo_list_8
${SMART_TV}									//*[@id="ZZ_result_left"]/div/div[4]/ul/li[1]
${COMPUTER_CB}								id:offerta_offerta_dispositivo_list_1
${COMPUTER}									//*[@id="ZZ_result_left"]/div/div[4]/ul/li[2]
${TABLET_CB}								id:offerta_offerta_dispositivo_list_2
${TABLET}									//*[@id="ZZ_result_left"]/div/div[4]/ul/li[3]
${SMARTPHONE_CB}							id:offerta_offerta_dispositivo_list_3
${ONLINE_SMARTPHONE}						//*[@id="ZZ_result_left"]/div/div[4]/ul/li[4]
${XBOX_CB}									id:offerta_offerta_dispositivo_list_4
${XBOX}										//*[@id="ZZ_result_left"]/div/div[4]/ul/li[5]
${PLAYSTATION_CB}							id:offerta_offerta_dispositivo_list_7
${PLAYSTATION}								//*[@id="ZZ_result_left"]/div/div[4]/ul/li[6]
${CHROMECAST_CB}							id:offerta_offerta_dispositivo_list_5
${CHROMECAST}								//*[@id="ZZ_result_left"]/div/div[4]/ul/li[7]
${APP_SMART_TV_CB}							id:offerta_offerta_dispositivo_list_6
${APP_SMART_TV}								//*[@id="ZZ_result_left"]/div/div[4]/ul/li[8]