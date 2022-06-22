import 'dart:io' show Platform;
import 'package:es_flutter_component/constants.dart';
import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:file_picker/file_picker.dart';
// import 'package:filepicker_windows/filepicker_windows.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'dart:io' show Platform;
// import 'package:flutter/foundation.dart' show kIsWeb;
// void main() {
//   final file = OpenFilePicker()
//     ..filterSpecification = {
//       'Word Document (*.doc)': '*.doc',
//       'Web Page (*.htm; *.html)': '*.htm;*.html',
//       'Text Document (*.txt)': '*.txt',
//       'All Files': '*.*'
//     }
//     ..defaultFilterIndex = 0
//     ..defaultExtension = 'doc'
//     ..title = 'Select a document';
//
//   final result = file.getFile();
//   if (result != null) {
//     print(result.path);
//   }
// }

class EsFilePicker extends StatefulWidget {
  String openText;
  String pickText;
  String clearText;
  EsFilePicker({required this.openText,required this.pickText,required this.clearText});
  @override
  _EsFilePicker createState() => _EsFilePicker();
}

class _EsFilePicker extends State<EsFilePicker> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String? _fileName;
  List<PlatformFile>? _paths;
  String? _directoryPath;
  String? _extension;
  bool _loadingPath = false;
  bool _multiPick = false;
  FileType _pickingType = FileType.any;
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => _extension = _controller.text);
  }

  void _openFileExplorer() async {
    setState(() => _loadingPath = true);
    try {
      _directoryPath = null;
      _paths = (await FilePicker.platform.pickFiles(
        type: _pickingType,
        allowMultiple: _multiPick,
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '').split(',')
            : null,
      ))
          ?.files;
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    } catch (ex) {
      print(ex);
    }
    if (!mounted) return;
    setState(() {
      _loadingPath = false;
      print(_paths!.first.extension);
      _fileName =
      _paths != null ? _paths!.map((e) => e.name).toString() : '...';
    });
  }

  void _clearCachedFiles() {
    FilePicker.platform.clearTemporaryFiles().then((result) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: result! ? Colors.green : Colors.red,
          content: Text((result
              ? 'Temporary files removed with success.'
              : 'Failed to clean temporary files')),
        ),
      );
    });
  }

  void _selectFolder() {
    FilePicker.platform.getDirectoryPath().then((value) {
      setState(() => _directoryPath = value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              // Platform.isAndroid || Platform.isIOS || Platform.isFuchsia
              <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: DropdownButton<FileType>(
                      hint: const Text('LOAD PATH FROM'),
                      value: _pickingType,
                      items: <DropdownMenuItem<FileType>>[
                        DropdownMenuItem(
                          child: const Text('FROM AUDIO'),
                          value: FileType.audio,
                        ),
                        DropdownMenuItem(
                          child: const Text('FROM IMAGE'),
                          value: FileType.image,
                        ),
                        DropdownMenuItem(
                          child: const Text('FROM VIDEO'),
                          value: FileType.video,
                        ),
                        DropdownMenuItem(
                          child: const Text('FROM MEDIA'),
                          value: FileType.media,
                        ),
                        DropdownMenuItem(
                          child: const Text('FROM ANY'),
                          value: FileType.any,
                        ),
                        DropdownMenuItem(
                          child: const Text('CUSTOM FORMAT'),
                          value: FileType.custom,
                        ),
                      ],
                      onChanged: (value) => setState(() {
                        _pickingType = value!;
                        if (_pickingType != FileType.custom) {
                          _controller.text = _extension = '';
                        }
                      })),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(width: 100.0),
                  child: _pickingType == FileType.custom
                      ? TextFormField(
                    maxLength: 15,
                    autovalidateMode: AutovalidateMode.always,
                    controller: _controller,
                    decoration:
                    InputDecoration(labelText: 'File extension'),
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.none,
                  )
                      : const SizedBox(),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(width: 200.0),
                  child: SwitchListTile.adaptive(
                    title:
                    Text('Pick multiple files', textAlign: TextAlign.right),
                    onChanged: (bool value) =>
                        setState(() => _multiPick = value),
                    value: _multiPick,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, bottom: 20.0),
                  child: Column(
                    children: <Widget>[
                      EsOrdinaryButton(
                        text:widget.openText,
                        onPressed: () => _openFileExplorer(),

                      ),
                      SizedBox(height: Constants.paddingDimension,),
                      EsOrdinaryButton(
                        text:widget.pickText ,
                        onPressed: () => _selectFolder(),

                      ),
                      SizedBox(height: Constants.paddingDimension,),
                      EsOrdinaryButton(
                        text: widget.clearText,
                        onPressed: () => _clearCachedFiles(),

                      ),
                    ],
                  ),
                ),
                Builder(
                  builder: (BuildContext context) => _loadingPath
                      ? Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: const CircularProgressIndicator(),
                  )
                      : _directoryPath != null
                      ? ListTile(
                    title: const Text('Directory path'),
                    subtitle: Text(_directoryPath!),
                  )
                      : _paths != null
                      ? Container(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    height:
                    MediaQuery.of(context).size.height * 0.50,
                    child: Scrollbar(
                        child: ListView.separated(
                          itemCount:
                          _paths != null && _paths!.isNotEmpty
                              ? _paths!.length
                              : 1,
                          itemBuilder:
                              (BuildContext context, int index) {
                            final bool isMultiPath =
                                _paths != null && _paths!.isNotEmpty;
                            final String name = 'File $index: ' +
                                (isMultiPath
                                    ? _paths!
                                    .map((e) => e.name)
                                    .toList()[index]
                                    : _fileName ?? '...');
                            final path = _paths!
                                .map((e) => e.path)
                                .toList()[index]
                                .toString();

                            return ListTile(
                              title: Text(
                                name,
                              ),
                              subtitle: Text(path),
                            );
                          },
                          separatorBuilder:
                              (BuildContext context, int index) =>
                          const Divider(),
                        )),
                  )
                      : const SizedBox(),
                ),
              ]

            ),
          ),
        ));
  }
}
