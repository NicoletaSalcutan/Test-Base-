abstract class ApiInterface{
  //Profile
  createProfile(Map<String, dynamic> profile);
  updateProfile(String key,Map profile);
  deleteProfile(String key);
  getProfileById(String key);
  Future<List<Map>> getAllProfiles();
  //Tasks
  createTask(Map task);
  updateTask(String key,Map task);
  deleteTask(String key);
  getTaskById(String key);
  getAllTasks();

}