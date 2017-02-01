package com.jpmis.dataops.parser.odi;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.MappingJsonFactory;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class IodsJsonParser {
	private static Long	iods_hrrchy_client_ancestor_actualclient	;
	private static Long	iods_hrrchy_client_ancestor_client_id	;
	private static String	iods_hrrchy_client_ancestor_client_name	;
	private static String	iods_hrrchy_client_ancestor_clnt_sbtp_cd	;
	private static String	iods_hrrchy_client_ancestor_created_by	;
	private static String	iods_hrrchy_client_ancestor_created_datetime	;
	private static String	iods_hrrchy_client_ancestor_crm_updt_dttm	;
	private static String	iods_hrrchy_client_ancestor_deleted_flag	;
	private static Long		iods_hrrchy_client_ancestor_domicile_ancestor_actualdomicile	;
	private static String	iods_hrrchy_client_ancestor_domicile_ancestor_created_by	;
	private static String	iods_hrrchy_client_ancestor_domicile_ancestor_created_datetime	;
	private static Long		iods_hrrchy_client_ancestor_domicile_ancestor_domicile_id	;
	private static String	iods_hrrchy_client_ancestor_domicile_ancestor_domicile_name	;
	private static String	iods_hrrchy_client_ancestor_domicile_ancestor_last_update_date	;
	private static String	iods_hrrchy_client_ancestor_domicile_ancestor_last_updated_by	;
	private static Long		iods_hrrchy_client_ancestor_domicile_ancestor_lvl	;
	private static String	iods_hrrchy_client_ancestor_domicile_created_by	;
	private static String	iods_hrrchy_client_ancestor_domicile_created_datetime	;
	private static Long	  	iods_hrrchy_client_ancestor_domicile_domicile_id	;
	private static String	iods_hrrchy_client_ancestor_domicile_domicile_key	;
	private static String	iods_hrrchy_client_ancestor_domicile_domicile_name	;
	private static String	iods_hrrchy_client_ancestor_domicile_iodsActualLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_ancestor_domicile_iodsLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_ancestor_domicile_last_update_date	;
	private static String	iods_hrrchy_client_ancestor_domicile_last_updated_by	;
	private static Long	 	iods_hrrchy_client_ancestor_domicile_lvl	;
	private static Long	 	iods_hrrchy_client_ancestor_domicile_parent_actualdomicile	;
	private static String	iods_hrrchy_client_ancestor_domicile_parent_created_by	;
	private static String	iods_hrrchy_client_ancestor_domicile_parent_created_datetime	;
	private static Long	 	iods_hrrchy_client_ancestor_domicile_parent_domicile_id	;
	private static String	iods_hrrchy_client_ancestor_domicile_parent_domicile_name	;
	private static String	iods_hrrchy_client_ancestor_domicile_parent_last_update_date	;
	private static String	iods_hrrchy_client_ancestor_domicile_parent_last_updated_by	;
	private static Long	 	iods_hrrchy_client_ancestor_domicile_parent_lvl	;
	private static Long	 	iods_hrrchy_client_ancestor_domicile_id	;
	private static String	iods_hrrchy_client_ancestor_domicile_key	;
	private static Long	 	iods_hrrchy_client_ancestor_franchise_ancestor_actualfranchise	;
	private static String	iods_hrrchy_client_ancestor_franchise_ancestor_created_by	;
	private static String	iods_hrrchy_client_ancestor_franchise_ancestor_created_datetime	;
	private static Long	 	iods_hrrchy_client_ancestor_franchise_ancestor_franchise_id	;
	private static String	iods_hrrchy_client_ancestor_franchise_ancestor_franchise_name	;
	private static String	iods_hrrchy_client_ancestor_franchise_ancestor_last_update_date	;
	private static String	iods_hrrchy_client_ancestor_franchise_ancestor_last_updated_by	;
	private static Long	 	iods_hrrchy_client_ancestor_franchise_ancestor_lvl	;
	private static String	iods_hrrchy_client_ancestor_franchise_created_by	;
	private static String	iods_hrrchy_client_ancestor_franchise_created_datetime	;
	private static Long	 	iods_hrrchy_client_ancestor_franchise_franchise_id	;
	private static String	iods_hrrchy_client_ancestor_franchise_franchise_key	;
	private static String	iods_hrrchy_client_ancestor_franchise_franchise_name	;
	private static String	iods_hrrchy_client_ancestor_franchise_iodsActualLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_ancestor_franchise_iodsLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_ancestor_franchise_last_update_date	;
	private static String	iods_hrrchy_client_ancestor_franchise_last_updated_by	;
	private static Long		iods_hrrchy_client_ancestor_franchise_lvl	;
	private static Long		iods_hrrchy_client_ancestor_franchise_parent_actualfranchise	;
	private static String	iods_hrrchy_client_ancestor_franchise_parent_created_by	;
	private static String	iods_hrrchy_client_ancestor_franchise_parent_created_datetime	;
	private static Long		iods_hrrchy_client_ancestor_franchise_parent_franchise_id	;
	private static String	iods_hrrchy_client_ancestor_franchise_parent_franchise_name	;
	private static String	iods_hrrchy_client_ancestor_franchise_parent_last_update_date	;
	private static String	iods_hrrchy_client_ancestor_franchise_parent_last_updated_by	;
	private static Long		iods_hrrchy_client_ancestor_franchise_parent_lvl	;
	private static Long		iods_hrrchy_client_ancestor_franchise_id	;
	private static String	iods_hrrchy_client_ancestor_franchise_key	;
	private static String	iods_hrrchy_client_ancestor_icm_flg	;
	private static String	iods_hrrchy_client_ancestor_icm_flg_updt_dttm	;
	private static String	iods_hrrchy_client_ancestor_last_update_date	;
	private static String	iods_hrrchy_client_ancestor_last_updated_by	;
	private static Long		iods_hrrchy_client_ancestor_lvl	;
	private static Long		iods_hrrchy_client_ancestor_nmbr_of_actn_itms	;
	private static Long		iods_hrrchy_client_ancestor_nmbr_of_actvts	;
	private static Long		iods_hrrchy_client_ancestor_nmbr_of_cntcts	;
	private static String	iods_hrrchy_client_ancestor_nmbr_of_vts	;
	private static Long		iods_hrrchy_client_ancestor_sector_ancestor_actualsector	;
	private static String	iods_hrrchy_client_ancestor_sector_ancestor_created_by	;
	private static String	iods_hrrchy_client_ancestor_sector_ancestor_created_datetime	;
	private static String	iods_hrrchy_client_ancestor_sector_ancestor_last_update_date	;
	private static String	iods_hrrchy_client_ancestor_sector_ancestor_last_updated_by	;
	private static Long		iods_hrrchy_client_ancestor_sector_ancestor_lvl	;
	private static Long		iods_hrrchy_client_ancestor_sector_ancestor_sector_id	;
	private static String	iods_hrrchy_client_ancestor_sector_ancestor_sector_name	;
	private static String	iods_hrrchy_client_ancestor_sector_created_by	;
	private static String	iods_hrrchy_client_ancestor_sector_created_datetime	;
	private static String	iods_hrrchy_client_ancestor_sector_iodsActualLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_ancestor_sector_iodsLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_ancestor_sector_last_update_date	;
	private static String	iods_hrrchy_client_ancestor_sector_last_updated_by	;
	private static Long		iods_hrrchy_client_ancestor_sector_lvl	;
	private static Long		iods_hrrchy_client_ancestor_sector_parent_actualsector	;
	private static String	iods_hrrchy_client_ancestor_sector_parent_created_by	;
	private static String	iods_hrrchy_client_ancestor_sector_parent_created_datetime	;
	private static String	iods_hrrchy_client_ancestor_sector_parent_last_update_date	;
	private static String	iods_hrrchy_client_ancestor_sector_parent_last_updated_by	;
	private static Long		iods_hrrchy_client_ancestor_sector_parent_lvl	;
	private static Long		iods_hrrchy_client_ancestor_sector_parent_sector_id	;
	private static String	iods_hrrchy_client_ancestor_sector_parent_sector_name	;
	private static Long		iods_hrrchy_client_ancestor_sector_sector_id	;
	private static String	iods_hrrchy_client_ancestor_sector_sector_key	;
	private static String	iods_hrrchy_client_ancestor_sector_sector_name	;
	private static Long		iods_hrrchy_client_ancestor_sector_id	;
	private static String	iods_hrrchy_client_ancestor_sector_key	;
	private static String	iods_hrrchy_client_cas_id	;
	private static Long		iods_hrrchy_client_client_id	;
	private static String	iods_hrrchy_client_client_name	;
	private static String	iods_hrrchy_client_clnt_sbtp_cd	;
	private static String	iods_hrrchy_client_cmu_auto_manual_excptn_cmmnt	;
	private static String	iods_hrrchy_client_cmu_hry_flag	;
	private static String	iods_hrrchy_client_conf_flag	;
	private static String	iods_hrrchy_client_created_by	;
	private static String	iods_hrrchy_client_created_datetime	;
	private static String	iods_hrrchy_client_crm_updt_dttm	;
	private static String	iods_hrrchy_client_deleted_flag	;
	private static Long		iods_hrrchy_client_domicile_ancestor_actualdomicile	;
	private static String	iods_hrrchy_client_domicile_ancestor_created_by	;
	private static String	iods_hrrchy_client_domicile_ancestor_created_datetime	;
	private static Long		iods_hrrchy_client_domicile_ancestor_domicile_id	;
	private static String	iods_hrrchy_client_domicile_ancestor_domicile_name	;
	private static String	iods_hrrchy_client_domicile_ancestor_last_update_date	;
	private static String	iods_hrrchy_client_domicile_ancestor_last_updated_by	;
	private static Long		iods_hrrchy_client_domicile_ancestor_lvl	;
	private static String	iods_hrrchy_client_domicile_created_by	;
	private static String	iods_hrrchy_client_domicile_created_datetime	;
	private static Long		iods_hrrchy_client_domicile_domicile_id	;
	private static String	iods_hrrchy_client_domicile_domicile_key	;
	private static String	iods_hrrchy_client_domicile_domicile_name	;
	private static String	iods_hrrchy_client_domicile_iodsActualLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_domicile_iodsLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_domicile_last_update_date	;
	private static String	iods_hrrchy_client_domicile_last_updated_by	;
	private static Long		iods_hrrchy_client_domicile_lvl	;
	private static Long		iods_hrrchy_client_domicile_parent_actualdomicile	;
	private static String	iods_hrrchy_client_domicile_parent_created_by	;
	private static String	iods_hrrchy_client_domicile_parent_created_datetime	;
	private static Long		iods_hrrchy_client_domicile_parent_domicile_id	;
	private static String	iods_hrrchy_client_domicile_parent_domicile_name	;
	private static String	iods_hrrchy_client_domicile_parent_last_update_date	;
	private static String	iods_hrrchy_client_domicile_parent_last_updated_by	;
	private static Long		iods_hrrchy_client_domicile_parent_lvl	;
	private static Long		iods_hrrchy_client_domicile_id	;
	private static String	iods_hrrchy_client_domicile_key	;
	private static String	iods_hrrchy_client_ecid	;
	private static Long		iods_hrrchy_client_franchise_ancestor_actualfranchise	;
	private static String	iods_hrrchy_client_franchise_ancestor_created_by	;
	private static String	iods_hrrchy_client_franchise_ancestor_created_datetime	;
	private static Long		iods_hrrchy_client_franchise_ancestor_franchise_id	;
	private static String	iods_hrrchy_client_franchise_ancestor_franchise_name	;
	private static String	iods_hrrchy_client_franchise_ancestor_last_update_date	;
	private static String	iods_hrrchy_client_franchise_ancestor_last_updated_by	;
	private static Long		iods_hrrchy_client_franchise_ancestor_lvl	;
	private static String	iods_hrrchy_client_franchise_created_by	;
	private static String	iods_hrrchy_client_franchise_created_datetime	;
	private static Long		iods_hrrchy_client_franchise_franchise_id	;
	private static String	iods_hrrchy_client_franchise_franchise_key	;
	private static String	iods_hrrchy_client_franchise_franchise_name	;
	private static String	iods_hrrchy_client_franchise_iodsActualLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_franchise_iodsLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_franchise_last_update_date	;
	private static String	iods_hrrchy_client_franchise_last_updated_by	;
	private static Long		iods_hrrchy_client_franchise_lvl	;
	private static Long		iods_hrrchy_client_franchise_parent_actualfranchise	;
	private static String	iods_hrrchy_client_franchise_parent_created_by	;
	private static String	iods_hrrchy_client_franchise_parent_created_datetime	;
	private static Long		iods_hrrchy_client_franchise_parent_franchise_id	;
	private static String	iods_hrrchy_client_franchise_parent_franchise_name	;
	private static String	iods_hrrchy_client_franchise_parent_last_update_date	;
	private static String	iods_hrrchy_client_franchise_parent_last_updated_by	;
	private static Long		iods_hrrchy_client_franchise_parent_lvl	;
	private static Long 	iods_hrrchy_client_franchise_id	;
	private static String	iods_hrrchy_client_franchise_key	;
	private static String	iods_hrrchy_client_iodsLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_last_update_date	;
	private static String	iods_hrrchy_client_last_updated_by	;
	private static String	iods_hrrchy_client_lob	;
	private static String	iods_hrrchy_client_lst_trd_dt	;
	private static String	iods_hrrchy_client_lst_trd_dt_old	;
	private static Long		iods_hrrchy_client_lvl	;
	private static String	iods_hrrchy_client_naic	;
	private static String	iods_hrrchy_client_nmbr_of_actvts	;
	private static Long		iods_hrrchy_client_parent_actualclient	;
	private static Long		iods_hrrchy_client_parent_client_id	;
	private static String	iods_hrrchy_client_parent_client_name	;
	private static String	iods_hrrchy_client_parent_clnt_sbtp_cd	;
	private static String	iods_hrrchy_client_parent_created_by	;
	private static String	iods_hrrchy_client_parent_created_datetime	;
	private static String	iods_hrrchy_client_parent_crm_updt_dttm	;
	private static String	iods_hrrchy_client_parent_deleted_flag	;
	private static Long		iods_hrrchy_client_parent_domicile_ancestor_actualdomicile	;
	private static String	iods_hrrchy_client_parent_domicile_ancestor_created_by	;
	private static String	iods_hrrchy_client_parent_domicile_ancestor_created_datetime	;
	private static Long		iods_hrrchy_client_parent_domicile_ancestor_domicile_id	;
	private static String	iods_hrrchy_client_parent_domicile_ancestor_domicile_name	;
	private static String	iods_hrrchy_client_parent_domicile_ancestor_last_update_date	;
	private static String	iods_hrrchy_client_parent_domicile_ancestor_last_updated_by	;
	private static Long		iods_hrrchy_client_parent_domicile_ancestor_lvl	;
	private static String	iods_hrrchy_client_parent_domicile_created_by	;
	private static String	iods_hrrchy_client_parent_domicile_created_datetime	;
	private static Long		iods_hrrchy_client_parent_domicile_domicile_id	;
	private static String	iods_hrrchy_client_parent_domicile_domicile_key	;
	private static String	iods_hrrchy_client_parent_domicile_domicile_name	;
	private static String	iods_hrrchy_client_parent_domicile_iodsActualLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_parent_domicile_iodsLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_parent_domicile_last_update_date	;
	private static String	iods_hrrchy_client_parent_domicile_last_updated_by	;
	private static Long		iods_hrrchy_client_parent_domicile_lvl	;
	private static Long		iods_hrrchy_client_parent_domicile_parent_actualdomicile	;
	private static String	iods_hrrchy_client_parent_domicile_parent_created_by	;
	private static String	iods_hrrchy_client_parent_domicile_parent_created_datetime	;
	private static Long		iods_hrrchy_client_parent_domicile_parent_domicile_id	;
	private static String	iods_hrrchy_client_parent_domicile_parent_domicile_name	;
	private static String	iods_hrrchy_client_parent_domicile_parent_last_update_date	;
	private static String	iods_hrrchy_client_parent_domicile_parent_last_updated_by	;
	private static Long		iods_hrrchy_client_parent_domicile_parent_lvl	;
	private static Long		iods_hrrchy_client_parent_domicile_id	;
	private static String	iods_hrrchy_client_parent_domicile_key	;
	private static Long		iods_hrrchy_client_parent_franchise_ancestor_actualfranchise	;
	private static String	iods_hrrchy_client_parent_franchise_ancestor_created_by	;
	private static String	iods_hrrchy_client_parent_franchise_ancestor_created_datetime	;
	private static Long		iods_hrrchy_client_parent_franchise_ancestor_franchise_id	;
	private static String	iods_hrrchy_client_parent_franchise_ancestor_franchise_name	;
	private static String	iods_hrrchy_client_parent_franchise_ancestor_last_update_date	;
	private static String	iods_hrrchy_client_parent_franchise_ancestor_last_updated_by	;
	private static Long		iods_hrrchy_client_parent_franchise_ancestor_lvl	;
	private static String	iods_hrrchy_client_parent_franchise_created_by	;
	private static String	iods_hrrchy_client_parent_franchise_created_datetime	;
	private static Long		iods_hrrchy_client_parent_franchise_franchise_id	;
	private static String	iods_hrrchy_client_parent_franchise_franchise_key	;
	private static String	iods_hrrchy_client_parent_franchise_franchise_name	;
	private static String	iods_hrrchy_client_parent_franchise_iodsActualLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_parent_franchise_iodsLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_parent_franchise_last_update_date	;
	private static String	iods_hrrchy_client_parent_franchise_last_updated_by	;
	private static Long		iods_hrrchy_client_parent_franchise_lvl	;
	private static Long		iods_hrrchy_client_parent_franchise_parent_actualfranchise	;
	private static String	iods_hrrchy_client_parent_franchise_parent_created_by	;
	private static String	iods_hrrchy_client_parent_franchise_parent_created_datetime	;
	private static Long		iods_hrrchy_client_parent_franchise_parent_franchise_id	;
	private static String	iods_hrrchy_client_parent_franchise_parent_franchise_name	;
	private static String	iods_hrrchy_client_parent_franchise_parent_last_update_date	;
	private static String	iods_hrrchy_client_parent_franchise_parent_last_updated_by	;
	private static Long		iods_hrrchy_client_parent_franchise_parent_lvl	;
	private static Long		iods_hrrchy_client_parent_franchise_id	;
	private static String	iods_hrrchy_client_parent_franchise_key	;
	private static String	iods_hrrchy_client_parent_last_update_date	;
	private static String	iods_hrrchy_client_parent_last_updated_by	;
	private static Long		iods_hrrchy_client_parent_lvl	;
	private static Long		iods_hrrchy_client_parent_nmbr_of_actvts	;
	private static Long		iods_hrrchy_client_parent_nmbr_of_cntcts	;
	private static String	iods_hrrchy_client_parent_nmbr_of_vts	;
	private static Long		iods_hrrchy_client_parent_sector_ancestor_actualsector	;
	private static String	iods_hrrchy_client_parent_sector_ancestor_created_by	;
	private static String	iods_hrrchy_client_parent_sector_ancestor_created_datetime	;
	private static String	iods_hrrchy_client_parent_sector_ancestor_last_update_date	;
	private static String	iods_hrrchy_client_parent_sector_ancestor_last_updated_by	;
	private static Long		iods_hrrchy_client_parent_sector_ancestor_lvl	;
	private static Long		iods_hrrchy_client_parent_sector_ancestor_sector_id	;
	private static String	iods_hrrchy_client_parent_sector_ancestor_sector_name	;
	private static String	iods_hrrchy_client_parent_sector_created_by	;
	private static String	iods_hrrchy_client_parent_sector_created_datetime	;
	private static String	iods_hrrchy_client_parent_sector_iodsActualLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_parent_sector_iodsLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_parent_sector_last_update_date	;
	private static String	iods_hrrchy_client_parent_sector_last_updated_by	;
	private static Long		iods_hrrchy_client_parent_sector_lvl	;
	private static Long		iods_hrrchy_client_parent_sector_parent_actualsector	;
	private static String	iods_hrrchy_client_parent_sector_parent_created_by	;
	private static String	iods_hrrchy_client_parent_sector_parent_created_datetime	;
	private static String	iods_hrrchy_client_parent_sector_parent_last_update_date	;
	private static String	iods_hrrchy_client_parent_sector_parent_last_updated_by	;
	private static Long		iods_hrrchy_client_parent_sector_parent_lvl	;
	private static Long		iods_hrrchy_client_parent_sector_parent_sector_id	;
	private static String	iods_hrrchy_client_parent_sector_parent_sector_name	;
	private static Long		iods_hrrchy_client_parent_sector_sector_id	;
	private static String	iods_hrrchy_client_parent_sector_sector_key	;
	private static String	iods_hrrchy_client_parent_sector_sector_name	;
	private static Long		iods_hrrchy_client_parent_sector_id	;
	private static String	iods_hrrchy_client_parent_sector_key	;
	private static String	iods_hrrchy_client_party_id	;
	private static String	iods_hrrchy_client_party_name	;
	private static String	iods_hrrchy_client_prof_flag	;
	private static String	iods_hrrchy_client_rvn_gnrtr_tag	;
	private static String	iods_hrrchy_client_rvn_gnrtr_updt_dttm	;
	private static Double	iods_hrrchy_client_rvn_pfy	;
	private static Double	iods_hrrchy_client_rvn_ytd	;
	private static Long		iods_hrrchy_client_sector_ancestor_actualsector	;
	private static String	iods_hrrchy_client_sector_ancestor_created_by	;
	private static String	iods_hrrchy_client_sector_ancestor_created_datetime	;
	private static String	iods_hrrchy_client_sector_ancestor_last_update_date	;
	private static String	iods_hrrchy_client_sector_ancestor_last_updated_by	;
	private static Long		iods_hrrchy_client_sector_ancestor_lvl	;
	private static Long		iods_hrrchy_client_sector_ancestor_sector_id	;
	private static String	iods_hrrchy_client_sector_ancestor_sector_name	;
	private static String	iods_hrrchy_client_sector_created_by	;
	private static String	iods_hrrchy_client_sector_created_datetime	;
	private static String	iods_hrrchy_client_sector_iodsActualLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_sector_iodsLastUpdatedDateTime	;
	private static String	iods_hrrchy_client_sector_last_update_date	;
	private static String	iods_hrrchy_client_sector_last_updated_by	;
	private static Long		iods_hrrchy_client_sector_lvl	;
	private static Long		iods_hrrchy_client_sector_parent_actualsector	;
	private static String	iods_hrrchy_client_sector_parent_created_by	;
	private static String	iods_hrrchy_client_sector_parent_created_datetime	;
	private static String	iods_hrrchy_client_sector_parent_last_update_date	;
	private static String	iods_hrrchy_client_sector_parent_last_updated_by	;
	private static Long		iods_hrrchy_client_sector_parent_lvl	;
	private static Long		iods_hrrchy_client_sector_parent_sector_id	;
	private static String	iods_hrrchy_client_sector_parent_sector_name	;
	private static Long		iods_hrrchy_client_sector_sector_id	;
	private static String	iods_hrrchy_client_sector_sector_key	;
	private static String	iods_hrrchy_client_sector_sector_name	;
	private static Long		iods_hrrchy_client_sector_id	;
	private static String	iods_hrrchy_client_sector_key	;
	private static String	iods_hrrchy_client_spn_id	;
	private static String	iods_hrrchy_client_status	;
	private static String	iods_hrrchy_client_trd_rvn_updt_dttm	;
	private static String	iods_hrrchy_client_up_cas_id	;
	private static String	iods_hrrchy_client_up_spn	;
	
	private static String iods_hrrchy_client_ancestor_sctr_ovrrd_by;
	private static String iods_hrrchy_client_ancestor_sctr_ovrrd_cmmnts;
	private static String iods_hrrchy_client_ancestor_sctr_ovrrd_dttm;
	private static String iods_hrrchy_client_ancestor_sctr_ovrrd_flg;
	private static String iods_hrrchy_client_ancestor_sctr_ovrrd_rsn;
	private static String iods_hrrchy_client_nmbr_of_cntcts;
	private static String iods_hrrchy_client_sctr_ovrrd_by;
	private static String iods_hrrchy_client_sctr_ovrrd_cmmnts;
	private static String iods_hrrchy_client_sctr_ovrrd_dttm;
	private static String iods_hrrchy_client_sctr_ovrrd_flg;
	private static String iods_hrrchy_client_sctr_ovrrd_rsn;
	
	

	private static  JSONObject iods_hrrchy_client_ancestor_domicile_obj;
	private static  JSONObject iods_hrrchy_client_ancestor_franchise_obj;
	private static  JSONObject iods_hrrchy_client_ancestor_sector_obj;
	private static JSONArray iods_hrrchy_client_ancestor_domicile_ancestor_ary;
	private static JSONObject iods_hrrchy_client_ancestor_domicile_parent_obj;
	private static JSONArray iods_hrrchy_client_ancestor_franchise_ancestor_ary;
	private static JSONObject iods_hrrchy_client_ancestor_franchise_parent_obj;
	private static JSONObject iods_hrrchy_client_ancestor_sector_parent_obj;
	private static JSONArray iods_hrrchy_client_ancestor_sector_ancestor_ary;
	
	private static JSONArray iods_hrrchy_client_domicile_ancestor_ary;
	private static JSONObject iods_hrrchy_client_domicile_parent_obj;
	
	private static JSONArray iods_hrrchy_client_franchise_ancestor_ary;
	private static JSONObject iods_hrrchy_client_franchise_parent_obj;
	
	private static JSONArray iods_hrrchy_client_sector_ancestor_ary;
	private static JSONObject iods_hrrchy_client_sector_parent_obj;

	private static JSONArray iods_hrrchy_client_parent_franchise_ancestor_ary;
	private static JSONObject iods_hrrchy_client_parent_franchise_parent_obj; 
	private static JSONObject iods_hrrchy_client_parent_domicile_obj;
	private static JSONArray iods_hrrchy_client_parent_franchise_ary;
	private static JSONArray iods_hrrchy_client_parent_sector_ancestor_ary;
	private static JSONObject iods_hrrchy_client_parent_sector_parent_obj;
	private static JSONArray iods_hrrchy_client_parent_domicile_ancestor_ary;
	private static  JSONObject iods_hrrchy_client_parent_domicile_parent_obj;
	
	private static final char DELIMITER = '\u0001';
	//private static final String DELIMITER = ",";
			

	private static JSONParser jsonParser = new JSONParser();
	
	public static void main(String[] args) throws IOException, ParseException {
			try {
				getJsonContent(args[0], args[1] );
			} catch (Exception e) {
				e.printStackTrace();
			}
		
	}

	public static void getJsonContent(String inputfile, String output) throws Exception {
		JsonFactory f = new MappingJsonFactory();
        JsonParser jp = f.createJsonParser(new File(inputfile));
        JsonToken current;
        current = jp.nextToken();
        
        if (current != JsonToken.START_ARRAY) {
          System.out.println("Error: root should be object: quiting.");
          return;
        }
        
        BufferedWriter writer = null;
		writer = new BufferedWriter(new FileWriter(output));
		writeHeaderToText(writer);
        while (jp.nextToken() != JsonToken.END_ARRAY) {
	        JsonNode node = jp.readValueAsTree();
            String iods_hrrchy_client_str = node.get("iods_hrrchy_client").toString();
	        iodsObj(iods_hrrchy_client_str,writer);
	        nullallvalues();
        }
        if (writer != null)
    		writer.close();
	}         
	        
	public static void iodsObj(String iods_hrrchy_client_str,BufferedWriter writer) throws Exception{
		Object object = null;
		JSONObject iods_hrrchy_client = null;

		object = jsonParser.parse(iods_hrrchy_client_str);
		iods_hrrchy_client = (JSONObject) object;
		
		/**Process client hierarchy domicile ***/
		initClientHierarchyDomicile(iods_hrrchy_client,writer);
		
		/**Process client hierarchy franchise ***/	
		initClientHierarchyFranchise(iods_hrrchy_client,writer);
		
		/**Process client hierarchy franchise ***/
		initClientHierarchyParent(iods_hrrchy_client, writer);
		
		/**Process client hierarchy sector array**/
		initClientHierarchySector(iods_hrrchy_client, writer);
		
		/**Process client hierarchy ancestor***/
		/**
		 * 1. Write client_hierarch attributes and ancestor attributes - 1 row.
		 * 2. Write client_hierarch attributes, ancestor attributes, sector attributes 
		 * and sector parent attributes for each sector ancestor - total 5 row
		 * 3. Write client_hierarch attributes, ancestor attributes, domicile attributes
		 * and domicile parent attributes for each domicile ancestor - total 3 rows
		 * 4. Write client_hierarch attributes, ancestor attributes, franchise attributes
		 * and franchise parent attributes for each franchise ancestor - total 3 rows.
		 */
		initClientHierarchyAncestor(iods_hrrchy_client,writer);	
	}

	public static void initClientHierarchyAttributes(JSONObject iods_hrrchy_client){
		iods_hrrchy_client_cas_id = (String) iods_hrrchy_client.get("cas_id");
		iods_hrrchy_client_client_id = (Long) iods_hrrchy_client.get("client_id");
		iods_hrrchy_client_client_name = (String) iods_hrrchy_client.get("client_name");
		iods_hrrchy_client_clnt_sbtp_cd = (String) iods_hrrchy_client.get("clnt_sbtp_cd");
		iods_hrrchy_client_cmu_auto_manual_excptn_cmmnt = (String) iods_hrrchy_client.get("cmu_auto_manual_excptn_cmmnt");
		iods_hrrchy_client_cmu_hry_flag = (String) iods_hrrchy_client.get("cmu_hry_flag");
		iods_hrrchy_client_conf_flag = (String) iods_hrrchy_client.get("conf_flag");
		iods_hrrchy_client_created_by = (String) iods_hrrchy_client.get("created_by");
		iods_hrrchy_client_created_datetime = (String) iods_hrrchy_client.get("created_datetime");
		iods_hrrchy_client_crm_updt_dttm = (String) iods_hrrchy_client.get("crm_updt_dttm");
		iods_hrrchy_client_deleted_flag = (String) iods_hrrchy_client.get("deleted_flag");
		iods_hrrchy_client_domicile_id = (Long) iods_hrrchy_client.get("domicile_id");
		iods_hrrchy_client_domicile_key = (String) iods_hrrchy_client.get("domicile_key");
		iods_hrrchy_client_ecid = (String) iods_hrrchy_client.get("ecid");
		iods_hrrchy_client_franchise_id = (Long) iods_hrrchy_client.get("franchise_id");
		iods_hrrchy_client_franchise_key = (String) iods_hrrchy_client.get("franchise_key");
		iods_hrrchy_client_iodsLastUpdatedDateTime = (String) iods_hrrchy_client.get("iodsLastUpdatedDateTime");
		iods_hrrchy_client_last_update_date = (String) iods_hrrchy_client.get("last_update_date");
		iods_hrrchy_client_last_updated_by = (String) iods_hrrchy_client.get("last_updated_by");
		iods_hrrchy_client_lob = (String) iods_hrrchy_client.get("lob");
		iods_hrrchy_client_lst_trd_dt = (String) iods_hrrchy_client.get("lst_trd_dt");
		iods_hrrchy_client_lst_trd_dt_old = (String) iods_hrrchy_client.get("lst_trd_dt_old");
		iods_hrrchy_client_lvl = (Long) iods_hrrchy_client.get("lvl");
		iods_hrrchy_client_naic = (String) iods_hrrchy_client.get("naic");
		if(iods_hrrchy_client.get("nmbr_of_cntcts") instanceof String && iods_hrrchy_client.get("nmbr_of_cntcts") != null){
		iods_hrrchy_client_nmbr_of_cntcts  = (String) iods_hrrchy_client.get("nmbr_of_cntcts");
		} else if (iods_hrrchy_client.get("nmbr_of_cntcts") instanceof Long && iods_hrrchy_client.get("nmbr_of_cntcts") != null){
			Long iods_hrrchy_client_nmbr_of_cntcts_lng  = (Long) iods_hrrchy_client.get("nmbr_of_cntcts");
			iods_hrrchy_client_nmbr_of_cntcts = iods_hrrchy_client_nmbr_of_cntcts_lng.toString();
		}
		iods_hrrchy_client_sctr_ovrrd_by  = (String) iods_hrrchy_client.get("sctr_ovrrd_by");
		iods_hrrchy_client_sctr_ovrrd_cmmnts  = (String) iods_hrrchy_client.get("sctr_ovrrd_cmmnts");
		iods_hrrchy_client_sctr_ovrrd_dttm  = (String) iods_hrrchy_client.get("sctr_ovrrd_dttm");
		iods_hrrchy_client_sctr_ovrrd_flg  = (String) iods_hrrchy_client.get("sctr_ovrrd_flg");
		iods_hrrchy_client_sctr_ovrrd_rsn  = (String) iods_hrrchy_client.get("sctr_ovrrd_rsn");
		
		if(iods_hrrchy_client.get("nmbr_of_actvts") instanceof String &&  iods_hrrchy_client.get("nmbr_of_actvts") != null){
		iods_hrrchy_client_nmbr_of_actvts = (String) iods_hrrchy_client.get("nmbr_of_actvts");
		} else if (iods_hrrchy_client.get("nmbr_of_actvts") instanceof Long && iods_hrrchy_client.get("nmbr_of_actvts") != null){
			Long iods_hrrchy_client_nmbr_of_actvts_lng = (Long) iods_hrrchy_client.get("nmbr_of_actvts");
			iods_hrrchy_client_nmbr_of_actvts = iods_hrrchy_client_nmbr_of_actvts_lng.toString();
		}else {
			iods_hrrchy_client_nmbr_of_actvts = null;
		}
		iods_hrrchy_client_party_id = (String) iods_hrrchy_client.get("party_id");
		iods_hrrchy_client_party_name = (String) iods_hrrchy_client.get("party_name");
		iods_hrrchy_client_prof_flag = (String) iods_hrrchy_client.get("prof_flag");
		iods_hrrchy_client_rvn_gnrtr_tag = (String) iods_hrrchy_client.get("rvn_gnrtr_tag");
		iods_hrrchy_client_rvn_gnrtr_updt_dttm = (String) iods_hrrchy_client.get("rvn_gnrtr_updt_dttm");
		if (iods_hrrchy_client.get("rvn_pfy") instanceof Double  && iods_hrrchy_client.get("rvn_pfy") != null) {
		iods_hrrchy_client_rvn_pfy = (Double) iods_hrrchy_client.get("rvn_pfy");
		} else if (iods_hrrchy_client.get("rvn_pfy") instanceof Long && iods_hrrchy_client.get("rvn_pfy") != null) { 
			Long iods_hrrchy_client_rvn_pfy_lng = (Long) iods_hrrchy_client.get("rvn_pfy");
			iods_hrrchy_client_rvn_pfy = iods_hrrchy_client_rvn_pfy_lng.doubleValue();
		}	else {
			iods_hrrchy_client_rvn_pfy = null;
		}
		if (iods_hrrchy_client.get("rvn_ytd") instanceof Double  && iods_hrrchy_client.get("rvn_ytd") != null) {
		iods_hrrchy_client_rvn_ytd = (Double) iods_hrrchy_client.get("rvn_ytd" );
		} else if (iods_hrrchy_client.get("rvn_ytd") instanceof Long && iods_hrrchy_client.get("rvn_ytd") != null) { 
			Long iods_hrrchy_client_rvn_ytd_long = (Long) iods_hrrchy_client.get("rvn_ytd");
			iods_hrrchy_client_rvn_ytd = iods_hrrchy_client_rvn_ytd_long.doubleValue();
		}else  {
			iods_hrrchy_client_rvn_ytd = null;
		}
		
		if(iods_hrrchy_client.get("sector_id") != null){
		iods_hrrchy_client_sector_id = (Long) iods_hrrchy_client.get("sector_id");
		} else {
			iods_hrrchy_client_sector_id = null;
		}
		iods_hrrchy_client_sector_key = (String) iods_hrrchy_client.get("sector_key");
		iods_hrrchy_client_spn_id = (String) iods_hrrchy_client.get("spn_id");
		iods_hrrchy_client_status = (String) iods_hrrchy_client.get("status");	
		iods_hrrchy_client_trd_rvn_updt_dttm = (String) iods_hrrchy_client.get("trd_rvn_updt_dttm");
		iods_hrrchy_client_up_cas_id = (String) iods_hrrchy_client.get("up_cas_id");
		iods_hrrchy_client_up_spn = (String) iods_hrrchy_client.get("up_spn");
	}
		
	private static void initClientHierarchySector(JSONObject iods_hrrchy_client, BufferedWriter writer) throws IOException
	{
		JSONObject iods_hrrchy_client_sector_obj = (JSONObject) iods_hrrchy_client.get("sector");
		if(iods_hrrchy_client_sector_obj != null)
		{
			
			/*prepare for new client hierarcy domicile row **/
			nullallvalues();
			/*Initialize client hierarchy attributes**/
			initClientHierarchyAttributes(iods_hrrchy_client);
			
			/*Initialize client hierarchy secrtor attributes**/
			iods_hrrchy_client_sector_created_by = (String) iods_hrrchy_client_sector_obj.get("created_by");
			iods_hrrchy_client_sector_created_datetime = (String) iods_hrrchy_client_sector_obj.get("created_datetime");
			iods_hrrchy_client_sector_iodsActualLastUpdatedDateTime = (String) iods_hrrchy_client_sector_obj.get("iodsActualLastUpdatedDateTime");
			iods_hrrchy_client_sector_iodsLastUpdatedDateTime = (String) iods_hrrchy_client_sector_obj.get("iodsLastUpdatedDateTime");
			iods_hrrchy_client_sector_last_update_date = (String) iods_hrrchy_client_sector_obj.get("last_update_date");
			iods_hrrchy_client_sector_last_updated_by = (String) iods_hrrchy_client_sector_obj.get("last_updated_by");
			if( iods_hrrchy_client_sector_obj.get("lvl")!=null){
				iods_hrrchy_client_sector_lvl = (Long) iods_hrrchy_client_sector_obj.get("lvl");
			}
			if( iods_hrrchy_client_sector_obj.get("sector_id")!=null){
				iods_hrrchy_client_sector_sector_id = (Long) iods_hrrchy_client_sector_obj.get("sector_id");
			}
			iods_hrrchy_client_sector_sector_key = (String) iods_hrrchy_client_sector_obj.get("sector_key");
			iods_hrrchy_client_sector_sector_name = (String) iods_hrrchy_client_sector_obj.get("sector_name");
			
			/*Initialize client hierarchy sector parent attributes**/
			iods_hrrchy_client_sector_parent_obj = (JSONObject) iods_hrrchy_client_sector_obj.get("parent");
			if(iods_hrrchy_client_sector_parent_obj != null )
			{
				iods_hrrchy_client_sector_parent_actualsector = (Long) iods_hrrchy_client_sector_parent_obj.get("actualsector");
				iods_hrrchy_client_sector_parent_created_by = (String) iods_hrrchy_client_sector_parent_obj.get("created_by");
				iods_hrrchy_client_sector_parent_created_datetime = (String) iods_hrrchy_client_sector_parent_obj.get("created_datetime");
				iods_hrrchy_client_sector_parent_last_update_date = (String) iods_hrrchy_client_sector_parent_obj.get("last_update_date");
				iods_hrrchy_client_sector_parent_last_updated_by = (String) iods_hrrchy_client_sector_parent_obj.get("last_updated_by");
				iods_hrrchy_client_sector_parent_lvl = (Long) iods_hrrchy_client_sector_parent_obj.get("lvl");
				iods_hrrchy_client_sector_parent_sector_id = (Long) iods_hrrchy_client_sector_parent_obj.get("sector_id");
				iods_hrrchy_client_sector_parent_sector_name = (String) iods_hrrchy_client_sector_parent_obj.get("sector_name");
			}
			
			iods_hrrchy_client_sector_ancestor_ary = (JSONArray) iods_hrrchy_client_sector_obj.get("ancestor");
			if (iods_hrrchy_client_sector_ancestor_ary != null) 
			{
				for(Object iods_hrrchy_client_sector_ancestor_objs : iods_hrrchy_client_sector_ancestor_ary)
				{
					JSONObject iods_hrrchy_client_sector_ancestor_obj = (JSONObject) iods_hrrchy_client_sector_ancestor_objs;			
					iods_hrrchy_client_sector_ancestor_actualsector = (Long) iods_hrrchy_client_sector_ancestor_obj.get("actualsector");
					iods_hrrchy_client_sector_ancestor_created_by = (String) iods_hrrchy_client_sector_ancestor_obj.get("created_by");
					iods_hrrchy_client_sector_ancestor_created_datetime = (String) iods_hrrchy_client_sector_ancestor_obj.get("created_datetime");
					iods_hrrchy_client_sector_ancestor_last_update_date = (String) iods_hrrchy_client_sector_ancestor_obj.get("last_update_date");
					iods_hrrchy_client_sector_ancestor_last_updated_by = (String) iods_hrrchy_client_sector_ancestor_obj.get("last_updated_by");
					iods_hrrchy_client_sector_ancestor_lvl = (Long) iods_hrrchy_client_sector_ancestor_obj.get("lvl");
					iods_hrrchy_client_sector_ancestor_sector_id = (Long) iods_hrrchy_client_sector_ancestor_obj.get("sector_id");
					iods_hrrchy_client_sector_ancestor_sector_name = (String) iods_hrrchy_client_sector_ancestor_obj.get("sector_name");
					writetotext(writer);
				}
			}else{
				writetotext(writer);	
			}
		
		}
		
	}
		
	private static void initClientHierarchyDomicile(JSONObject iods_hrrchy_client, BufferedWriter writer) throws IOException
	{
		
		JSONObject iods_hrrchy_client_domicile_obj = (JSONObject) iods_hrrchy_client.get("domicile");
		if (iods_hrrchy_client_domicile_obj != null)
		{
			/*prepare for new client hierarcy domicile row **/
			nullallvalues();
			/*Initialize client hierarchy attributes**/
			initClientHierarchyAttributes(iods_hrrchy_client);
			
			/*Initialize client hierarchy domicile attributes**/
			iods_hrrchy_client_domicile_created_by = (String) iods_hrrchy_client_domicile_obj.get("created_by");
			iods_hrrchy_client_domicile_created_datetime = (String) iods_hrrchy_client_domicile_obj.get("created_datetime");
			if(iods_hrrchy_client_domicile_obj.get("domicile_id") != null){
				iods_hrrchy_client_domicile_domicile_id = (Long) iods_hrrchy_client_domicile_obj.get("domicile_id");
			}
			iods_hrrchy_client_domicile_domicile_key = (String) iods_hrrchy_client_domicile_obj.get("domicile_key");
			iods_hrrchy_client_domicile_domicile_name = (String) iods_hrrchy_client_domicile_obj.get("domicile_name");
			iods_hrrchy_client_domicile_iodsActualLastUpdatedDateTime = (String) iods_hrrchy_client_domicile_obj.get("iodsActualLastUpdatedDateTime");
			iods_hrrchy_client_domicile_iodsLastUpdatedDateTime = (String) iods_hrrchy_client_domicile_obj.get("iodsLastUpdatedDateTime");
			iods_hrrchy_client_domicile_last_update_date = (String) iods_hrrchy_client_domicile_obj.get("last_update_date");
			iods_hrrchy_client_domicile_last_updated_by = (String) iods_hrrchy_client_domicile_obj.get("last_updated_by");
			if( iods_hrrchy_client_domicile_obj.get("lvl") != null){
				iods_hrrchy_client_domicile_lvl = (Long) iods_hrrchy_client_domicile_obj.get("lvl");
			}
			
			/*Initialize client hierarchy domicile parent attributes**/
			iods_hrrchy_client_domicile_parent_obj = (JSONObject) iods_hrrchy_client_domicile_obj.get("parent");
			if(iods_hrrchy_client_domicile_parent_obj != null){
				iods_hrrchy_client_domicile_parent_actualdomicile = (Long) iods_hrrchy_client_domicile_parent_obj.get("actualdomicile");
				iods_hrrchy_client_domicile_parent_created_by = (String) iods_hrrchy_client_domicile_parent_obj.get("created_by");
				iods_hrrchy_client_domicile_parent_created_datetime = (String) iods_hrrchy_client_domicile_parent_obj.get("created_datetime");
				iods_hrrchy_client_domicile_parent_domicile_id = (Long) iods_hrrchy_client_domicile_parent_obj.get("domicile_id");
				iods_hrrchy_client_domicile_parent_domicile_name = (String) iods_hrrchy_client_domicile_parent_obj.get("domicile_name");
				iods_hrrchy_client_domicile_parent_last_update_date = (String) iods_hrrchy_client_domicile_parent_obj.get("last_update_date");
				iods_hrrchy_client_domicile_parent_last_updated_by = (String) iods_hrrchy_client_domicile_parent_obj.get("last_updated_by");
				iods_hrrchy_client_domicile_parent_lvl = (Long) iods_hrrchy_client_domicile_parent_obj.get("lvl");
			}
			
			iods_hrrchy_client_domicile_ancestor_ary = (JSONArray) iods_hrrchy_client_domicile_obj.get("ancestor");
			if(iods_hrrchy_client_domicile_ancestor_ary != null){
				for(Object iods_hrrchy_domicile_ancestor_objs: iods_hrrchy_client_domicile_ancestor_ary){
					JSONObject iods_hrrchy_domicile_ancestor_obj = (JSONObject) iods_hrrchy_domicile_ancestor_objs;
					/*Initialize client hierarchy domicile ancestor attributes**/
					initDomicileAncestorAttr(iods_hrrchy_domicile_ancestor_obj);	
					writetotext(writer);
				}
			}else{
				writetotext(writer);
			}
			}
	}
	
	private static void initClientHierarchyFranchise(JSONObject iods_hrrchy_client,BufferedWriter writer) throws IOException{
		JSONObject iods_hrrchy_client_franchise_obj = (JSONObject) iods_hrrchy_client.get("franchise");
		if(iods_hrrchy_client_franchise_obj != null)
		{
			/*prepare for new client hierarcy domicile row **/
			nullallvalues();
			/*Initialize client hierarchy attributes**/
			initClientHierarchyAttributes(iods_hrrchy_client);
			
			iods_hrrchy_client_franchise_created_by = (String) iods_hrrchy_client_franchise_obj.get("created_by");
			iods_hrrchy_client_franchise_created_datetime = (String) iods_hrrchy_client_franchise_obj.get("created_datetime");
			if(iods_hrrchy_client_franchise_obj.get("franchise_id") != null){
			iods_hrrchy_client_franchise_franchise_id = (Long) iods_hrrchy_client_franchise_obj.get("franchise_id");
			}
			iods_hrrchy_client_franchise_franchise_key = (String) iods_hrrchy_client_franchise_obj.get("franchise_key");
			iods_hrrchy_client_franchise_franchise_name = (String) iods_hrrchy_client_franchise_obj.get("franchise_name");
			iods_hrrchy_client_franchise_iodsActualLastUpdatedDateTime = (String) iods_hrrchy_client_franchise_obj.get("iodsActualLastUpdatedDateTime");
			iods_hrrchy_client_franchise_iodsLastUpdatedDateTime = (String) iods_hrrchy_client_franchise_obj.get("iodsLastUpdatedDateTime");
			iods_hrrchy_client_franchise_last_update_date = (String) iods_hrrchy_client_franchise_obj.get("last_update_date");
			iods_hrrchy_client_franchise_last_updated_by = (String) iods_hrrchy_client_franchise_obj.get("last_updated_by");
			if(iods_hrrchy_client_franchise_obj.get("lvl") != null) {
			iods_hrrchy_client_franchise_lvl = (Long) iods_hrrchy_client_franchise_obj.get("lvl");
			}
			
			
			iods_hrrchy_client_franchise_parent_obj = (JSONObject) iods_hrrchy_client_franchise_obj.get("parent");
			if (iods_hrrchy_client_franchise_parent_obj != null) {
				iods_hrrchy_client_franchise_parent_actualfranchise = (Long) iods_hrrchy_client_franchise_parent_obj.get("actualfranchise");
				iods_hrrchy_client_franchise_parent_created_by = (String) iods_hrrchy_client_franchise_parent_obj.get("created_by");
				iods_hrrchy_client_franchise_parent_created_datetime = (String) iods_hrrchy_client_franchise_parent_obj.get("created_datetime");
				iods_hrrchy_client_franchise_parent_franchise_id = (Long) iods_hrrchy_client_franchise_parent_obj.get("franchise_id");
				iods_hrrchy_client_franchise_parent_franchise_name = (String) iods_hrrchy_client_franchise_parent_obj.get("franchise_name");
				iods_hrrchy_client_franchise_parent_last_update_date = (String) iods_hrrchy_client_franchise_parent_obj.get("last_update_date");
				iods_hrrchy_client_franchise_parent_last_updated_by = (String) iods_hrrchy_client_franchise_parent_obj.get("last_updated_by");
				iods_hrrchy_client_franchise_parent_lvl = (Long) iods_hrrchy_client_franchise_parent_obj.get("lvl");
			}
			
			iods_hrrchy_client_franchise_ancestor_ary = (JSONArray) iods_hrrchy_client_franchise_obj.get("ancestor");
			if(iods_hrrchy_client_franchise_ancestor_ary != null){
				for(Object iods_hrrchy_client_franchise_ancestor_objs : iods_hrrchy_client_franchise_ancestor_ary){
					
					JSONObject iods_hrrchy_client_franchise_ancestor_obj = (JSONObject) iods_hrrchy_client_franchise_ancestor_objs;
					initFranchiseAncestorAttr(iods_hrrchy_client_franchise_ancestor_obj);
					writetotext(writer);
				}
			}
		}
		
	}
	
	private static void initClientHierarchyParent(JSONObject iods_hrrchy_client, BufferedWriter writer) throws IOException{
		JSONObject iods_hrrchy_client_parent_obj = (JSONObject) iods_hrrchy_client.get("parent");
		if (iods_hrrchy_client_parent_obj != null)
		{
			/*Initialize client hierarchy parent domicile attributes**/
			iods_hrrchy_client_parent_domicile_obj = (JSONObject) iods_hrrchy_client_parent_obj.get("domicile");
			if(iods_hrrchy_client_parent_domicile_obj != null){
				
				/*prepare for new client hierarchy parent domicile row **/
				nullallvalues();
				/*Initialize client hierarchy attributes**/
				initClientHierarchyAttributes(iods_hrrchy_client);
				initParentAttr(iods_hrrchy_client_parent_obj);
				initParentDomicileAttr(iods_hrrchy_client_parent_domicile_obj);
				iods_hrrchy_client_parent_domicile_parent_obj = (JSONObject) iods_hrrchy_client_parent_domicile_obj.get("parent");
				if(iods_hrrchy_client_parent_domicile_parent_obj != null)
					initParentDomicileParentAttr(iods_hrrchy_client_parent_domicile_parent_obj);
				
				iods_hrrchy_client_parent_domicile_ancestor_ary = (JSONArray) iods_hrrchy_client_parent_domicile_obj.get("ancestor");
				if(iods_hrrchy_client_parent_domicile_ancestor_ary != null){
					for(Object iods_hrrchy_client_parent_domicile_ancestor_objs : iods_hrrchy_client_parent_domicile_ancestor_ary){
						JSONObject iods_hrrchy_client_parent_domicile_ancestor_obj = (JSONObject) iods_hrrchy_client_parent_domicile_ancestor_objs;
						iods_hrrchy_client_parent_domicile_ancestor_actualdomicile = (Long) iods_hrrchy_client_parent_domicile_ancestor_obj.get("actualdomicile");
						iods_hrrchy_client_parent_domicile_ancestor_created_by = (String) iods_hrrchy_client_parent_domicile_ancestor_obj.get("created_by");
						iods_hrrchy_client_parent_domicile_ancestor_created_datetime = (String) iods_hrrchy_client_parent_domicile_ancestor_obj.get("created_datetime");
						iods_hrrchy_client_parent_domicile_ancestor_domicile_id = (Long) iods_hrrchy_client_parent_domicile_ancestor_obj.get("domicile_id");
						iods_hrrchy_client_parent_domicile_ancestor_domicile_name = (String) iods_hrrchy_client_parent_domicile_ancestor_obj.get("domicile_name");
						iods_hrrchy_client_parent_domicile_ancestor_last_update_date = (String) iods_hrrchy_client_parent_domicile_ancestor_obj.get("last_update_date");
						iods_hrrchy_client_parent_domicile_ancestor_last_updated_by = (String) iods_hrrchy_client_parent_domicile_ancestor_obj.get("last_updated_by");
						iods_hrrchy_client_parent_domicile_ancestor_lvl = (Long) iods_hrrchy_client_parent_domicile_ancestor_obj.get("lvl");
						writetotext(writer);
					}
				}else{
					writetotext(writer);
				}
			}
			
			/*Initialize client hierarchy parent franchise attributes**/
			iods_hrrchy_client_parent_franchise_ary = (JSONArray) iods_hrrchy_client_parent_obj.get("franchise");
			if(iods_hrrchy_client_parent_franchise_ary !=null)
			{
				for(Object iods_hrrchy_client_parent_franchise_objs: iods_hrrchy_client_parent_franchise_ary)
				{
					/*prepare for new client hierarchy parent franchise row **/
					nullallvalues();
					/*Initialize client hierarchy attributes**/
					initClientHierarchyAttributes(iods_hrrchy_client);
					initParentAttr(iods_hrrchy_client_parent_obj);
		 			
					JSONObject iods_hrrchy_client_parent_franchise_obj = (JSONObject) iods_hrrchy_client_parent_franchise_objs;			
					iods_hrrchy_client_parent_franchise_created_by = (String) iods_hrrchy_client_parent_franchise_obj.get("created_by");
					iods_hrrchy_client_parent_franchise_created_datetime = (String) iods_hrrchy_client_parent_franchise_obj.get("created_datetime");
					iods_hrrchy_client_parent_franchise_franchise_id = (Long) iods_hrrchy_client_parent_franchise_obj.get("franchise_id");
					iods_hrrchy_client_parent_franchise_franchise_key = (String) iods_hrrchy_client_parent_franchise_obj.get("franchise_key");
					iods_hrrchy_client_parent_franchise_franchise_name = (String) iods_hrrchy_client_parent_franchise_obj.get("franchise_name");
					iods_hrrchy_client_parent_franchise_iodsActualLastUpdatedDateTime = (String) iods_hrrchy_client_parent_franchise_obj.get("iodsActualLastUpdatedDateTime");
					iods_hrrchy_client_parent_franchise_iodsLastUpdatedDateTime = (String) iods_hrrchy_client_parent_franchise_obj.get("iodsLastUpdatedDateTime");
					iods_hrrchy_client_parent_franchise_last_update_date = (String) iods_hrrchy_client_parent_franchise_obj.get("last_update_date");
					iods_hrrchy_client_parent_franchise_last_updated_by = (String) iods_hrrchy_client_parent_franchise_obj.get("last_updated_by");
					iods_hrrchy_client_parent_franchise_lvl = (Long) iods_hrrchy_client_parent_franchise_obj.get("lvl");
					
					iods_hrrchy_client_parent_franchise_parent_obj = (JSONObject) iods_hrrchy_client_parent_franchise_obj.get("parent");
					if(iods_hrrchy_client_parent_franchise_parent_obj != null)
					{
						iods_hrrchy_client_parent_franchise_parent_actualfranchise = (Long) iods_hrrchy_client_parent_franchise_parent_obj.get("actualfranchise");
						iods_hrrchy_client_parent_franchise_parent_created_by = (String) iods_hrrchy_client_parent_franchise_parent_obj.get("created_by");
						iods_hrrchy_client_parent_franchise_parent_created_datetime = (String) iods_hrrchy_client_parent_franchise_parent_obj.get("created_datetime");
						iods_hrrchy_client_parent_franchise_parent_franchise_id = (Long) iods_hrrchy_client_parent_franchise_parent_obj.get("franchise_id");
						iods_hrrchy_client_parent_franchise_parent_franchise_name = (String) iods_hrrchy_client_parent_franchise_parent_obj.get("franchise_name");
						iods_hrrchy_client_parent_franchise_parent_last_update_date = (String) iods_hrrchy_client_parent_franchise_parent_obj.get("last_update_date");
						iods_hrrchy_client_parent_franchise_parent_last_updated_by = (String) iods_hrrchy_client_parent_franchise_parent_obj.get("last_updated_by");
						iods_hrrchy_client_parent_franchise_parent_lvl = (Long) iods_hrrchy_client_parent_franchise_parent_obj.get("lvl");
					}
					
					iods_hrrchy_client_parent_franchise_ancestor_ary = (JSONArray) iods_hrrchy_client_parent_franchise_obj.get("ancestor");
					if(iods_hrrchy_client_parent_franchise_ancestor_ary != null)
					{
						for(Object iods_hrrchy_client_parent_franchise_ancestor_objs : iods_hrrchy_client_parent_franchise_ancestor_ary)
						{
							JSONObject iods_hrrchy_client_parent_franchise_ancestor_obj = (JSONObject) iods_hrrchy_client_parent_franchise_ancestor_objs;
							iods_hrrchy_client_parent_franchise_ancestor_actualfranchise = (Long) iods_hrrchy_client_parent_franchise_ancestor_obj.get("actualfranchise");
							iods_hrrchy_client_parent_franchise_ancestor_created_by = (String) iods_hrrchy_client_parent_franchise_ancestor_obj.get("created_by");
							iods_hrrchy_client_parent_franchise_ancestor_created_datetime = (String) iods_hrrchy_client_parent_franchise_ancestor_obj.get("created_datetime");
							iods_hrrchy_client_parent_franchise_ancestor_franchise_id = (Long) iods_hrrchy_client_parent_franchise_ancestor_obj.get("franchise_id");
							iods_hrrchy_client_parent_franchise_ancestor_franchise_name = (String) iods_hrrchy_client_parent_franchise_ancestor_obj.get("franchise_name");
							iods_hrrchy_client_parent_franchise_ancestor_last_update_date = (String) iods_hrrchy_client_parent_franchise_ancestor_obj.get("last_update_date");
							iods_hrrchy_client_parent_franchise_ancestor_last_updated_by = (String) iods_hrrchy_client_parent_franchise_ancestor_obj.get("last_updated_by");
							iods_hrrchy_client_parent_franchise_ancestor_lvl = (Long) iods_hrrchy_client_parent_franchise_ancestor_obj.get("lvl");
							writetotext(writer);
						}
					}else{
						writetotext(writer);
					}
				}
			}
			
			/*Initialize client hierarchy parent sector attributes**/
			JSONObject iods_hrrchy_client_parent_sector_obj = (JSONObject) iods_hrrchy_client_parent_obj.get("sector");
			if (iods_hrrchy_client_parent_sector_obj != null)
			{
				/*prepare for new client hierarchy parent sector row **/
				nullallvalues();
				/*Initialize client hierarchy attributes**/
				initClientHierarchyAttributes(iods_hrrchy_client);
				/*Initialize client hierarchy parent**/
				initParentAttr(iods_hrrchy_client_parent_obj);

				/*Initialize client hierarchy parent sector attributes**/
				iods_hrrchy_client_parent_sector_created_by = (String) iods_hrrchy_client_parent_sector_obj.get("created_by");
				iods_hrrchy_client_parent_sector_created_datetime = (String) iods_hrrchy_client_parent_sector_obj.get("created_datetime");
				iods_hrrchy_client_parent_sector_iodsActualLastUpdatedDateTime = (String) iods_hrrchy_client_parent_sector_obj.get("iodsActualLastUpdatedDateTime");
				iods_hrrchy_client_parent_sector_iodsLastUpdatedDateTime = (String) iods_hrrchy_client_parent_sector_obj.get("iodsLastUpdatedDateTime");
				iods_hrrchy_client_parent_sector_last_update_date = (String) iods_hrrchy_client_parent_sector_obj.get("last_update_date");
				iods_hrrchy_client_parent_sector_last_updated_by = (String) iods_hrrchy_client_parent_sector_obj.get("last_updated_by");
				iods_hrrchy_client_parent_sector_lvl = (Long) iods_hrrchy_client_parent_sector_obj.get("lvl");
				iods_hrrchy_client_parent_sector_sector_id = (Long) iods_hrrchy_client_parent_sector_obj.get("sector_id");
				iods_hrrchy_client_parent_sector_sector_key = (String) iods_hrrchy_client_parent_sector_obj.get("sector_key");
				iods_hrrchy_client_parent_sector_sector_name = (String) iods_hrrchy_client_parent_sector_obj.get("sector_name");
	
				/*Initialize client hierarchy parent sector parent attributes**/
				iods_hrrchy_client_parent_sector_parent_obj = (JSONObject) iods_hrrchy_client_parent_sector_obj.get("parent");
				if(iods_hrrchy_client_parent_sector_parent_obj != null)
				{
					iods_hrrchy_client_parent_sector_parent_actualsector = (Long) iods_hrrchy_client_parent_sector_parent_obj.get("actualsector");
					iods_hrrchy_client_parent_sector_parent_created_by = (String) iods_hrrchy_client_parent_sector_parent_obj.get("created_by");
					iods_hrrchy_client_parent_sector_parent_created_datetime = (String) iods_hrrchy_client_parent_sector_parent_obj.get("created_datetime");
					iods_hrrchy_client_parent_sector_parent_last_update_date = (String) iods_hrrchy_client_parent_sector_parent_obj.get("last_update_date");
					iods_hrrchy_client_parent_sector_parent_last_updated_by = (String) iods_hrrchy_client_parent_sector_parent_obj.get("last_updated_by");
					iods_hrrchy_client_parent_sector_parent_lvl = (Long) iods_hrrchy_client_parent_sector_parent_obj.get("lvl");
					iods_hrrchy_client_parent_sector_parent_sector_id = (Long) iods_hrrchy_client_parent_sector_parent_obj.get("sector_id");
					iods_hrrchy_client_parent_sector_parent_sector_name = (String) iods_hrrchy_client_parent_sector_parent_obj.get("sector_name");
				}
				
				/*Initialize client hierarchy parent sector ancestor array attributes**/
				iods_hrrchy_client_parent_sector_ancestor_ary = (JSONArray) iods_hrrchy_client_parent_sector_obj.get("ancestor");
				if(iods_hrrchy_client_parent_sector_ancestor_ary != null)
				{
					for(Object iods_hrrchy_client_parent_sector_ancestor_objs : iods_hrrchy_client_parent_sector_ancestor_ary)
					{
						JSONObject iods_hrrchy_client_parent_sector_ancestor_obj = (JSONObject) iods_hrrchy_client_parent_sector_ancestor_objs;
						iods_hrrchy_client_parent_sector_ancestor_actualsector = (Long) iods_hrrchy_client_parent_sector_ancestor_obj.get("actualsector");
						iods_hrrchy_client_parent_sector_ancestor_created_by = (String) iods_hrrchy_client_parent_sector_ancestor_obj.get("created_by");
						iods_hrrchy_client_parent_sector_ancestor_created_datetime = (String) iods_hrrchy_client_parent_sector_ancestor_obj.get("created_datetime");
						iods_hrrchy_client_parent_sector_ancestor_last_update_date = (String) iods_hrrchy_client_parent_sector_ancestor_obj.get("last_update_date");
						iods_hrrchy_client_parent_sector_ancestor_last_updated_by = (String) iods_hrrchy_client_parent_sector_ancestor_obj.get("last_updated_by");
						iods_hrrchy_client_parent_sector_ancestor_lvl = (Long) iods_hrrchy_client_parent_sector_ancestor_obj.get("lvl");
						iods_hrrchy_client_parent_sector_ancestor_sector_id = (Long) iods_hrrchy_client_parent_sector_ancestor_obj.get("sector_id");
						iods_hrrchy_client_parent_sector_ancestor_sector_name = (String) iods_hrrchy_client_parent_sector_ancestor_obj.get("sector_name");
						writetotext(writer);
					}
				}else{
					writetotext(writer);
				}
			}
		}
	}
	
	private static void initClientHierarchyAncestor(JSONObject iods_hrrchy_client,BufferedWriter writer) throws Exception{
		JSONArray iods_hrrchy_client_ancestor_ary = (JSONArray) iods_hrrchy_client.get("ancestor");
		if(iods_hrrchy_client_ancestor_ary != null)
		{
			for(Object iods_hrrchy_client_ancestor_objs : iods_hrrchy_client_ancestor_ary)
			{
				JSONObject iods_hrrchy_client_ancestor_obj = (JSONObject) iods_hrrchy_client_ancestor_objs;
				/**prepare for new ancestor row **/
				nullallvalues();
				/**Initialize client hierarchy attributes**/
				initClientHierarchyAttributes(iods_hrrchy_client);
				
				/**Initialize client hierarchy ancestor attributes**/
				initClientHierarchyAncestorAttributes(iods_hrrchy_client_ancestor_obj);
				
				/*Initialize client hierarchy ancestor domicile object attributes**/
				//m iods_hrrchy_client_ancestor_domicile_ary = (JSONArray) iods_hrrchy_client_ancestor_obj.get("domicile");
				iods_hrrchy_client_ancestor_domicile_obj = (JSONObject) iods_hrrchy_client_ancestor_obj.get("domicile");
				//mif(iods_hrrchy_client_ancestor_domicile_ary != null){
				   if(iods_hrrchy_client_ancestor_domicile_obj != null){
				//m	for(Object iods_hrrchy_client_ancestor_domicile_objs : iods_hrrchy_client_ancestor_domicile_ary)
				//m	{
					
						//m JSONObject iods_hrrchy_client_ancestor_domicile_obj = (JSONObject) iods_hrrchy_client_ancestor_domicile_objs;
						iods_hrrchy_client_ancestor_domicile_created_by = (String) iods_hrrchy_client_ancestor_domicile_obj.get("created_by");
						iods_hrrchy_client_ancestor_domicile_created_datetime = (String) iods_hrrchy_client_ancestor_domicile_obj.get("created_datetime");
						if(iods_hrrchy_client_ancestor_domicile_obj.get("domicile_id")!=null){
							iods_hrrchy_client_ancestor_domicile_domicile_id = (Long) iods_hrrchy_client_ancestor_domicile_obj.get("domicile_id");
						}
						iods_hrrchy_client_ancestor_domicile_domicile_key = (String) iods_hrrchy_client_ancestor_domicile_obj.get("domicile_key");
						iods_hrrchy_client_ancestor_domicile_domicile_name = (String) iods_hrrchy_client_ancestor_domicile_obj.get("domicile_name");
						iods_hrrchy_client_ancestor_domicile_iodsActualLastUpdatedDateTime = (String) iods_hrrchy_client_ancestor_domicile_obj.get("iodsActualLastUpdatedDateTime");
						iods_hrrchy_client_ancestor_domicile_iodsLastUpdatedDateTime = (String) iods_hrrchy_client_ancestor_domicile_obj.get("iodsLastUpdatedDateTime");
						iods_hrrchy_client_ancestor_domicile_last_update_date = (String) iods_hrrchy_client_ancestor_domicile_obj.get("last_update_date");
						iods_hrrchy_client_ancestor_domicile_last_updated_by = (String) iods_hrrchy_client_ancestor_domicile_obj.get("last_updated_by");
						if(iods_hrrchy_client_ancestor_domicile_obj.get("lvl")!=null){
							iods_hrrchy_client_ancestor_domicile_lvl = (Long) iods_hrrchy_client_ancestor_domicile_obj.get("lvl");
						}
						
						/*Initialize domicile parent attributes**/
						iods_hrrchy_client_ancestor_domicile_parent_obj = (JSONObject) iods_hrrchy_client_ancestor_domicile_obj.get("parent");
						if(iods_hrrchy_client_ancestor_domicile_parent_obj != null)
						{
							iods_hrrchy_client_ancestor_domicile_parent_actualdomicile = (Long) iods_hrrchy_client_ancestor_domicile_parent_obj.get("actualdomicile");
							iods_hrrchy_client_ancestor_domicile_parent_created_by = (String) iods_hrrchy_client_ancestor_domicile_parent_obj.get("created_by");
							iods_hrrchy_client_ancestor_domicile_parent_created_datetime = (String) iods_hrrchy_client_ancestor_domicile_parent_obj.get("created_datetime");
							iods_hrrchy_client_ancestor_domicile_parent_domicile_id = (Long) iods_hrrchy_client_ancestor_domicile_parent_obj.get("domicile_id");
							iods_hrrchy_client_ancestor_domicile_parent_domicile_name = (String) iods_hrrchy_client_ancestor_domicile_parent_obj.get("domicile_name");
							iods_hrrchy_client_ancestor_domicile_parent_last_update_date = (String) iods_hrrchy_client_ancestor_domicile_parent_obj.get("last_update_date");
							iods_hrrchy_client_ancestor_domicile_parent_last_updated_by = (String) iods_hrrchy_client_ancestor_domicile_parent_obj.get("last_updated_by");
							iods_hrrchy_client_ancestor_domicile_parent_lvl = (Long) iods_hrrchy_client_ancestor_domicile_parent_obj.get("lvl");
						}
						//writetotext(writer);
						iods_hrrchy_client_ancestor_domicile_ancestor_ary = (JSONArray) iods_hrrchy_client_ancestor_domicile_obj.get("ancestor");
						if (iods_hrrchy_client_ancestor_domicile_ancestor_ary != null)
						{
							for(Object iods_hrrchy_client_ancestor_domicile_ancestor_objs : iods_hrrchy_client_ancestor_domicile_ancestor_ary)
							{
								JSONObject iods_hrrchy_client_ancestor_domicile_ancestor_obj = (JSONObject) iods_hrrchy_client_ancestor_domicile_ancestor_objs;
								initAncestorDomicileAncestorAttr(iods_hrrchy_client_ancestor_domicile_ancestor_obj);
								writetotext(writer);
							}
							
						}
					}
			//m}
				
				/**prepare for new ancestor row **/
				nullallvalues();
				/**Initialize client hierarchy attributes**/
				initClientHierarchyAttributes(iods_hrrchy_client);
				initClientHierarchyAncestorAttributes(iods_hrrchy_client_ancestor_obj);
				
				//m iods_hrrchy_client_ancestor_franchise_ary = (JSONArray) iods_hrrchy_client_ancestor_obj.get("franchise");
				iods_hrrchy_client_ancestor_franchise_obj = (JSONObject) iods_hrrchy_client_ancestor_obj.get("franchise");
				//m if(iods_hrrchy_client_ancestor_franchise_ary != null)
				    if(iods_hrrchy_client_ancestor_franchise_obj != null)
				    {
					//m for(Object iods_hrrchy_client_ancestor_franchise_objs: iods_hrrchy_client_ancestor_franchise_ary)
					//m {
						//m JSONObject iods_hrrchy_client_ancestor_franchise_obj = (JSONObject) iods_hrrchy_client_ancestor_franchise_objs;
						iods_hrrchy_client_ancestor_franchise_created_by = (String) iods_hrrchy_client_ancestor_franchise_obj.get("created_by");
						iods_hrrchy_client_ancestor_franchise_created_datetime = (String) iods_hrrchy_client_ancestor_franchise_obj.get("created_datetime");
						if(iods_hrrchy_client_ancestor_franchise_obj.get("franchise_id") != null){
							iods_hrrchy_client_ancestor_franchise_franchise_id = (Long) iods_hrrchy_client_ancestor_franchise_obj.get("franchise_id");
						}
						iods_hrrchy_client_ancestor_franchise_franchise_key = (String) iods_hrrchy_client_ancestor_franchise_obj.get("franchise_key");
						iods_hrrchy_client_ancestor_franchise_franchise_name = (String) iods_hrrchy_client_ancestor_franchise_obj.get("franchise_name");
						iods_hrrchy_client_ancestor_franchise_iodsActualLastUpdatedDateTime = (String) iods_hrrchy_client_ancestor_franchise_obj.get("iodsActualLastUpdatedDateTime");
						iods_hrrchy_client_ancestor_franchise_iodsLastUpdatedDateTime = (String) iods_hrrchy_client_ancestor_franchise_obj.get("iodsLastUpdatedDateTime");
						iods_hrrchy_client_ancestor_franchise_last_update_date = (String) iods_hrrchy_client_ancestor_franchise_obj.get("last_update_date");
						iods_hrrchy_client_ancestor_franchise_last_updated_by = (String) iods_hrrchy_client_ancestor_franchise_obj.get("last_updated_by");
						if(iods_hrrchy_client_ancestor_franchise_obj.get("lvl") != null){
							iods_hrrchy_client_ancestor_franchise_lvl = (Long) iods_hrrchy_client_ancestor_franchise_obj.get("lvl");
						}
						
						if(iods_hrrchy_client_ancestor_franchise_parent_obj != null)
						{
							iods_hrrchy_client_ancestor_franchise_parent_actualfranchise = (Long) iods_hrrchy_client_ancestor_franchise_parent_obj.get("actualfranchise");
							iods_hrrchy_client_ancestor_franchise_parent_created_by = (String) iods_hrrchy_client_ancestor_franchise_parent_obj.get("created_by");
							iods_hrrchy_client_ancestor_franchise_parent_created_datetime = (String) iods_hrrchy_client_ancestor_franchise_parent_obj.get("created_datetime");
							iods_hrrchy_client_ancestor_franchise_parent_franchise_id = (Long) iods_hrrchy_client_ancestor_franchise_parent_obj.get("franchise_id");
							iods_hrrchy_client_ancestor_franchise_parent_franchise_name = (String) iods_hrrchy_client_ancestor_franchise_parent_obj.get("franchise_name");
							iods_hrrchy_client_ancestor_franchise_parent_last_update_date = (String) iods_hrrchy_client_ancestor_franchise_parent_obj.get("last_update_date");
							iods_hrrchy_client_ancestor_franchise_parent_last_updated_by = (String) iods_hrrchy_client_ancestor_franchise_parent_obj.get("last_updated_by");
							iods_hrrchy_client_ancestor_franchise_parent_lvl = (Long) iods_hrrchy_client_ancestor_franchise_parent_obj.get("lvl");
						}

						//writetotext(writer);
						iods_hrrchy_client_ancestor_franchise_ancestor_ary = (JSONArray) iods_hrrchy_client_ancestor_franchise_obj.get("ancestor");
						if(iods_hrrchy_client_ancestor_franchise_ancestor_ary != null)
						{
							for(Object iods_hrrchy_client_ancestor_franchise_ancestor_objs : iods_hrrchy_client_ancestor_franchise_ancestor_ary)
							{

								JSONObject iods_hrrchy_client_ancestor_franchise_ancestor_obj = (JSONObject) iods_hrrchy_client_ancestor_franchise_ancestor_objs;
								initAncestorFranchiseAncestorAttr(iods_hrrchy_client_ancestor_franchise_ancestor_obj);
								writetotext(writer);
							}
						}
						iods_hrrchy_client_ancestor_franchise_parent_obj = (JSONObject) iods_hrrchy_client_ancestor_franchise_obj.get("parent");
					  }
				//m }
			
				/**prepare for new ancestor row **/
				nullallvalues();
				/**Initialize client hierarchy attributes**/
				initClientHierarchyAttributes(iods_hrrchy_client);
				initClientHierarchyAncestorAttributes(iods_hrrchy_client_ancestor_obj);
				
				//m iods_hrrchy_client_ancestor_sector_ary = (JSONArray) iods_hrrchy_client_ancestor_obj.get("sector");
				iods_hrrchy_client_ancestor_sector_obj = (JSONObject) iods_hrrchy_client_ancestor_obj.get("sector");
				//m if(iods_hrrchy_client_ancestor_sector_ary != null){
				    if(iods_hrrchy_client_ancestor_sector_obj != null){
					//m for(Object iods_hrrchy_client_ancestor_sector_objs: iods_hrrchy_client_ancestor_sector_ary)
					//m {
						//m JSONObject iods_hrrchy_client_ancestor_sector_obj = (JSONObject)iods_hrrchy_client_ancestor_sector_objs;
							
						iods_hrrchy_client_ancestor_sector_created_by = (String) iods_hrrchy_client_ancestor_sector_obj.get("created_by");
						iods_hrrchy_client_ancestor_sector_created_datetime = (String) iods_hrrchy_client_ancestor_sector_obj.get("created_datetime");
						iods_hrrchy_client_ancestor_sector_iodsActualLastUpdatedDateTime = (String) iods_hrrchy_client_ancestor_sector_obj.get("iodsActualLastUpdatedDateTime");
						iods_hrrchy_client_ancestor_sector_iodsLastUpdatedDateTime = (String) iods_hrrchy_client_ancestor_sector_obj.get("iodsLastUpdatedDateTime");
						iods_hrrchy_client_ancestor_sector_last_update_date = (String) iods_hrrchy_client_ancestor_sector_obj.get("last_update_date");
						iods_hrrchy_client_ancestor_sector_last_updated_by = (String) iods_hrrchy_client_ancestor_sector_obj.get("last_updated_by");
						if(iods_hrrchy_client_ancestor_sector_obj.get("lvl")!= null){
							iods_hrrchy_client_ancestor_sector_lvl = (Long) iods_hrrchy_client_ancestor_sector_obj.get("lvl");
						}
						if(iods_hrrchy_client_ancestor_sector_obj.get("sector_id")!=null){
							iods_hrrchy_client_ancestor_sector_sector_id = (Long) iods_hrrchy_client_ancestor_sector_obj.get("sector_id");
						}
						iods_hrrchy_client_ancestor_sector_sector_key = (String) iods_hrrchy_client_ancestor_sector_obj.get("sector_key");
						iods_hrrchy_client_ancestor_sector_sector_name = (String) iods_hrrchy_client_ancestor_sector_obj.get("sector_name");
						iods_hrrchy_client_ancestor_sector_parent_obj = (JSONObject) iods_hrrchy_client_ancestor_sector_obj.get("parent");
						iods_hrrchy_client_ancestor_sector_ancestor_ary = (JSONArray) iods_hrrchy_client_ancestor_sector_obj.get("ancestor");
						
						if(iods_hrrchy_client_ancestor_sector_parent_obj != null) {
							iods_hrrchy_client_ancestor_sector_parent_actualsector = (Long) iods_hrrchy_client_ancestor_sector_parent_obj.get("actualsector");
							iods_hrrchy_client_ancestor_sector_parent_created_by = (String) iods_hrrchy_client_ancestor_sector_parent_obj.get("created_by");
							iods_hrrchy_client_ancestor_sector_parent_created_datetime = (String) iods_hrrchy_client_ancestor_sector_parent_obj.get("created_datetime");
							iods_hrrchy_client_ancestor_sector_parent_last_update_date = (String) iods_hrrchy_client_ancestor_sector_parent_obj.get("last_update_date");
							iods_hrrchy_client_ancestor_sector_parent_last_updated_by = (String) iods_hrrchy_client_ancestor_sector_parent_obj.get("last_updated_by");
							iods_hrrchy_client_ancestor_sector_parent_lvl = (Long) iods_hrrchy_client_ancestor_sector_parent_obj.get("lvl");
							iods_hrrchy_client_ancestor_sector_parent_sector_id = (Long) iods_hrrchy_client_ancestor_sector_parent_obj.get("sector_id");
							iods_hrrchy_client_ancestor_sector_parent_sector_name = (String) iods_hrrchy_client_ancestor_sector_parent_obj.get("sector_name");
						}
						//writetotext(writer);
						for(Object iods_hrrchy_client_ancestor_sector_ancestor_objs : iods_hrrchy_client_ancestor_sector_ancestor_ary)
						{
							JSONObject iods_hrrchy_client_ancestor_sector_ancestor_obj = (JSONObject) iods_hrrchy_client_ancestor_sector_ancestor_objs;
							initAncestorSectorAncestorAttr(iods_hrrchy_client_ancestor_sector_ancestor_obj);
							writetotext(writer);
						}
						
				      }
				//m }
			}
		}
	}
		
	public static void  nullallvalues(){
		iods_hrrchy_client_ancestor_actualclient	 = null;
		iods_hrrchy_client_ancestor_client_id	 = null;
		iods_hrrchy_client_ancestor_client_name	 = null;
		iods_hrrchy_client_ancestor_clnt_sbtp_cd	 = null;
		iods_hrrchy_client_ancestor_created_by	 = null;
		iods_hrrchy_client_ancestor_created_datetime	 = null;
		iods_hrrchy_client_ancestor_crm_updt_dttm	 = null;
		iods_hrrchy_client_ancestor_deleted_flag	 = null;
		iods_hrrchy_client_ancestor_domicile_ancestor_actualdomicile	 = null;
		iods_hrrchy_client_ancestor_domicile_ancestor_created_by	 = null;
		iods_hrrchy_client_ancestor_domicile_ancestor_created_datetime	 = null;
		iods_hrrchy_client_ancestor_domicile_ancestor_domicile_id	 = null;
		iods_hrrchy_client_ancestor_domicile_ancestor_domicile_name	 = null;
		iods_hrrchy_client_ancestor_domicile_ancestor_last_update_date	 = null;
		iods_hrrchy_client_ancestor_domicile_ancestor_last_updated_by	 = null;
		iods_hrrchy_client_ancestor_domicile_ancestor_lvl	 = null;
		iods_hrrchy_client_ancestor_domicile_created_by	 = null;
		iods_hrrchy_client_ancestor_domicile_created_datetime	 = null;
		iods_hrrchy_client_ancestor_domicile_domicile_id	 = null;
		iods_hrrchy_client_ancestor_domicile_domicile_key	 = null;
		iods_hrrchy_client_ancestor_domicile_domicile_name	 = null;
		iods_hrrchy_client_ancestor_domicile_iodsActualLastUpdatedDateTime	 = null;
		iods_hrrchy_client_ancestor_domicile_iodsLastUpdatedDateTime	 = null;
		iods_hrrchy_client_ancestor_domicile_last_update_date	 = null;
		iods_hrrchy_client_ancestor_domicile_last_updated_by	 = null;
		iods_hrrchy_client_ancestor_domicile_lvl	 = null;
		iods_hrrchy_client_ancestor_domicile_parent_actualdomicile	 = null;
		iods_hrrchy_client_ancestor_domicile_parent_created_by	 = null;
		iods_hrrchy_client_ancestor_domicile_parent_created_datetime	 = null;
		iods_hrrchy_client_ancestor_domicile_parent_domicile_id	 = null;
		iods_hrrchy_client_ancestor_domicile_parent_domicile_name	 = null;
		iods_hrrchy_client_ancestor_domicile_parent_last_update_date	 = null;
		iods_hrrchy_client_ancestor_domicile_parent_last_updated_by	 = null;
		iods_hrrchy_client_ancestor_domicile_parent_lvl	 = null;
		iods_hrrchy_client_ancestor_domicile_id	 = null;
		iods_hrrchy_client_ancestor_domicile_key	 = null;
		iods_hrrchy_client_ancestor_franchise_ancestor_actualfranchise	 = null;
		iods_hrrchy_client_ancestor_franchise_ancestor_created_by	 = null;
		iods_hrrchy_client_ancestor_franchise_ancestor_created_datetime	 = null;
		iods_hrrchy_client_ancestor_franchise_ancestor_franchise_id	 = null;
		iods_hrrchy_client_ancestor_franchise_ancestor_franchise_name	 = null;
		iods_hrrchy_client_ancestor_franchise_ancestor_last_update_date	 = null;
		iods_hrrchy_client_ancestor_franchise_ancestor_last_updated_by	 = null;
		iods_hrrchy_client_ancestor_franchise_ancestor_lvl	 = null;
		iods_hrrchy_client_ancestor_franchise_created_by	 = null;
		iods_hrrchy_client_ancestor_franchise_created_datetime	 = null;
		iods_hrrchy_client_ancestor_franchise_franchise_id	 = null;
		iods_hrrchy_client_ancestor_franchise_franchise_key	 = null;
		iods_hrrchy_client_ancestor_franchise_franchise_name	 = null;
		iods_hrrchy_client_ancestor_franchise_iodsActualLastUpdatedDateTime	 = null;
		iods_hrrchy_client_ancestor_franchise_iodsLastUpdatedDateTime	 = null;
		iods_hrrchy_client_ancestor_franchise_last_update_date	 = null;
		iods_hrrchy_client_ancestor_franchise_last_updated_by	 = null;
		iods_hrrchy_client_ancestor_franchise_lvl	 = null;
		iods_hrrchy_client_ancestor_franchise_parent_actualfranchise	 = null;
		iods_hrrchy_client_ancestor_franchise_parent_created_by	 = null;
		iods_hrrchy_client_ancestor_franchise_parent_created_datetime	 = null;
		iods_hrrchy_client_ancestor_franchise_parent_franchise_id	 = null;
		iods_hrrchy_client_ancestor_franchise_parent_franchise_name	 = null;
		iods_hrrchy_client_ancestor_franchise_parent_last_update_date	 = null;
		iods_hrrchy_client_ancestor_franchise_parent_last_updated_by	 = null;
		iods_hrrchy_client_ancestor_franchise_parent_lvl	 = null;
		iods_hrrchy_client_ancestor_franchise_id	 = null;
		iods_hrrchy_client_ancestor_franchise_key	 = null;
		iods_hrrchy_client_ancestor_icm_flg	 = null;
		iods_hrrchy_client_ancestor_icm_flg_updt_dttm	 = null;
		iods_hrrchy_client_ancestor_last_update_date	 = null;
		iods_hrrchy_client_ancestor_last_updated_by	 = null;
		iods_hrrchy_client_ancestor_lvl	 = null;
		iods_hrrchy_client_ancestor_nmbr_of_actn_itms	 = null;
		iods_hrrchy_client_ancestor_nmbr_of_actvts	 = null;
		iods_hrrchy_client_ancestor_nmbr_of_cntcts	 = null;
		iods_hrrchy_client_ancestor_nmbr_of_vts	 = null;
		iods_hrrchy_client_ancestor_sector_ancestor_actualsector	 = null;
		iods_hrrchy_client_ancestor_sector_ancestor_created_by	 = null;
		iods_hrrchy_client_ancestor_sector_ancestor_created_datetime	 = null;
		iods_hrrchy_client_ancestor_sector_ancestor_last_update_date	 = null;
		iods_hrrchy_client_ancestor_sector_ancestor_last_updated_by	 = null;
		iods_hrrchy_client_ancestor_sector_ancestor_lvl	 = null;
		iods_hrrchy_client_ancestor_sector_ancestor_sector_id	 = null;
		iods_hrrchy_client_ancestor_sector_ancestor_sector_name	 = null;
		iods_hrrchy_client_ancestor_sector_created_by	 = null;
		iods_hrrchy_client_ancestor_sector_created_datetime	 = null;
		iods_hrrchy_client_ancestor_sector_iodsActualLastUpdatedDateTime	 = null;
		iods_hrrchy_client_ancestor_sector_iodsLastUpdatedDateTime	 = null;
		iods_hrrchy_client_ancestor_sector_last_update_date	 = null;
		iods_hrrchy_client_ancestor_sector_last_updated_by	 = null;
		iods_hrrchy_client_ancestor_sector_lvl	 = null;
		iods_hrrchy_client_ancestor_sector_parent_actualsector	 = null;
		iods_hrrchy_client_ancestor_sector_parent_created_by	 = null;
		iods_hrrchy_client_ancestor_sector_parent_created_datetime	 = null;
		iods_hrrchy_client_ancestor_sector_parent_last_update_date	 = null;
		iods_hrrchy_client_ancestor_sector_parent_last_updated_by	 = null;
		iods_hrrchy_client_ancestor_sector_parent_lvl	 = null;
		iods_hrrchy_client_ancestor_sector_parent_sector_id	 = null;
		iods_hrrchy_client_ancestor_sector_parent_sector_name	 = null;
		iods_hrrchy_client_ancestor_sector_sector_id	 = null;
		iods_hrrchy_client_ancestor_sector_sector_key	 = null;
		iods_hrrchy_client_ancestor_sector_sector_name	 = null;
		iods_hrrchy_client_ancestor_sector_id	 = null;
		iods_hrrchy_client_ancestor_sector_key	 = null;
		
		iods_hrrchy_client_cas_id	 = null;
		iods_hrrchy_client_client_id	 = null;
		iods_hrrchy_client_client_name	 = null;
		iods_hrrchy_client_clnt_sbtp_cd	 = null;
		iods_hrrchy_client_cmu_auto_manual_excptn_cmmnt	 = null;
		iods_hrrchy_client_cmu_hry_flag	 = null;
		iods_hrrchy_client_conf_flag	 = null;
		iods_hrrchy_client_created_by	 = null;
		iods_hrrchy_client_created_datetime	 = null;
		iods_hrrchy_client_crm_updt_dttm	 = null;
		iods_hrrchy_client_deleted_flag	 = null;
		
		iods_hrrchy_client_domicile_ancestor_actualdomicile	 = null;
		iods_hrrchy_client_domicile_ancestor_created_by	 = null;
		iods_hrrchy_client_domicile_ancestor_created_datetime	 = null;
		iods_hrrchy_client_domicile_ancestor_domicile_id	 = null;
		iods_hrrchy_client_domicile_ancestor_domicile_name	 = null;
		iods_hrrchy_client_domicile_ancestor_last_update_date	 = null;
		iods_hrrchy_client_domicile_ancestor_last_updated_by	 = null;
		iods_hrrchy_client_domicile_ancestor_lvl	 = null;
		iods_hrrchy_client_domicile_created_by	 = null;
		iods_hrrchy_client_domicile_created_datetime	 = null;
		iods_hrrchy_client_domicile_domicile_id	 = null;
		iods_hrrchy_client_domicile_domicile_key	 = null;
		iods_hrrchy_client_domicile_domicile_name	 = null;
		iods_hrrchy_client_domicile_iodsActualLastUpdatedDateTime	 = null;
		iods_hrrchy_client_domicile_iodsLastUpdatedDateTime	 = null;
		iods_hrrchy_client_domicile_last_update_date	 = null;
		iods_hrrchy_client_domicile_last_updated_by	 = null;
		iods_hrrchy_client_domicile_lvl	 = null;
		iods_hrrchy_client_domicile_parent_actualdomicile	 = null;
		iods_hrrchy_client_domicile_parent_created_by	 = null;
		iods_hrrchy_client_domicile_parent_created_datetime	 = null;
		iods_hrrchy_client_domicile_parent_domicile_id	 = null;
		iods_hrrchy_client_domicile_parent_domicile_name	 = null;
		iods_hrrchy_client_domicile_parent_last_update_date	 = null;
		iods_hrrchy_client_domicile_parent_last_updated_by	 = null;
		iods_hrrchy_client_domicile_parent_lvl	 = null;
		iods_hrrchy_client_domicile_id	 = null;
		iods_hrrchy_client_domicile_key	 = null;
		iods_hrrchy_client_ecid	 = null;
		iods_hrrchy_client_franchise_ancestor_actualfranchise	 = null;
		iods_hrrchy_client_franchise_ancestor_created_by	 = null;
		iods_hrrchy_client_franchise_ancestor_created_datetime	 = null;
		iods_hrrchy_client_franchise_ancestor_franchise_id	 = null;
		iods_hrrchy_client_franchise_ancestor_franchise_name	 = null;
		iods_hrrchy_client_franchise_ancestor_last_update_date	 = null;
		iods_hrrchy_client_franchise_ancestor_last_updated_by	 = null;
		iods_hrrchy_client_franchise_ancestor_lvl	 = null;
		iods_hrrchy_client_franchise_created_by	 = null;
		iods_hrrchy_client_franchise_created_datetime	 = null;
		iods_hrrchy_client_franchise_franchise_id	 = null;
		iods_hrrchy_client_franchise_franchise_key	 = null;
		iods_hrrchy_client_franchise_franchise_name	 = null;
		iods_hrrchy_client_franchise_iodsActualLastUpdatedDateTime	 = null;
		iods_hrrchy_client_franchise_iodsLastUpdatedDateTime	 = null;
		iods_hrrchy_client_franchise_last_update_date	 = null;
		iods_hrrchy_client_franchise_last_updated_by	 = null;
		iods_hrrchy_client_franchise_lvl	 = null;
		iods_hrrchy_client_franchise_parent_actualfranchise	 = null;
		iods_hrrchy_client_franchise_parent_created_by	 = null;
		iods_hrrchy_client_franchise_parent_created_datetime	 = null;
		iods_hrrchy_client_franchise_parent_franchise_id	 = null;
		iods_hrrchy_client_franchise_parent_franchise_name	 = null;
		iods_hrrchy_client_franchise_parent_last_update_date	 = null;
		iods_hrrchy_client_franchise_parent_last_updated_by	 = null;
		iods_hrrchy_client_franchise_parent_lvl	 = null;
		iods_hrrchy_client_franchise_id	 = null;
		iods_hrrchy_client_franchise_key	 = null;
		iods_hrrchy_client_iodsLastUpdatedDateTime	 = null;
		iods_hrrchy_client_last_update_date	 = null;
		iods_hrrchy_client_last_updated_by	 = null;
		iods_hrrchy_client_lob	 = null;
		iods_hrrchy_client_lst_trd_dt	 = null;
		iods_hrrchy_client_lst_trd_dt_old	 = null;
		iods_hrrchy_client_lvl	 = null;
		iods_hrrchy_client_naic	 = null;
		iods_hrrchy_client_nmbr_of_actvts	 = null;
		iods_hrrchy_client_parent_actualclient	 = null;
		iods_hrrchy_client_parent_client_id	 = null;
		iods_hrrchy_client_parent_client_name	 = null;
		iods_hrrchy_client_parent_clnt_sbtp_cd	 = null;
		iods_hrrchy_client_parent_created_by	 = null;
		iods_hrrchy_client_parent_created_datetime	 = null;
		iods_hrrchy_client_parent_crm_updt_dttm	 = null;
		iods_hrrchy_client_parent_deleted_flag	 = null;
		iods_hrrchy_client_parent_domicile_ancestor_actualdomicile	 = null;
		iods_hrrchy_client_parent_domicile_ancestor_created_by	 = null;
		iods_hrrchy_client_parent_domicile_ancestor_created_datetime	 = null;
		iods_hrrchy_client_parent_domicile_ancestor_domicile_id	 = null;
		iods_hrrchy_client_parent_domicile_ancestor_domicile_name	 = null;
		iods_hrrchy_client_parent_domicile_ancestor_last_update_date	 = null;
		iods_hrrchy_client_parent_domicile_ancestor_last_updated_by	 = null;
		iods_hrrchy_client_parent_domicile_ancestor_lvl	 = null;
		iods_hrrchy_client_parent_domicile_created_by	 = null;
		iods_hrrchy_client_parent_domicile_created_datetime	 = null;
		iods_hrrchy_client_parent_domicile_domicile_id	 = null;
		iods_hrrchy_client_parent_domicile_domicile_key	 = null;
		iods_hrrchy_client_parent_domicile_domicile_name	 = null;
		iods_hrrchy_client_parent_domicile_iodsActualLastUpdatedDateTime	 = null;
		iods_hrrchy_client_parent_domicile_iodsLastUpdatedDateTime	 = null;
		iods_hrrchy_client_parent_domicile_last_update_date	 = null;
		iods_hrrchy_client_parent_domicile_last_updated_by	 = null;
		iods_hrrchy_client_parent_domicile_lvl	 = null;
		iods_hrrchy_client_parent_domicile_parent_actualdomicile	 = null;
		iods_hrrchy_client_parent_domicile_parent_created_by	 = null;
		iods_hrrchy_client_parent_domicile_parent_created_datetime	 = null;
		iods_hrrchy_client_parent_domicile_parent_domicile_id	 = null;
		iods_hrrchy_client_parent_domicile_parent_domicile_name	 = null;
		iods_hrrchy_client_parent_domicile_parent_last_update_date	 = null;
		iods_hrrchy_client_parent_domicile_parent_last_updated_by	 = null;
		iods_hrrchy_client_parent_domicile_parent_lvl	 = null;
		iods_hrrchy_client_parent_domicile_id	 = null;
		iods_hrrchy_client_parent_domicile_key	 = null;
		iods_hrrchy_client_parent_franchise_ancestor_actualfranchise	 = null;
		iods_hrrchy_client_parent_franchise_ancestor_created_by	 = null;
		iods_hrrchy_client_parent_franchise_ancestor_created_datetime	 = null;
		iods_hrrchy_client_parent_franchise_ancestor_franchise_id	 = null;
		iods_hrrchy_client_parent_franchise_ancestor_franchise_name	 = null;
		iods_hrrchy_client_parent_franchise_ancestor_last_update_date	 = null;
		iods_hrrchy_client_parent_franchise_ancestor_last_updated_by	 = null;
		iods_hrrchy_client_parent_franchise_ancestor_lvl	 = null;
		iods_hrrchy_client_parent_franchise_created_by	 = null;
		iods_hrrchy_client_parent_franchise_created_datetime	 = null;
		iods_hrrchy_client_parent_franchise_franchise_id	 = null;
		iods_hrrchy_client_parent_franchise_franchise_key	 = null;
		iods_hrrchy_client_parent_franchise_franchise_name	 = null;
		iods_hrrchy_client_parent_franchise_iodsActualLastUpdatedDateTime	 = null;
		iods_hrrchy_client_parent_franchise_iodsLastUpdatedDateTime	 = null;
		iods_hrrchy_client_parent_franchise_last_update_date	 = null;
		iods_hrrchy_client_parent_franchise_last_updated_by	 = null;
		iods_hrrchy_client_parent_franchise_lvl	 = null;
		iods_hrrchy_client_parent_franchise_parent_actualfranchise	 = null;
		iods_hrrchy_client_parent_franchise_parent_created_by	 = null;
		iods_hrrchy_client_parent_franchise_parent_created_datetime	 = null;
		iods_hrrchy_client_parent_franchise_parent_franchise_id	 = null;
		iods_hrrchy_client_parent_franchise_parent_franchise_name	 = null;
		iods_hrrchy_client_parent_franchise_parent_last_update_date	 = null;
		iods_hrrchy_client_parent_franchise_parent_last_updated_by	 = null;
		iods_hrrchy_client_parent_franchise_parent_lvl	 = null;
		iods_hrrchy_client_parent_franchise_id	 = null;
		iods_hrrchy_client_parent_franchise_key	 = null;
		iods_hrrchy_client_parent_last_update_date	 = null;
		iods_hrrchy_client_parent_last_updated_by	 = null;
		iods_hrrchy_client_parent_lvl	 = null;
		iods_hrrchy_client_parent_nmbr_of_actvts	 = null;
		iods_hrrchy_client_parent_nmbr_of_cntcts	 = null;
		iods_hrrchy_client_parent_nmbr_of_vts	 = null;
		iods_hrrchy_client_parent_sector_ancestor_actualsector	 = null;
		iods_hrrchy_client_parent_sector_ancestor_created_by	 = null;
		iods_hrrchy_client_parent_sector_ancestor_created_datetime	 = null;
		iods_hrrchy_client_parent_sector_ancestor_last_update_date	 = null;
		iods_hrrchy_client_parent_sector_ancestor_last_updated_by	 = null;
		iods_hrrchy_client_parent_sector_ancestor_lvl	 = null;
		iods_hrrchy_client_parent_sector_ancestor_sector_id	 = null;
		iods_hrrchy_client_parent_sector_ancestor_sector_name	 = null;
		iods_hrrchy_client_parent_sector_created_by	 = null;
		iods_hrrchy_client_parent_sector_created_datetime	 = null;
		iods_hrrchy_client_parent_sector_iodsActualLastUpdatedDateTime	 = null;
		iods_hrrchy_client_parent_sector_iodsLastUpdatedDateTime	 = null;
		iods_hrrchy_client_parent_sector_last_update_date	 = null;
		iods_hrrchy_client_parent_sector_last_updated_by	 = null;
		iods_hrrchy_client_parent_sector_lvl	 = null;
		iods_hrrchy_client_parent_sector_parent_actualsector	 = null;
		iods_hrrchy_client_parent_sector_parent_created_by	 = null;
		iods_hrrchy_client_parent_sector_parent_created_datetime	 = null;
		iods_hrrchy_client_parent_sector_parent_last_update_date	 = null;
		iods_hrrchy_client_parent_sector_parent_last_updated_by	 = null;
		iods_hrrchy_client_parent_sector_parent_lvl	 = null;
		iods_hrrchy_client_parent_sector_parent_sector_id	 = null;
		iods_hrrchy_client_parent_sector_parent_sector_name	 = null;
		iods_hrrchy_client_parent_sector_sector_id	 = null;
		iods_hrrchy_client_parent_sector_sector_key	 = null;
		iods_hrrchy_client_parent_sector_sector_name	 = null;
		iods_hrrchy_client_parent_sector_id	 = null;
		iods_hrrchy_client_parent_sector_key	 = null;
		iods_hrrchy_client_party_id	 = null;
		iods_hrrchy_client_party_name	 = null;
		iods_hrrchy_client_prof_flag	 = null;
		iods_hrrchy_client_rvn_gnrtr_tag	 = null;
		iods_hrrchy_client_rvn_gnrtr_updt_dttm	 = null;
		iods_hrrchy_client_rvn_pfy	 = null;
		iods_hrrchy_client_rvn_ytd	 = null;
		iods_hrrchy_client_sector_ancestor_actualsector	 = null;
		iods_hrrchy_client_sector_ancestor_created_by	 = null;
		iods_hrrchy_client_sector_ancestor_created_datetime	 = null;
		iods_hrrchy_client_sector_ancestor_last_update_date	 = null;
		iods_hrrchy_client_sector_ancestor_last_updated_by	 = null;
		iods_hrrchy_client_sector_ancestor_lvl	 = null;
		iods_hrrchy_client_sector_ancestor_sector_id	 = null;
		iods_hrrchy_client_sector_ancestor_sector_name	 = null;
		iods_hrrchy_client_sector_created_by	 = null;
		iods_hrrchy_client_sector_created_datetime	 = null;
		iods_hrrchy_client_sector_iodsActualLastUpdatedDateTime	 = null;
		iods_hrrchy_client_sector_iodsLastUpdatedDateTime	 = null;
		iods_hrrchy_client_sector_last_update_date	 = null;
		iods_hrrchy_client_sector_last_updated_by	 = null;
		iods_hrrchy_client_sector_lvl	 = null;
		iods_hrrchy_client_sector_parent_actualsector	 = null;
		iods_hrrchy_client_sector_parent_created_by	 = null;
		iods_hrrchy_client_sector_parent_created_datetime	 = null;
		iods_hrrchy_client_sector_parent_last_update_date	 = null;
		iods_hrrchy_client_sector_parent_last_updated_by	 = null;
		iods_hrrchy_client_sector_parent_lvl	 = null;
		iods_hrrchy_client_sector_parent_sector_id	 = null;
		iods_hrrchy_client_sector_parent_sector_name	 = null;
		iods_hrrchy_client_sector_sector_id	 = null;
		iods_hrrchy_client_sector_sector_key	 = null;
		iods_hrrchy_client_sector_sector_name	 = null;
		iods_hrrchy_client_sector_id	 = null;
		iods_hrrchy_client_sector_key	 = null;
		iods_hrrchy_client_spn_id	 = null;
		iods_hrrchy_client_status	 = null;
		iods_hrrchy_client_trd_rvn_updt_dttm	 = null;
		iods_hrrchy_client_up_cas_id	 = null;
		iods_hrrchy_client_up_spn	 = null;
		iods_hrrchy_client_ancestor_sctr_ovrrd_by = null;
		iods_hrrchy_client_ancestor_sctr_ovrrd_cmmnts = null;
		iods_hrrchy_client_ancestor_sctr_ovrrd_dttm = null;
		iods_hrrchy_client_ancestor_sctr_ovrrd_flg = null;
		iods_hrrchy_client_ancestor_sctr_ovrrd_rsn = null;
		iods_hrrchy_client_nmbr_of_cntcts = null;
		iods_hrrchy_client_sctr_ovrrd_by = null;
		iods_hrrchy_client_sctr_ovrrd_cmmnts = null;
		iods_hrrchy_client_sctr_ovrrd_dttm = null;
		iods_hrrchy_client_sctr_ovrrd_flg = null;
		iods_hrrchy_client_sctr_ovrrd_rsn = null;
	}
	
	private static void writeObject(Long obj, BufferedWriter writer,boolean writeDelimiter) throws IOException{
		if(writeDelimiter)
			writer.write((obj == null ? " ":obj)+Character.toString(DELIMITER));
		else 
			writer.write(obj == null ? " ":obj+"");
	}
	
	private static void writeObject(String obj, BufferedWriter writer,boolean writeDelimiter) throws IOException{
		if(writeDelimiter)
			writer.write((obj == null ? " ":obj)+Character.toString(DELIMITER));
		else 
			writer.write(obj == null ? " ":obj+"");
	}
	
	private static void writeObject(Double obj, BufferedWriter writer,boolean writeDelimiter) throws IOException{
		if(writeDelimiter)
			writer.write((obj == null ? " ":obj)+Character.toString(DELIMITER));
		else 
			writer.write(obj == null ? " ":obj+"");
	}
	
	public static void writetotext(BufferedWriter writer) throws IOException
	{
		writeObject(iods_hrrchy_client_ancestor_actualclient , writer, true);
		writeObject(iods_hrrchy_client_ancestor_client_id	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_client_name	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_clnt_sbtp_cd	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_crm_updt_dttm	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_deleted_flag	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_ancestor_actualdomicile	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_ancestor_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_ancestor_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_ancestor_domicile_id	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_ancestor_domicile_name	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_ancestor_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_ancestor_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_ancestor_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_domicile_id	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_domicile_key	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_domicile_name	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_iodsActualLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_iodsLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_parent_actualdomicile	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_parent_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_parent_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_parent_domicile_id	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_parent_domicile_name	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_parent_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_parent_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_parent_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_id	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_domicile_key	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_ancestor_actualfranchise	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_ancestor_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_ancestor_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_ancestor_franchise_id	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_ancestor_franchise_name	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_ancestor_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_ancestor_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_ancestor_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_franchise_id	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_franchise_key	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_franchise_name	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_iodsActualLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_iodsLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_parent_actualfranchise	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_parent_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_parent_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_parent_franchise_id	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_parent_franchise_name	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_parent_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_parent_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_parent_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_id	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_franchise_key	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_icm_flg	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_icm_flg_updt_dttm	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_nmbr_of_actn_itms	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_nmbr_of_actvts	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_nmbr_of_cntcts	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_nmbr_of_vts	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sctr_ovrrd_by , writer, true); 
		writeObject(iods_hrrchy_client_ancestor_sctr_ovrrd_cmmnts , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sctr_ovrrd_dttm , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sctr_ovrrd_flg , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sctr_ovrrd_rsn , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_ancestor_actualsector	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_ancestor_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_ancestor_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_ancestor_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_ancestor_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_ancestor_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_ancestor_sector_id	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_ancestor_sector_name	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_iodsActualLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_iodsLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_parent_actualsector	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_parent_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_parent_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_parent_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_parent_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_parent_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_parent_sector_id	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_parent_sector_name	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_sector_id	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_sector_key	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_sector_name	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_id	 , writer, true);
		writeObject(iods_hrrchy_client_ancestor_sector_key	 , writer, true);
		writeObject(iods_hrrchy_client_cas_id	 , writer, true);
		writeObject(iods_hrrchy_client_client_id	 , writer, true);
		writeObject(iods_hrrchy_client_client_name	 , writer, true);
		writeObject(iods_hrrchy_client_clnt_sbtp_cd	 , writer, true);
		writeObject(iods_hrrchy_client_cmu_auto_manual_excptn_cmmnt	 , writer, true);
		writeObject(iods_hrrchy_client_cmu_hry_flag	 , writer, true);
		writeObject(iods_hrrchy_client_conf_flag	 , writer, true);
		writeObject(iods_hrrchy_client_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_crm_updt_dttm	 , writer, true);
		writeObject(iods_hrrchy_client_deleted_flag	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_ancestor_actualdomicile	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_ancestor_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_ancestor_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_ancestor_domicile_id	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_ancestor_domicile_name	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_ancestor_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_ancestor_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_ancestor_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_domicile_id	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_domicile_key	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_domicile_name	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_iodsActualLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_iodsLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_parent_actualdomicile	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_parent_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_parent_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_parent_domicile_id	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_parent_domicile_name	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_parent_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_parent_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_parent_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_id	 , writer, true);
		writeObject(iods_hrrchy_client_domicile_key	 , writer, true);
		writeObject(iods_hrrchy_client_ecid	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_ancestor_actualfranchise	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_ancestor_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_ancestor_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_ancestor_franchise_id	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_ancestor_franchise_name	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_ancestor_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_ancestor_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_ancestor_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_franchise_id	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_franchise_key	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_franchise_name	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_iodsActualLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_iodsLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_parent_actualfranchise	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_parent_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_parent_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_parent_franchise_id	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_parent_franchise_name	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_parent_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_parent_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_parent_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_id	 , writer, true);
		writeObject(iods_hrrchy_client_franchise_key	 , writer, true);
		writeObject(iods_hrrchy_client_iodsLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_lob	 , writer, true);
		writeObject(iods_hrrchy_client_lst_trd_dt	 , writer, true);
		writeObject(iods_hrrchy_client_lst_trd_dt_old	 , writer, true);
		writeObject(iods_hrrchy_client_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_naic	 , writer, true);
		writeObject(iods_hrrchy_client_nmbr_of_actvts	 , writer, true);
		writeObject(iods_hrrchy_client_nmbr_of_cntcts , writer, true);
		writeObject(iods_hrrchy_client_parent_actualclient	 , writer, true);
		writeObject(iods_hrrchy_client_parent_client_id	 , writer, true);
		writeObject(iods_hrrchy_client_parent_client_name	 , writer, true);
		writeObject(iods_hrrchy_client_parent_clnt_sbtp_cd	 , writer, true);
		writeObject(iods_hrrchy_client_parent_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_crm_updt_dttm	 , writer, true);
		writeObject(iods_hrrchy_client_parent_deleted_flag	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_ancestor_actualdomicile	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_ancestor_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_ancestor_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_ancestor_domicile_id	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_ancestor_domicile_name	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_ancestor_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_ancestor_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_ancestor_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_domicile_id	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_domicile_key	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_domicile_name	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_iodsActualLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_iodsLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_parent_actualdomicile	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_parent_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_parent_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_parent_domicile_id	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_parent_domicile_name	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_parent_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_parent_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_parent_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_id	 , writer, true);
		writeObject(iods_hrrchy_client_parent_domicile_key	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_ancestor_actualfranchise	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_ancestor_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_ancestor_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_ancestor_franchise_id	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_ancestor_franchise_name	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_ancestor_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_ancestor_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_ancestor_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_franchise_id	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_franchise_key	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_franchise_name	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_iodsActualLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_iodsLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_parent_actualfranchise	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_parent_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_parent_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_parent_franchise_id	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_parent_franchise_name	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_parent_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_parent_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_parent_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_id	 , writer, true);
		writeObject(iods_hrrchy_client_parent_franchise_key	 , writer, true);
		writeObject(iods_hrrchy_client_parent_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_parent_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_parent_nmbr_of_actvts	 , writer, true);
		writeObject(iods_hrrchy_client_parent_nmbr_of_cntcts	 , writer, true);
		writeObject(iods_hrrchy_client_parent_nmbr_of_vts	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_ancestor_actualsector	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_ancestor_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_ancestor_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_ancestor_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_ancestor_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_ancestor_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_ancestor_sector_id	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_ancestor_sector_name	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_iodsActualLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_iodsLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_parent_actualsector	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_parent_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_parent_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_parent_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_parent_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_parent_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_parent_sector_id	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_parent_sector_name	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_sector_id	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_sector_key	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_sector_name	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_id	 , writer, true);
		writeObject(iods_hrrchy_client_parent_sector_key	 , writer, true);
		writeObject(iods_hrrchy_client_party_id	 , writer, true);
		writeObject(iods_hrrchy_client_party_name	 , writer, true);
		writeObject(iods_hrrchy_client_prof_flag	 , writer, true);
		writeObject(iods_hrrchy_client_rvn_gnrtr_tag	 , writer, true);
		writeObject(iods_hrrchy_client_rvn_gnrtr_updt_dttm	 , writer, true);
		writeObject(iods_hrrchy_client_rvn_pfy	 , writer, true);
		writeObject(iods_hrrchy_client_rvn_ytd	 , writer, true);
		writeObject(iods_hrrchy_client_sctr_ovrrd_by , writer, true);
		writeObject(iods_hrrchy_client_sctr_ovrrd_cmmnts , writer, true);
		writeObject(iods_hrrchy_client_sctr_ovrrd_dttm , writer, true);
		writeObject(iods_hrrchy_client_sctr_ovrrd_flg , writer, true);
		writeObject(iods_hrrchy_client_sctr_ovrrd_rsn , writer, true);
		writeObject(iods_hrrchy_client_sector_ancestor_actualsector	 , writer, true);
		writeObject(iods_hrrchy_client_sector_ancestor_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_sector_ancestor_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_sector_ancestor_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_sector_ancestor_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_sector_ancestor_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_sector_ancestor_sector_id	 , writer, true);
		writeObject(iods_hrrchy_client_sector_ancestor_sector_name	 , writer, true);
		writeObject(iods_hrrchy_client_sector_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_sector_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_sector_iodsActualLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_sector_iodsLastUpdatedDateTime	 , writer, true);
		writeObject(iods_hrrchy_client_sector_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_sector_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_sector_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_sector_parent_actualsector	 , writer, true);
		writeObject(iods_hrrchy_client_sector_parent_created_by	 , writer, true);
		writeObject(iods_hrrchy_client_sector_parent_created_datetime	 , writer, true);
		writeObject(iods_hrrchy_client_sector_parent_last_update_date	 , writer, true);
		writeObject(iods_hrrchy_client_sector_parent_last_updated_by	 , writer, true);
		writeObject(iods_hrrchy_client_sector_parent_lvl	 , writer, true);
		writeObject(iods_hrrchy_client_sector_parent_sector_id	 , writer, true);
		writeObject(iods_hrrchy_client_sector_parent_sector_name	 , writer, true);
		writeObject(iods_hrrchy_client_sector_sector_id	 , writer, true);
		writeObject(iods_hrrchy_client_sector_sector_key	 , writer, true);
		writeObject(iods_hrrchy_client_sector_sector_name	 , writer, true);
		writeObject(iods_hrrchy_client_sector_id	 , writer, true);
		writeObject(iods_hrrchy_client_sector_key	 , writer, true);
		writeObject(iods_hrrchy_client_spn_id	 , writer, true);
		writeObject(iods_hrrchy_client_status	 , writer, true);
		writeObject(iods_hrrchy_client_trd_rvn_updt_dttm	 , writer, true);
		writeObject(iods_hrrchy_client_up_cas_id	 , writer, true);
		writeObject(iods_hrrchy_client_up_spn, writer, false);
		writeObject("\n",writer,false);

	}
	
	public static void writeHeaderToText(BufferedWriter writer) throws IOException
	{
		writeObject("iods_hrrchy_client_ancestor_actualclient",writer,true);
		writeObject("iods_hrrchy_client_ancestor_client_id",writer,true);
		writeObject("iods_hrrchy_client_ancestor_client_name",writer,true);
		writeObject("iods_hrrchy_client_ancestor_clnt_sbtp_cd",writer,true);
		writeObject("iods_hrrchy_client_ancestor_created_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_crm_updt_dttm",writer,true);
		writeObject("iods_hrrchy_client_ancestor_deleted_flag",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_ancestor_actualdomicile",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_ancestor_created_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_ancestor_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_ancestor_domicile_id",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_ancestor_domicile_name",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_ancestor_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_ancestor_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_ancestor_lvl",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_created_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_domicile_id",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_domicile_key",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_domicile_name",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_iodsActualLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_iodsLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_lvl",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_parent_actualdomicile",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_parent_created_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_parent_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_parent_domicile_id",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_parent_domicile_name",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_parent_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_parent_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_parent_lvl",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_id",writer,true);
		writeObject("iods_hrrchy_client_ancestor_domicile_key",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_ancestor_actualfranchise",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_ancestor_created_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_ancestor_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_ancestor_franchise_id",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_ancestor_franchise_name",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_ancestor_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_ancestor_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_ancestor_lvl",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_created_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_franchise_id",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_franchise_key",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_franchise_name",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_iodsActualLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_iodsLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_lvl",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_parent_actualfranchise",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_parent_created_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_parent_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_parent_franchise_id",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_parent_franchise_name",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_parent_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_parent_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_parent_lvl",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_id",writer,true);
		writeObject("iods_hrrchy_client_ancestor_franchise_key",writer,true);
		writeObject("iods_hrrchy_client_ancestor_icm_flg",writer,true);
		writeObject("iods_hrrchy_client_ancestor_icm_flg_updt_dttm",writer,true);
		writeObject("iods_hrrchy_client_ancestor_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_ancestor_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_lvl",writer,true);
		writeObject("iods_hrrchy_client_ancestor_nmbr_of_actn_itms",writer,true);
		writeObject("iods_hrrchy_client_ancestor_nmbr_of_actvts",writer,true);
		writeObject("iods_hrrchy_client_ancestor_nmbr_of_cntcts",writer,true);
		writeObject("iods_hrrchy_client_ancestor_nmbr_of_vts",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sctr_ovrrd_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sctr_ovrrd_cmmnts",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sctr_ovrrd_dttm",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sctr_ovrrd_flg",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sctr_ovrrd_rsn",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_ancestor_actualsector",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_ancestor_created_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_ancestor_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_ancestor_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_ancestor_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_ancestor_lvl",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_ancestor_sector_id",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_ancestor_sector_name",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_created_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_iodsActualLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_iodsLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_lvl",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_parent_actualsector",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_parent_created_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_parent_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_parent_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_parent_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_parent_lvl",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_parent_sector_id",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_parent_sector_name",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_sector_id",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_sector_key",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_sector_name",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_id",writer,true);
		writeObject("iods_hrrchy_client_ancestor_sector_key",writer,true);
		writeObject("iods_hrrchy_client_cas_id",writer,true);
		writeObject("iods_hrrchy_client_client_id",writer,true);
		writeObject("iods_hrrchy_client_client_name",writer,true);
		writeObject("iods_hrrchy_client_clnt_sbtp_cd",writer,true);
		writeObject("iods_hrrchy_client_cmu_auto_manual_excptn_cmmnt",writer,true);
		writeObject("iods_hrrchy_client_cmu_hry_flag",writer,true);
		writeObject("iods_hrrchy_client_conf_flag",writer,true);
		writeObject("iods_hrrchy_client_created_by",writer,true);
		writeObject("iods_hrrchy_client_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_crm_updt_dttm",writer,true);
		writeObject("iods_hrrchy_client_deleted_flag",writer,true);
		writeObject("iods_hrrchy_client_domicile_ancestor_actualdomicile",writer,true);
		writeObject("iods_hrrchy_client_domicile_ancestor_created_by",writer,true);
		writeObject("iods_hrrchy_client_domicile_ancestor_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_domicile_ancestor_domicile_id",writer,true);
		writeObject("iods_hrrchy_client_domicile_ancestor_domicile_name",writer,true);
		writeObject("iods_hrrchy_client_domicile_ancestor_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_domicile_ancestor_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_domicile_ancestor_lvl",writer,true);
		writeObject("iods_hrrchy_client_domicile_created_by",writer,true);
		writeObject("iods_hrrchy_client_domicile_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_domicile_domicile_id",writer,true);
		writeObject("iods_hrrchy_client_domicile_domicile_key",writer,true);
		writeObject("iods_hrrchy_client_domicile_domicile_name",writer,true);
		writeObject("iods_hrrchy_client_domicile_iodsActualLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_domicile_iodsLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_domicile_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_domicile_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_domicile_lvl",writer,true);
		writeObject("iods_hrrchy_client_domicile_parent_actualdomicile",writer,true);
		writeObject("iods_hrrchy_client_domicile_parent_created_by",writer,true);
		writeObject("iods_hrrchy_client_domicile_parent_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_domicile_parent_domicile_id",writer,true);
		writeObject("iods_hrrchy_client_domicile_parent_domicile_name",writer,true);
		writeObject("iods_hrrchy_client_domicile_parent_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_domicile_parent_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_domicile_parent_lvl",writer,true);
		writeObject("iods_hrrchy_client_domicile_id",writer,true);
		writeObject("iods_hrrchy_client_domicile_key",writer,true);
		writeObject("iods_hrrchy_client_ecid",writer,true);
		writeObject("iods_hrrchy_client_franchise_ancestor_actualfranchise",writer,true);
		writeObject("iods_hrrchy_client_franchise_ancestor_created_by",writer,true);
		writeObject("iods_hrrchy_client_franchise_ancestor_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_franchise_ancestor_franchise_id",writer,true);
		writeObject("iods_hrrchy_client_franchise_ancestor_franchise_name",writer,true);
		writeObject("iods_hrrchy_client_franchise_ancestor_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_franchise_ancestor_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_franchise_ancestor_lvl",writer,true);
		writeObject("iods_hrrchy_client_franchise_created_by",writer,true);
		writeObject("iods_hrrchy_client_franchise_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_franchise_franchise_id",writer,true);
		writeObject("iods_hrrchy_client_franchise_franchise_key",writer,true);
		writeObject("iods_hrrchy_client_franchise_franchise_name",writer,true);
		writeObject("iods_hrrchy_client_franchise_iodsActualLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_franchise_iodsLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_franchise_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_franchise_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_franchise_lvl",writer,true);
		writeObject("iods_hrrchy_client_franchise_parent_actualfranchise",writer,true);
		writeObject("iods_hrrchy_client_franchise_parent_created_by",writer,true);
		writeObject("iods_hrrchy_client_franchise_parent_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_franchise_parent_franchise_id",writer,true);
		writeObject("iods_hrrchy_client_franchise_parent_franchise_name",writer,true);
		writeObject("iods_hrrchy_client_franchise_parent_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_franchise_parent_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_franchise_parent_lvl",writer,true);
		writeObject("iods_hrrchy_client_franchise_id",writer,true);
		writeObject("iods_hrrchy_client_franchise_key",writer,true);
		writeObject("iods_hrrchy_client_iodsLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_lob",writer,true);
		writeObject("iods_hrrchy_client_lst_trd_dt",writer,true);
		writeObject("iods_hrrchy_client_lst_trd_dt_old",writer,true);
		writeObject("iods_hrrchy_client_lvl",writer,true);
		writeObject("iods_hrrchy_client_naic",writer,true);
		writeObject("iods_hrrchy_client_nmbr_of_actvts",writer,true);
		writeObject("iods_hrrchy_client_nmbr_of_cntcts ",writer,true);
		writeObject("iods_hrrchy_client_parent_actualclient",writer,true);
		writeObject("iods_hrrchy_client_parent_client_id",writer,true);
		writeObject("iods_hrrchy_client_parent_client_name",writer,true);
		writeObject("iods_hrrchy_client_parent_clnt_sbtp_cd",writer,true);
		writeObject("iods_hrrchy_client_parent_created_by",writer,true);
		writeObject("iods_hrrchy_client_parent_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_parent_crm_updt_dttm",writer,true);
		writeObject("iods_hrrchy_client_parent_deleted_flag",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_ancestor_actualdomicile",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_ancestor_created_by",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_ancestor_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_ancestor_domicile_id",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_ancestor_domicile_name",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_ancestor_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_ancestor_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_ancestor_lvl",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_created_by",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_domicile_id",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_domicile_key",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_domicile_name",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_iodsActualLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_iodsLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_lvl",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_parent_actualdomicile",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_parent_created_by",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_parent_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_parent_domicile_id",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_parent_domicile_name",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_parent_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_parent_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_parent_lvl",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_id",writer,true);
		writeObject("iods_hrrchy_client_parent_domicile_key",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_ancestor_actualfranchise",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_ancestor_created_by",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_ancestor_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_ancestor_franchise_id",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_ancestor_franchise_name",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_ancestor_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_ancestor_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_ancestor_lvl",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_created_by",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_franchise_id",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_franchise_key",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_franchise_name",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_iodsActualLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_iodsLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_lvl",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_parent_actualfranchise",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_parent_created_by",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_parent_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_parent_franchise_id",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_parent_franchise_name",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_parent_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_parent_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_parent_lvl",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_id",writer,true);
		writeObject("iods_hrrchy_client_parent_franchise_key",writer,true);
		writeObject("iods_hrrchy_client_parent_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_parent_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_parent_lvl",writer,true);
		writeObject("iods_hrrchy_client_parent_nmbr_of_actvts",writer,true);
		writeObject("iods_hrrchy_client_parent_nmbr_of_cntcts",writer,true);
		writeObject("iods_hrrchy_client_parent_nmbr_of_vts",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_ancestor_actualsector",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_ancestor_created_by",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_ancestor_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_ancestor_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_ancestor_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_ancestor_lvl",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_ancestor_sector_id",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_ancestor_sector_name",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_created_by",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_iodsActualLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_iodsLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_lvl",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_parent_actualsector",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_parent_created_by",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_parent_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_parent_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_parent_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_parent_lvl",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_parent_sector_id",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_parent_sector_name",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_sector_id",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_sector_key",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_sector_name",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_id",writer,true);
		writeObject("iods_hrrchy_client_parent_sector_key",writer,true);
		writeObject("iods_hrrchy_client_party_id",writer,true);
		writeObject("iods_hrrchy_client_party_name",writer,true);
		writeObject("iods_hrrchy_client_prof_flag",writer,true);
		writeObject("iods_hrrchy_client_rvn_gnrtr_tag",writer,true);
		writeObject("iods_hrrchy_client_rvn_gnrtr_updt_dttm",writer,true);
		writeObject("iods_hrrchy_client_rvn_pfy",writer,true);
		writeObject("iods_hrrchy_client_rvn_ytd",writer,true);
		writeObject("iods_hrrchy_client_sctr_ovrrd_by",writer,true);
		writeObject("iods_hrrchy_client_sctr_ovrrd_cmmnts",writer,true);
		writeObject("iods_hrrchy_client_sctr_ovrrd_dttm",writer,true);
		writeObject("iods_hrrchy_client_sctr_ovrrd_flg",writer,true);
		writeObject("iods_hrrchy_client_sctr_ovrrd_rsn",writer,true);
		writeObject("iods_hrrchy_client_sector_ancestor_actualsector",writer,true);
		writeObject("iods_hrrchy_client_sector_ancestor_created_by",writer,true);
		writeObject("iods_hrrchy_client_sector_ancestor_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_sector_ancestor_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_sector_ancestor_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_sector_ancestor_lvl",writer,true);
		writeObject("iods_hrrchy_client_sector_ancestor_sector_id",writer,true);
		writeObject("iods_hrrchy_client_sector_ancestor_sector_name",writer,true);
		writeObject("iods_hrrchy_client_sector_created_by",writer,true);
		writeObject("iods_hrrchy_client_sector_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_sector_iodsActualLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_sector_iodsLastUpdatedDateTime",writer,true);
		writeObject("iods_hrrchy_client_sector_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_sector_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_sector_lvl",writer,true);
		writeObject("iods_hrrchy_client_sector_parent_actualsector",writer,true);
		writeObject("iods_hrrchy_client_sector_parent_created_by",writer,true);
		writeObject("iods_hrrchy_client_sector_parent_created_datetime",writer,true);
		writeObject("iods_hrrchy_client_sector_parent_last_update_date",writer,true);
		writeObject("iods_hrrchy_client_sector_parent_last_updated_by",writer,true);
		writeObject("iods_hrrchy_client_sector_parent_lvl",writer,true);
		writeObject("iods_hrrchy_client_sector_parent_sector_id",writer,true);
		writeObject("iods_hrrchy_client_sector_parent_sector_name",writer,true);
		writeObject("iods_hrrchy_client_sector_sector_id",writer,true);
		writeObject("iods_hrrchy_client_sector_sector_key",writer,true);
		writeObject("iods_hrrchy_client_sector_sector_name",writer,true);
		writeObject("iods_hrrchy_client_sector_id",writer,true);
		writeObject("iods_hrrchy_client_sector_key",writer,true);
		writeObject("iods_hrrchy_client_spn_id",writer,true);
		writeObject("iods_hrrchy_client_status",writer,true);
		writeObject("iods_hrrchy_client_trd_rvn_updt_dttm",writer,true);
		writeObject("iods_hrrchy_client_up_cas_id",writer,true);
		writeObject("iods_hrrchy_client_up_spn",writer,true);
		writeObject("\n",writer,false);
	}
	
	private static void initClientHierarchyAncestorAttributes(JSONObject iods_hrrchy_client_ancestor_obj){
		if(iods_hrrchy_client_ancestor_obj.get("actualclient") != null){
			iods_hrrchy_client_ancestor_actualclient = (Long) iods_hrrchy_client_ancestor_obj.get("actualclient");
		}
		if(iods_hrrchy_client_ancestor_obj.get("client_id") != null){
			iods_hrrchy_client_ancestor_client_id = (Long) iods_hrrchy_client_ancestor_obj.get("client_id");
		}
		iods_hrrchy_client_ancestor_client_name = (String) iods_hrrchy_client_ancestor_obj.get("client_name");
		iods_hrrchy_client_ancestor_clnt_sbtp_cd = (String) iods_hrrchy_client_ancestor_obj.get("clnt_sbtp_cd");
		iods_hrrchy_client_ancestor_created_by = (String) iods_hrrchy_client_ancestor_obj.get("created_by");
		iods_hrrchy_client_ancestor_created_datetime = (String) iods_hrrchy_client_ancestor_obj.get("created_datetime");
		iods_hrrchy_client_ancestor_crm_updt_dttm = (String) iods_hrrchy_client_ancestor_obj.get("crm_updt_dttm");
		iods_hrrchy_client_ancestor_deleted_flag = (String) iods_hrrchy_client_ancestor_obj.get("deleted_flag");
		
		iods_hrrchy_client_ancestor_sctr_ovrrd_by = (String) iods_hrrchy_client_ancestor_obj.get("sctr_ovrrd_by");
		iods_hrrchy_client_ancestor_sctr_ovrrd_cmmnts = (String) iods_hrrchy_client_ancestor_obj.get("sctr_ovrrd_by");
		iods_hrrchy_client_ancestor_sctr_ovrrd_dttm = (String) iods_hrrchy_client_ancestor_obj.get("sctr_ovrrd_dttm");
		iods_hrrchy_client_ancestor_sctr_ovrrd_flg = (String) iods_hrrchy_client_ancestor_obj.get("sctr_ovrrd_flg");
		iods_hrrchy_client_ancestor_sctr_ovrrd_rsn = (String) iods_hrrchy_client_ancestor_obj.get("sctr_ovrrd_rsn");
		
		if(iods_hrrchy_client_ancestor_obj.get("domicile_id") != null ){
			iods_hrrchy_client_ancestor_domicile_id = (Long) iods_hrrchy_client_ancestor_obj.get("domicile_id");
		}
		iods_hrrchy_client_ancestor_domicile_key = (String) iods_hrrchy_client_ancestor_obj.get("domicile_key");
		if(iods_hrrchy_client_ancestor_obj.get("franchise_id") != null){
			iods_hrrchy_client_ancestor_franchise_id = (Long) iods_hrrchy_client_ancestor_obj.get("franchise_id");
		}
		iods_hrrchy_client_ancestor_franchise_key = (String) iods_hrrchy_client_ancestor_obj.get("franchise_key");
		iods_hrrchy_client_ancestor_icm_flg = (String) iods_hrrchy_client_ancestor_obj.get("icm_flg");
		iods_hrrchy_client_ancestor_icm_flg_updt_dttm = (String) iods_hrrchy_client_ancestor_obj.get("icm_flg_updt_dttm");
		iods_hrrchy_client_ancestor_last_update_date = (String) iods_hrrchy_client_ancestor_obj.get("last_update_date");
		iods_hrrchy_client_ancestor_last_updated_by = (String) iods_hrrchy_client_ancestor_obj.get("last_updated_by");
		if(iods_hrrchy_client_ancestor_obj.get("lvl") != null){
			iods_hrrchy_client_ancestor_lvl = (Long) iods_hrrchy_client_ancestor_obj.get("lvl");
		}
		if(iods_hrrchy_client_ancestor_obj.get("nmbr_of_actn_itms") != null){
			iods_hrrchy_client_ancestor_nmbr_of_actn_itms = (Long) iods_hrrchy_client_ancestor_obj.get("nmbr_of_actn_itms");
		}
		if ( iods_hrrchy_client_ancestor_obj.get("nmbr_of_actvts")!= null){
			iods_hrrchy_client_ancestor_nmbr_of_actvts = (Long) iods_hrrchy_client_ancestor_obj.get("nmbr_of_actvts");
		}
		if(iods_hrrchy_client_ancestor_obj.get("nmbr_of_cntcts") != null){
			iods_hrrchy_client_ancestor_nmbr_of_cntcts = (Long) iods_hrrchy_client_ancestor_obj.get("nmbr_of_cntcts");
		}
		if(iods_hrrchy_client_ancestor_obj.get("nmbr_of_vts") instanceof String &&  iods_hrrchy_client_ancestor_obj.get("nmbr_of_vts")  != null){
			iods_hrrchy_client_ancestor_nmbr_of_vts = (String) iods_hrrchy_client_ancestor_obj.get("nmbr_of_vts");
		} else if (iods_hrrchy_client_ancestor_obj.get("nmbr_of_vts") instanceof Long &&  iods_hrrchy_client_ancestor_obj.get("nmbr_of_vts")  != null){
			
		Long iods_hrrchy_client_ancestor_nmbr_of_vts_lng = (Long) iods_hrrchy_client_ancestor_obj.get("nmbr_of_vts");
		iods_hrrchy_client_ancestor_nmbr_of_vts = iods_hrrchy_client_ancestor_nmbr_of_vts_lng.toString();
		}
		if(iods_hrrchy_client_ancestor_obj.get("sector_id") != null){
			iods_hrrchy_client_ancestor_sector_id = (Long) iods_hrrchy_client_ancestor_obj.get("sector_id");
		}
		iods_hrrchy_client_ancestor_sector_key = (String) iods_hrrchy_client_ancestor_obj.get("sector_key");
	}
	
	private static void initAncestorDomicileAncestorAttr(JSONObject iods_hrrchy_client_ancestor_domicile_ancestor_obj){
		iods_hrrchy_client_ancestor_domicile_ancestor_actualdomicile = (Long) iods_hrrchy_client_ancestor_domicile_ancestor_obj.get("actualdomicile");
		iods_hrrchy_client_ancestor_domicile_ancestor_created_by = (String) iods_hrrchy_client_ancestor_domicile_ancestor_obj.get("created_by");
		iods_hrrchy_client_ancestor_domicile_ancestor_created_datetime = (String) iods_hrrchy_client_ancestor_domicile_ancestor_obj.get("created_datetime");
		iods_hrrchy_client_ancestor_domicile_ancestor_domicile_id = (Long) iods_hrrchy_client_ancestor_domicile_ancestor_obj.get("domicile_id");
		iods_hrrchy_client_ancestor_domicile_ancestor_domicile_name = (String) iods_hrrchy_client_ancestor_domicile_ancestor_obj.get("domicile_name");
		iods_hrrchy_client_ancestor_domicile_ancestor_last_update_date = (String) iods_hrrchy_client_ancestor_domicile_ancestor_obj.get("last_update_date");
		iods_hrrchy_client_ancestor_domicile_ancestor_last_updated_by = (String) iods_hrrchy_client_ancestor_domicile_ancestor_obj.get("last_updated_by");
		iods_hrrchy_client_ancestor_domicile_ancestor_lvl = (Long) iods_hrrchy_client_ancestor_domicile_ancestor_obj.get("lvl");
		
	}
	
	private static void initAncestorFranchiseAncestorAttr(JSONObject iods_hrrchy_client_ancestor_franchise_ancestor_obj){
		if(iods_hrrchy_client_ancestor_franchise_ancestor_obj.get("actualfranchise")!=null){
			iods_hrrchy_client_ancestor_franchise_ancestor_actualfranchise = (Long) iods_hrrchy_client_ancestor_franchise_ancestor_obj.get("actualfranchise");
		}
		iods_hrrchy_client_ancestor_franchise_ancestor_created_by = (String) iods_hrrchy_client_ancestor_franchise_ancestor_obj.get("created_by");
		iods_hrrchy_client_ancestor_franchise_ancestor_created_datetime = (String) iods_hrrchy_client_ancestor_franchise_ancestor_obj.get("created_datetime");
		if(iods_hrrchy_client_ancestor_franchise_ancestor_obj.get("franchise_id") != null){
			iods_hrrchy_client_ancestor_franchise_ancestor_franchise_id = (Long) iods_hrrchy_client_ancestor_franchise_ancestor_obj.get("franchise_id");
		}
		iods_hrrchy_client_ancestor_franchise_ancestor_franchise_name = (String) iods_hrrchy_client_ancestor_franchise_ancestor_obj.get("franchise_name");
		iods_hrrchy_client_ancestor_franchise_ancestor_last_update_date = (String) iods_hrrchy_client_ancestor_franchise_ancestor_obj.get("last_update_date");
		iods_hrrchy_client_ancestor_franchise_ancestor_last_updated_by = (String) iods_hrrchy_client_ancestor_franchise_ancestor_obj.get("last_updated_by");
		if( iods_hrrchy_client_ancestor_franchise_ancestor_obj.get("lvl") != null){
			iods_hrrchy_client_ancestor_franchise_ancestor_lvl = (Long) iods_hrrchy_client_ancestor_franchise_ancestor_obj.get("lvl");
		}
	}
	
	private static void initAncestorSectorAncestorAttr(JSONObject iods_hrrchy_client_ancestor_sector_ancestor_obj){
		iods_hrrchy_client_ancestor_sector_ancestor_actualsector = (Long) iods_hrrchy_client_ancestor_sector_ancestor_obj.get("actualsector");
		iods_hrrchy_client_ancestor_sector_ancestor_created_by = (String) iods_hrrchy_client_ancestor_sector_ancestor_obj.get("created_by");
		iods_hrrchy_client_ancestor_sector_ancestor_created_datetime = (String) iods_hrrchy_client_ancestor_sector_ancestor_obj.get("created_datetime");
		iods_hrrchy_client_ancestor_sector_ancestor_last_update_date = (String) iods_hrrchy_client_ancestor_sector_ancestor_obj.get("last_update_date");
		iods_hrrchy_client_ancestor_sector_ancestor_last_updated_by = (String) iods_hrrchy_client_ancestor_sector_ancestor_obj.get("last_updated_by");
		iods_hrrchy_client_ancestor_sector_ancestor_lvl = (Long) iods_hrrchy_client_ancestor_sector_ancestor_obj.get("lvl");
		iods_hrrchy_client_ancestor_sector_ancestor_sector_id = (Long) iods_hrrchy_client_ancestor_sector_ancestor_obj.get("sector_id");
		iods_hrrchy_client_ancestor_sector_ancestor_sector_name = (String) iods_hrrchy_client_ancestor_sector_ancestor_obj.get("sector_name");
	}
	
	private static void initDomicileAncestorAttr(JSONObject iods_hrrchy_domicile_ancestor_obj){
		if(iods_hrrchy_domicile_ancestor_obj.get("actualdomicile") != null){
			iods_hrrchy_client_domicile_ancestor_actualdomicile = (Long) iods_hrrchy_domicile_ancestor_obj.get("actualdomicile");
		}
		iods_hrrchy_client_domicile_ancestor_created_by = (String) iods_hrrchy_domicile_ancestor_obj.get("created_by");
		iods_hrrchy_client_domicile_ancestor_created_datetime = (String) iods_hrrchy_domicile_ancestor_obj.get("created_datetime");
		if(iods_hrrchy_domicile_ancestor_obj.get("domicile_id") != null){
			iods_hrrchy_client_domicile_ancestor_domicile_id = (Long) iods_hrrchy_domicile_ancestor_obj.get("domicile_id");
		}
		iods_hrrchy_client_domicile_ancestor_domicile_name = (String) iods_hrrchy_domicile_ancestor_obj.get("domicile_name");
		iods_hrrchy_client_domicile_ancestor_last_update_date = (String) iods_hrrchy_domicile_ancestor_obj.get("last_update_date");
		iods_hrrchy_client_domicile_ancestor_last_updated_by = (String) iods_hrrchy_domicile_ancestor_obj.get("last_updated_by");
		if(iods_hrrchy_domicile_ancestor_obj.get("lvl") != null){
			iods_hrrchy_client_domicile_ancestor_lvl = (Long) iods_hrrchy_domicile_ancestor_obj.get("lvl");
		}
	}
	
	private static void initFranchiseAncestorAttr(JSONObject iods_hrrchy_client_franchise_ancestor_obj){
		iods_hrrchy_client_franchise_ancestor_actualfranchise = (Long) iods_hrrchy_client_franchise_ancestor_obj.get("actualfranchise");
		iods_hrrchy_client_franchise_ancestor_created_by = (String) iods_hrrchy_client_franchise_ancestor_obj.get("created_by");
		iods_hrrchy_client_franchise_ancestor_created_datetime = (String) iods_hrrchy_client_franchise_ancestor_obj.get("created_datetime");
		iods_hrrchy_client_franchise_ancestor_franchise_id = (Long) iods_hrrchy_client_franchise_ancestor_obj.get("franchise_id");
		iods_hrrchy_client_franchise_ancestor_franchise_name = (String) iods_hrrchy_client_franchise_ancestor_obj.get("franchise_name");
		iods_hrrchy_client_franchise_ancestor_last_update_date = (String) iods_hrrchy_client_franchise_ancestor_obj.get("last_update_date");
		iods_hrrchy_client_franchise_ancestor_last_updated_by = (String) iods_hrrchy_client_franchise_ancestor_obj.get("last_updated_by");
		iods_hrrchy_client_franchise_ancestor_lvl = (Long) iods_hrrchy_client_franchise_ancestor_obj.get("lvl");
	}
	
	private static void initParentAttr(JSONObject iods_hrrchy_client_parent_obj){
		/*Initialize client hierarchy parent attributes**/
		if(iods_hrrchy_client_parent_obj.get("actualclient") != null && iods_hrrchy_client_parent_obj.get("actualclient") != ""){
		iods_hrrchy_client_parent_actualclient = (Long) iods_hrrchy_client_parent_obj.get("actualclient");
		}
		if(iods_hrrchy_client_parent_obj.get("client_id") != null){
		iods_hrrchy_client_parent_client_id = (Long) iods_hrrchy_client_parent_obj.get("client_id");
		}
		iods_hrrchy_client_parent_client_name = (String) iods_hrrchy_client_parent_obj.get("client_name");
		iods_hrrchy_client_parent_clnt_sbtp_cd = (String) iods_hrrchy_client_parent_obj.get("clnt_sbtp_cd");
		iods_hrrchy_client_parent_created_by = (String) iods_hrrchy_client_parent_obj.get("created_by");
		iods_hrrchy_client_parent_created_datetime = (String) iods_hrrchy_client_parent_obj.get("created_datetime");
		iods_hrrchy_client_parent_crm_updt_dttm = (String) iods_hrrchy_client_parent_obj.get("crm_updt_dttm");
		iods_hrrchy_client_parent_deleted_flag = (String) iods_hrrchy_client_parent_obj.get("deleted_flag");
		if( iods_hrrchy_client_parent_obj.get("domicile_id") !=null){
		iods_hrrchy_client_parent_domicile_id = (Long) iods_hrrchy_client_parent_obj.get("domicile_id");
		}
		iods_hrrchy_client_parent_domicile_key = (String) iods_hrrchy_client_parent_obj.get("domicile_key");
		if( iods_hrrchy_client_parent_obj.get("franchise_id") !=null){
		iods_hrrchy_client_parent_franchise_id = (Long) iods_hrrchy_client_parent_obj.get("franchise_id");
		}
		iods_hrrchy_client_parent_franchise_key = (String) iods_hrrchy_client_parent_obj.get("franchise_key");
		iods_hrrchy_client_parent_last_update_date = (String) iods_hrrchy_client_parent_obj.get("last_update_date");
		iods_hrrchy_client_parent_last_updated_by = (String) iods_hrrchy_client_parent_obj.get("last_updated_by");
		if( iods_hrrchy_client_parent_obj.get("lvl") !=null){
		iods_hrrchy_client_parent_lvl = (Long) iods_hrrchy_client_parent_obj.get("lvl");
		}
		if( iods_hrrchy_client_parent_obj.get("nmbr_of_actvts") !=null){
		iods_hrrchy_client_parent_nmbr_of_actvts = (Long) iods_hrrchy_client_parent_obj.get("nmbr_of_actvts");
		}
		if( iods_hrrchy_client_parent_obj.get("nmbr_of_cntcts") !=null){
		iods_hrrchy_client_parent_nmbr_of_cntcts = (Long) iods_hrrchy_client_parent_obj.get("nmbr_of_cntcts");
		}
		if (iods_hrrchy_client_parent_obj.get("nmbr_of_vts") instanceof String && iods_hrrchy_client_parent_obj.get("nmbr_of_vts") != null){
		iods_hrrchy_client_parent_nmbr_of_vts = (String) iods_hrrchy_client_parent_obj.get("nmbr_of_vts");
		} else if (iods_hrrchy_client_parent_obj.get("nmbr_of_vts") instanceof Long && iods_hrrchy_client_parent_obj.get("nmbr_of_vts") != null){
			
		Long	iods_hrrchy_client_parent_nmbr_of_vts_lng = (Long) iods_hrrchy_client_parent_obj.get("nmbr_of_vts");
		iods_hrrchy_client_parent_nmbr_of_vts = iods_hrrchy_client_parent_nmbr_of_vts_lng.toString();
			
		}
		if( iods_hrrchy_client_parent_obj.get("sector_id") !=null){
		iods_hrrchy_client_parent_sector_id = (Long) iods_hrrchy_client_parent_obj.get("sector_id");
		}
		iods_hrrchy_client_parent_sector_key = (String) iods_hrrchy_client_parent_obj.get("sector_key");
	}
	
	private static void initParentDomicileAttr(JSONObject iods_hrrchy_client_parent_domicile_obj){
		iods_hrrchy_client_parent_domicile_created_by = (String) iods_hrrchy_client_parent_domicile_obj.get("created_by");
		iods_hrrchy_client_parent_domicile_created_datetime = (String) iods_hrrchy_client_parent_domicile_obj.get("created_datetime");
		iods_hrrchy_client_parent_domicile_domicile_id = (Long) iods_hrrchy_client_parent_domicile_obj.get("domicile_id");
		iods_hrrchy_client_parent_domicile_domicile_key = (String) iods_hrrchy_client_parent_domicile_obj.get("domicile_key");
		iods_hrrchy_client_parent_domicile_domicile_name = (String) iods_hrrchy_client_parent_domicile_obj.get("domicile_name");
		iods_hrrchy_client_parent_domicile_iodsActualLastUpdatedDateTime = (String) iods_hrrchy_client_parent_domicile_obj.get("iodsActualLastUpdatedDateTime");
		iods_hrrchy_client_parent_domicile_iodsLastUpdatedDateTime = (String) iods_hrrchy_client_parent_domicile_obj.get("iodsLastUpdatedDateTime");
		iods_hrrchy_client_parent_domicile_last_update_date = (String) iods_hrrchy_client_parent_domicile_obj.get("last_update_date");
		iods_hrrchy_client_parent_domicile_last_updated_by = (String) iods_hrrchy_client_parent_domicile_obj.get("last_updated_by");
		iods_hrrchy_client_parent_domicile_lvl = (Long) iods_hrrchy_client_parent_domicile_obj.get("lvl");
			
	}
	
	private static void initParentDomicileParentAttr(JSONObject iods_hrrchy_client_parent_domicile_parent_obj){
		iods_hrrchy_client_parent_domicile_parent_actualdomicile = (Long) iods_hrrchy_client_parent_domicile_parent_obj.get("actualdomicile");
		iods_hrrchy_client_parent_domicile_parent_created_by = (String) iods_hrrchy_client_parent_domicile_parent_obj.get("created_by");
		iods_hrrchy_client_parent_domicile_parent_created_datetime = (String) iods_hrrchy_client_parent_domicile_parent_obj.get("created_datetime");
		iods_hrrchy_client_parent_domicile_parent_domicile_id = (Long) iods_hrrchy_client_parent_domicile_parent_obj.get("domicile_id");
		iods_hrrchy_client_parent_domicile_parent_domicile_name = (String) iods_hrrchy_client_parent_domicile_parent_obj.get("domicile_name");
		iods_hrrchy_client_parent_domicile_parent_last_update_date = (String) iods_hrrchy_client_parent_domicile_parent_obj.get("last_update_date");
		iods_hrrchy_client_parent_domicile_parent_last_updated_by = (String) iods_hrrchy_client_parent_domicile_parent_obj.get("last_updated_by");
		iods_hrrchy_client_parent_domicile_parent_lvl = (Long) iods_hrrchy_client_parent_domicile_parent_obj.get("lvl");
	}

}
