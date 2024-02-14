import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thestuckhunter/features/search_symbols/search/presentation/providers/search_symbol_text_provider.dart';

class SymbolSearchBar extends ConsumerStatefulWidget {
  const SymbolSearchBar({super.key});

  @override
  ConsumerState<SymbolSearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<SymbolSearchBar> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 32, right: 32, top: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Colors.grey),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Center(
                          child: TextFormField(
                            onFieldSubmitted: (value) {
                              if (_controller.text.trim().isNotEmpty) {
                                ref.read(symbolSearchTextProvider.notifier).state = _controller.text;
                              }
                            },
                            controller: _controller,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              hintText: 'Search symbols',
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                            ),
                            onEditingComplete: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () =>
              _controller.text.isNotEmpty ? ref.read(symbolSearchTextProvider.notifier).state = _controller.text : null,
          child: const Text("Search!"),
        )
      ],
    );
  }
}
