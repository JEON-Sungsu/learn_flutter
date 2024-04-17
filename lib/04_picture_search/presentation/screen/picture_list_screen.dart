import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter/04_picture_search/presentation/component/picture_list_skeleton.dart';
import 'package:learn_flutter/04_picture_search/presentation/view_model/picture_view_model.dart';
import 'package:provider/provider.dart';

class PictureListScreen extends StatefulWidget {
  const PictureListScreen({super.key});

  @override
  State<PictureListScreen> createState() => _PictureListScreenState();
}

class _PictureListScreenState extends State<PictureListScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PictureViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 검색 리스트'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: _controller,
                onSubmitted: (query) {
                  viewModel.startSearch(query);
                },
                decoration: InputDecoration(
                  hintText: '검색어',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      final query = _controller.text;
                      viewModel.startSearch(query);
                    },
                    icon: const Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Expanded(
              child: viewModel.isLoading
                  ? const PictureListSkeleton()
                  : viewModel.isEmpty
                  ? const Center(
                child: Text(
                  '검색결과가 없습니다.',
                  style: TextStyle(fontSize: 18),
                ),
              )
                  : GridView.count(
                padding: const EdgeInsets.all(24),
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: viewModel.pictures
                    .map((e) =>
                    ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: GestureDetector(
                          onTap: () {
                            final pictureInfo = viewModel.getPictureInfo(e.id);
                            context.push('/pictureSearch/pictureDetail', extra: pictureInfo);
                          },
                          child: Hero(
                            tag: e.tags,
                            child: Image.network(
                              e.url,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
