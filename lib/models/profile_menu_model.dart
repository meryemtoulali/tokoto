class ProfileMenuModel{
  final String name;
  final String iconPath;

  ProfileMenuModel({
    required this.name,
    required this.iconPath,

  });
  
}

List<ProfileMenuModel> profileMenuList = [
  ProfileMenuModel(name: "My Account", iconPath: "assets/icons/user.svg"),
  ProfileMenuModel(name: "Notifications", iconPath: "assets/icons/bell.svg"),
  ProfileMenuModel(name: "Settings", iconPath: "assets/icons/settings.svg"),
  ProfileMenuModel(name: "Help Center", iconPath: "assets/icons/Question mark.svg"),
  ProfileMenuModel(name: "Log Out", iconPath: "assets/icons/Log out.svg"),
];