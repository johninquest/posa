import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppData extends StatefulWidget {
  const AppData({super.key});

  @override
  State<AppData> createState() => _AppDataState();
}

class _AppDataState extends State<AppData> {
  final Future<PackageInfo> _packageInfo = PackageInfo.fromPlatform();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder<PackageInfo>(
            future: _packageInfo,
            builder:
                (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
              if (snapshot.hasError) {
                return const Text('ERROR');
              } else if (!snapshot.hasData) {
                return const Text('Loading...');
              }

              final data = snapshot.data!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('App Name: ${data.appName}'),
                  Text('Package Name: ${data.packageName}'),
                  Text('Version: ${data.version}'),
                  Text('Build Number: ${data.buildNumber}'),
                ],
              );
            }));
  }
}
