import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    // 1
    // BlocProvider.of<HomeCubit>(context).getAllUsers();

    // 2
    // BlocProvider.of<HomeCubit>(context).getUserById(6850077);

    // 3
    // BlocProvider.of<HomeCubit>(context).createUser(
    //   User(
    //     name: 'Omar Ameer',
    //     email: 'omar.ameer24646ss544@gmail.com',
    //     gender: 'male',
    //     status: 'active',
    //   ),
    // );

    // 4
    // BlocProvider.of<HomeCubit>(context).deleteUserById(6850071);
  }

  @override
  Widget build(BuildContext context) {
    // 1
    // List<User> usersList = [];

    // 2
    // User user = User();

    // 3
    // User newUser = User();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 1
          // BlocBuilder<HomeCubit, HomeState>(
          //   builder: (context, state) {
          //     if (state is HomeLoading) {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     } else if (state is GetAllUsers) {
          //       usersList.addAll(state.users);
          //       return ListView.builder(
          //         itemCount: usersList.length,
          //         shrinkWrap: true,
          //         padding: const EdgeInsets.all(8),
          //         itemBuilder: (context, index) {
          //           return ListTile(
          //             title: Text(usersList[index].name.toString()),
          //             subtitle: Text(usersList[index].email.toString()),
          //           );
          //         },
          //       );
          //     } else if (state is HomeFailure) {
          //       return Center(
          //         child: Text(state.error),
          //       );
          //     } else if (state is HomeInitial) {
          //       return const Center(
          //         child: Text('Initial'),
          //       );
          //     } else {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }
          //   },
          // ),

          // 2
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       hintText: 'Enter User Id',
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       contentPadding: const EdgeInsets.symmetric(
          //         vertical: 12,
          //         horizontal: 16,
          //       ),
          //     ),
          //     style: const TextStyle(
          //       fontSize: 16,
          //       color: Colors.black,
          //     ),
          //     onSubmitted: (value) {
          //       BlocProvider.of<HomeCubit>(context).getUserById(
          //         int.parse(value),
          //       );
          //     },
          //   ),
          // ),
          // BlocBuilder<HomeCubit, HomeState>(
          //   builder: (context, state) {
          //     if (state is HomeLoading) {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     } else if (state is GetUserById) {
          //       user = state.user;
          //       return ListTile(
          //         title: Text(user.name.toString()),
          //         subtitle: Text(user.email.toString()),
          //       );
          //     } else if (state is HomeFailure) {
          //       return Center(
          //         child: Text(state.error),
          //       );
          //     } else if (state is HomeInitial) {
          //       return const Center(
          //         child: Text('Initial'),
          //       );
          //     } else {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }
          //   },
          // ),

          // 3
          // BlocBuilder<HomeCubit, HomeState>(
          //   builder: (context, state) {
          //     if (state is HomeLoading) {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     } else if (state is CreateUser) {
          //       newUser = (state).newUser;
          //       return ListTile(
          //         title: Text(newUser.name.toString()),
          //         subtitle: Text(newUser.email.toString()),
          //       );
          //     } else if (state is HomeFailure) {
          //       return Center(
          //         child: Text(state.error),
          //       );
          //     } else {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }
          //   },
          // ),

          // 4
          // BlocBuilder<HomeCubit, HomeState>(
          //   builder: (context, state) {
          //     if (state is HomeLoading) {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     } else if (state is DeleteUserById) {
          //       return Center(child: Text(state.data.toString()));
          //     } else if (state is HomeFailure) {
          //       return Center(
          //         child: Text(state.error),
          //       );
          //     } else {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }
          //   },
          // ),
        ],
      ),
    );
  }
}
