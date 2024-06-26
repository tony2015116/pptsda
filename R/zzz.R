## "zzz.R" script

.onLoad <- function(libname, pkgname) {
  utils::globalVariables(c(".", "..ERROR_TYPES", "N", "OE", "color_judge", "corrected_dfi", "create_plots", "data_na_greater_than_one_third",
                           "date_length", "date_na", "day_diff", "day_text", "dfi_error_part", "dfi_right_part", "duration", "end_date_cut",
                           "end_date_origin", "entrancefeedweight", "entrancetime", "error_msg", "exitfeedweight", "exittime", "fcr",
                           "feed_intake", "fitted", "fiv", "fiv_0", "fiv_hi", "fiv_lo", "frv", "frv_0", "frv_hi", "frv_hi_fiv_lo", "frv_hi_strict",
                           "frv_lo", "ftd", "ftd_lo", "fwd", "fwd_hi", "fwd_lo", "lm_predict", "lm_slope", "location", "location_maxn", "ltd",
                           "ltd_lo", "lwd", "lwd_hi", "lwd_lo", "max_weight", "max_weight_cut", "max_weight_origin", "mean_residual", "min_weight",
                           "min_weight_cut", "min_weight_origin", "model_lmrob", "n", "n_days", "n_responders", "otv", "otv_hi", "otv_lo", "outliers",
                           "r_squared", "responder", "row_sum", "safe_lm", "safe_lmrob", "sd_residual", "seq_days", "seq_in_day", "seq_in_location",
                           "stage", "stage_days", "start_date_cut", "start_date_origin", "temp", "test_days_less_than_40", "test_records_less_than_20",
                           "visit_time", "warning_msg", "weight", "fitted", "cor_fcr", "..selected_cols", "cv"))

  op <- options()
  op.pptsda <- list(
    Encoding = "UTF-8",
    scipen = 999,
    digits = 8,
    openxlsx.datetimeFormat = "yyyy-mm-dd"
  )
  toset <- !(names(op.pptsda) %in% names(op))
  if(any(toset)) options(op.pptsda[toset])

  invisible()
}
