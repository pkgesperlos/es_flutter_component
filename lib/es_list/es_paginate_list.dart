// import 'package:es_flutter_component/es_list/remote_api.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
//
// import 'character_summery.dart';
//
// class CharacterListView extends StatefulWidget {
//   @override
//   _CharacterListViewState createState() => _CharacterListViewState();
// }
//
// class _CharacterListViewState extends State<CharacterListView> {
//   static const _pageSize = 20;
//
//   final PagingController<int, CharacterSummary> _pagingController =
//   PagingController(firstPageKey: 0);
//
//   @override
//   void initState() {
//     _pagingController.addPageRequestListener((pageKey) {
//       _fetchPage(pageKey);
//     });
//     super.initState();
//   }
//
//   Future<void> _fetchPage(int pageKey) async {
//     try {
//       final newItems = await RemoteApi.getCharacterList(pageKey, _pageSize);
//       final isLastPage = newItems.length < _pageSize;
//       if (isLastPage) {
//         _pagingController.appendLastPage(newItems);
//       } else {
//         final nextPageKey = pageKey + newItems.length;
//         _pagingController.appendPage(newItems, nextPageKey);
//       }
//     } catch (error) {
//       _pagingController.error = error;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) =>
//       PagedListView<int, CharacterSummary>(
//         pagingController: _pagingController,
//         builderDelegate: PagedChildBuilderDelegate<CharacterSummary>(
//           itemBuilder: (context, item, index) => CharacterListItem(
//             character: item,
//           ),
//         ),
//       );
//
//   @override
//   void dispose() {
//     _pagingController.dispose();
//     super.dispose();
//   }
// }