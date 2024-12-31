import 'package:flutter/material.dart';
import 'package:search_github_repositories/logic/models/repository.dart';
import 'package:search_github_repositories/ui/app_colors.dart';
import 'package:search_github_repositories/ui/widgets/app_text.dart';
import 'package:search_github_repositories/ui/widgets/archive_label.dart';
import 'package:search_github_repositories/ui/widgets/avatar.dart';
import 'package:search_github_repositories/util/extensions/iterable_extension.dart';
import 'package:url_launcher/url_launcher.dart';

class RepositoryListTile extends StatelessWidget {
  const RepositoryListTile({
    super.key,
    required Repository repository,
  }) : _repository = repository;

  final Repository _repository;

  @override
  Widget build(BuildContext context) {
    final owner = _repository.owner;
    final description = _repository.description;
    final language = _repository.language;

    return InkWell(
      onTap: () async {
        await launchUrl(_repository.htmlUrl);
      },
      borderRadius: BorderRadius.circular(6),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.listTileBorder),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4,
          children: [
            Row(
              spacing: 10,
              children: [
                if (owner != null) Avatar(owner: owner),
                Expanded(
                  child: AppText(
                    _repository.fullName,
                    color: AppColors.listTileAccentText,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    maxLines: 2,
                  ),
                ),
                if (_repository.archived) ArchiveLabel(),
              ],
            ),
            if (description != null)
              AppText(
                description,
                color: AppColors.listTileDefaultText,
                maxLines: 3,
              ),
            DefaultTextStyle(
              style: TextStyle(
                color: AppColors.listTileMutedText,
                fontSize: 12,
              ),
              child: Wrap(
                runSpacing: 4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  if (language != null) AppText(language),
                  AppText(_repository.stargazersCount.toString()),
                  AppText(_repository.updatedAt),
                ].intersperse(element: AppText('・')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
