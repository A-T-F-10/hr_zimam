import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimam_app_hr/core/helpers/extensions.dart';
import '../../../core/networking/api_error_handler.dart';
import '../data/models/specializations_response_model.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (specializationsResponseModel) {
        specializationsList =
            specializationsResponseModel.specializationDataList ?? [];

        // getting the doctors list for the first specialization by default.
        getDoctorsList(specializationId: specializationsList?.first?.id);

        emit(HomeState.specializationsSuccess(
            specializationsResponseModel.specializationDataList));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationsError(errorHandler));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No Users found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit()
      : super(DashboardState(
          name: "محمد فهد بن عمري",
          role: "مشرف",
          dailyChecks: 2,
          totalSupervisors: 15,
          pendingLocations: 3,
          recentChecks: [
            CheckItem(
                name: "فندق جبل عمر حياة ريجنسي",
                type: "جودة توز",
                time: "12:30 اليوم",
                supervisor: "أحمد سعد عبد خالد"),
            CheckItem(
                name: "شقق جنة البالي",
                type: "وكالة تأجير",
                time: "12:30 اليوم",
                supervisor: "أحمد سعد عبد خالد"),
          ],
        ));

  void refreshData() {
    // Implement data fetching or refreshing logic
    emit(state); // For now, just re-emit the state
  }
}

class DashboardState {
  final String name;
  final String role;
  final int dailyChecks;
  final int totalSupervisors;
  final int pendingLocations;
  final List<CheckItem> recentChecks;

  DashboardState({
    required this.name,
    required this.role,
    required this.dailyChecks,
    required this.totalSupervisors,
    required this.pendingLocations,
    required this.recentChecks,
  });
}

class CheckItem {
  final String name;
  final String type;
  final String time;
  final String supervisor;

  CheckItem({
    required this.name,
    required this.type,
    required this.time,
    required this.supervisor,
  });
}
