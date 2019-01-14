# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this file,
# You can obtain one at http://mozilla.org/MPL/2.0/.


from iris2.src.core.api.finder.pattern import Pattern


class LocationBar(object):
    IDENTITY_ICON = Pattern('identity_icon.png')

    HISTORY_DROPMARKER = Pattern('historydropmarker.png')
    PAGE_ACTION_BUTTON = Pattern('pageActionButton.png')
    POCKET_BUTTON = Pattern('pocket_button.png')
    STAR_BUTTON_UNSTARRED = Pattern('star_button_unstarred.png')
    STAR_BUTTON_STARRED = Pattern('star_button_starred.png')

    URLBAR_ZOOM_BUTTON_30 = Pattern('urlbar_zoom_button_30.png')
    URLBAR_ZOOM_BUTTON_90 = Pattern('urlbar_zoom_button_90.png').similar(0.7)
    URLBAR_ZOOM_BUTTON_110 = Pattern('urlbar_zoom_button_110.png')
    URLBAR_ZOOM_BUTTON_300 = Pattern('urlbar_zoom_button_300.png')

    SEARCH_BAR = Pattern('search_bar.png')
    URL_BAR_DEFAULT_ZOOM_LEVEL = Pattern('url_bar_default_zoom_level.png')
