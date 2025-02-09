// class ApiConstants {
//   static const String apiBaseUrl = "https://vcare.integration25.com/api/";
//
//   static const String login = "auth/login";
//   static const String signup = "auth/register";
//
// }



class ApiConstants {
  static const String apiBaseUrl = "https://zimam-nsk-app.zimam.sa/api/";
  // Alternate URLs (commented for now)
  // static const String apiUrl = "https://staff.zimam.sa";
  // static const String apiUrl = "https://staff-dev.zimam.sa";

  // static const String apiBaseController = "/api/";

  // Auth
  // static const String apiAuthController = "$apiBaseController";
  static const String apiAuthLoginController = "${apiBaseUrl}login";

  // Home
  static const String apiHomeController = "mobility/home";

  // Attendance
  static const String apiAttendanceController = "mobility/attendance/";
  static const String apiAttendanceHomeController = "${apiAttendanceController}home";
  static const String apiAttendanceNewController = "${apiAttendanceController}new";
  static const String apiAttendanceCateringController = "${apiAttendanceController}catering";

  // Parameters
  static const String apiParamPageNumber = "PageNumber";
  static const String apiParamPageSize = "PageSize";
  static const int apiPageSize = 30;

  // Auditing
  static const String apiAuditingController = "mobility/auditing/";
  static const String apiAuditingStaffController = "${apiAuditingController}staff";
  static const String apiAuditingEntitiesController = "${apiAuditingController}entities";
  static const String apiAuditingFormController = "${apiAuditingController}form";
  static const String apiAuditingSaveController = "${apiAuditingController}save";
  static const String apiAuditingSetEntityAssignmentController =
      "${apiAuditingController}set-entity-assignment";
  static const String apiAuditingRemoveEntityAssignmentController =
      "${apiAuditingController}remove-entity-assignment";
  static const String apiAuditingEntityAwaitingConfirmController =
      "${apiAuditingController}entities";
  static const String apiUpdateEntityConfirmationController =
      "${apiAuditingController}update-entity-confirmation-status";
  static const String apiUpdateEntityFinishEntityFormController =
      "${apiAuditingController}finish-entity-form";
  static const String apiUpdateEntitySaveEntityController =
      "${apiAuditingController}save-entity-note";
  static const String apiUpdateEntitySaveBusController =
      "${apiAuditingController}save-form-bus";

  // Onboarding
  static const String apiOnboardingController = "mobility/onboarding";

  // Uploader
  static const String apiUploaderController = "mobility/uploader/upload";
}


class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
