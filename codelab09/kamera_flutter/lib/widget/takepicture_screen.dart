import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:kamera_flutter/widget/displaypicture_new.dart';

class TakepictureScreen extends StatefulWidget {
  const TakepictureScreen({
    super.key,
    required this.camera
  });

  final CameraDescription camera;

  @override
  State<TakepictureScreen> createState() => _TakepictureScreenState();
}

class _TakepictureScreenState extends State<TakepictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Take a picture - 2341720170')),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await _initializeControllerFuture;
            final image = await _controller.takePicture();

            await _controller.pausePreview();

            if (!context.mounted) return;
            final shouldResume = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DisplaypictureNew(
                  imagePath: image.path,
                ),
              )
            );

            if (shouldResume == true) {
              _controller.resumePreview();
            }
          } catch (e) {
            debugPrint(e.toString());
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}