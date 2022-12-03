import 'package:edo_jobs_portal/State/user_management.dart';
import 'package:edo_jobs_portal/api/api.dart';
import 'package:edo_jobs_portal/api/user_management.dart';
import 'package:edo_jobs_portal/global.dart';
import 'package:edo_jobs_portal/helpers/log.dart';
import 'package:edo_jobs_portal/helpers/regex.dart';
import 'package:edo_jobs_portal/helpers/utils.dart';
import 'package:edo_jobs_portal/models/index.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constant/state.dart';

final userManagementProvider =
    StateNotifierProvider<UserManagementProvider, UserManagementState>(
        (ref) => UserManagementProvider(ref.read));

final userSearchResultProvider = StateProvider((ref) {
  return ref
      .watch(userManagementProvider.select((value) => value.searchResult));
});

final userSearchFormKeyProvider = StateProvider((ref) {
  return ref.watch(userManagementProvider.select((value) => value.searchForm));
});

final userAddUserFormKeyProvider = StateProvider((ref) {
  return ref.watch(userManagementProvider.select((value) => value.addUserForm));
});

class UserManagementProvider extends StateNotifier<UserManagementState>
    with UserManagementApi
    implements UserManagementClass {
  final Reader read;

  UserManagementProvider(this.read)
      : super(UserManagementState(
            newUser: UserManagementState.clearUser(),
            isLoading: false,
            searchQuery: "",
            searchResult: const [],
            lgaSelection: const [],
            addUserForm: GlobalKey<FormState>(),
            searchForm: GlobalKey<FormState>()));

  @override
  get stateOfOrigin => state.newUser.stateOfOrigin;

  @override
  get lgaSelection => state.lgaSelection;

  @override
  get isLoading => state.isLoading;

  @override
  Future<void> addUser(BuildContext context) async {
    if (state.addUserForm.currentState!.validate() == false) {
      throw Log("form is not valid").log();
    }

    state.addUserForm.currentState!.save();

    setPassword(''.generateID);

    setIsLoading(true);

    final result = await handleAddUser(read(apiProvider), state.newUser.toMap())
        .whenComplete(() => setIsLoading(false));

    if (result.status == true) {
      showSankBar("Account Created Successfully", context);
      state = state.copyWith(newUser: UserManagementState.clearUser());
      state.addUserForm.currentState!.reset();
    } else {
      showSankBar(result.message, context);
    }
  }

  @override
  void setIsLoading(bool e) {
    state = state.copyWith(isLoading: e);
  }

  @override
  void setSearchQuery(String? e) {
    state = state.copyWith(searchQuery: e);
  }

  @override
  Future<void> findUser(BuildContext context) async {
    if (state.searchForm.currentState == null) {
      throw Log("Form Key Not Set").log();
    }

    if (!state.searchForm.currentState!.validate()) {
      throw Log("Form is invalid").log();
    }

    state.searchForm.currentState!.save();

    final key = getSearchKey(state.searchQuery);

    final result =
        await handleFindUser(read(apiProvider), key, state.searchQuery.trim());

    state = state.copyWith(searchResult: result.data);
    showSankBar("${result.data?.length ?? 0} records found", context);
  }

  @override
  String getSearchKey(String val) {
    if (isEmail(val) == null) {
      return "email";
    }
    if (isTel(val) == null) {
      return "tel";
    }
    return "username";
  }

  @override
  void setBusinessSector(String? e) {
    final user = state.newUser.copyWith(businessSector: e);
    state = state.copyWith(newUser: user);
  }

  @override
  void setPassword(String? e) {
    final user = state.newUser.copyWith(pwd: e);
    state = state.copyWith(newUser: user);
  }

  @override
  void setEmail(String? e) {
    final user = state.newUser.copyWith(email: e);
    state = state.copyWith(newUser: user);
  }

  @override
  void setFirstName(String? e) {
    final user = state.newUser.copyWith(firstName: e);
    state = state.copyWith(newUser: user);
  }

  @override
  void setGender(String? e) {
    final user = state.newUser.copyWith(gender: e);
    state = state.copyWith(newUser: user);
  }

  @override
  void setLastName(String? e) {
    final user = state.newUser.copyWith(lastName: e);
    state = state.copyWith(newUser: user);
  }

  @override
  void setLocalGovernment(String? e) {
    final user = state.newUser.copyWith(localGovernmentOfResident: e);
    state = state.copyWith(newUser: user);
  }

  @override
  void setStateOfOrigin(String? e) {
    final user =
        state.newUser.copyWith(stateOfOrigin: e, localGovernmentOfResident: "");
    state = state.copyWith(
        newUser: user, lgaSelection: StateData.lgaAreas(e ?? ''));
  }

  // @override
  // void setLgaSelection(String? e) {

  // }

  @override
  void setTel(String? e) {
    final user = state.newUser.copyWith(tel: e);
    state = state.copyWith(newUser: user);
  }

  @override
  void setUsername(String? e) {
    final user = state.newUser.copyWith(username: e);
    state = state.copyWith(newUser: user);
  }

  @override
  Future<void> verifyUser(BuildContext context) {
    // TODO: implement verifyUser
    throw UnimplementedError();
  }
}
