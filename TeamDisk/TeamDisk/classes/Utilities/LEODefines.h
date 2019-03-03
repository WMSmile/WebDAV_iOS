//
//  LEODefines.h
//  ConnectDisk
//
//  Created by Liu Ley on 12-10-24.
//  Copyright (c) 2012年 SAE. All rights reserved.
//

#ifndef ConnectDisk_LEODefines_h
#define ConnectDisk_LEODefines_h

#pragma mark - APP UI
const static float  kLEOTabBarHeight    =   44.0f;
const static float  kLEONavBarHeight    =   44.0f;
const static float  kLEONavBarBtnHeight =   30.0f;
const static int    kLEONavBarBtnTopY   =   5;
const static int    kLEONavBarFontSz    =   15;
const static float  kLEOStatusBarHeight =   20.0f;
const static float  kLEOUploadToolBarHeight =   44.0f;
const static int    kDefaultTabBarIndex =   0;
const static int    kDefaultListLeftX   =   10;
const static float  kDefalutNavItemWidth    =   60.0f;
const static int    kNavSwitcherWidth    =   35;
const static int    kLEONavBarBackLeft  =   7;
const static int    kEditToolBarBtnHeight   =   30;
const static int    kEditToolBarBtnWidth    =   90;
const static int    kEditToolBarBtnMargin   =   5;
const static int    kEditToolBarBtnLabelMargin  =   4;
const static int    kEditToolBarBtnFontSz   =   14;
const static int    kLEOTabBarMusicIndex    =   2;
const static int    kLEOCellAccessorySize   =   24;
const static int    kLEOResultViewLabelTopY =   50;
const static int    kLEOResultViewLabelHeight   =   24;
const static int    kLEOResultViewLabelFontSz   =   15;
const static float  kBackgroundColorR   =   237/255.0;
const static float  kBackgroundColorG   =   239/255.0;
const static float  kBackgroundColorB   =   240/255.0;
const static float  kBackgroundColorA   =   1.0;
const static float  kDetailBackgroundColorR =   63/255.0;
const static float  kDetailBackgroundColorG =   63/255.0;
const static float  kDetailBackgroundColorB =   63/255.0;
const static float  kDetailBackgroundColorA =   1.0;
const static float  kHighlightColorR   =   206/255.0;
const static float  kHighlightColorG   =   232/255.0;
const static float  kHighlightColorB   =   255/255.0;
const static float  kHighlightColorA   =   1.0;

#pragma mark - ServerListCell
const static int    kServerListCellHeight   =   64;
const static int    kServerListCellDesLbHeight  =   40;
const static int    kServerListCellDesLbFontSz  =   17;
const static float  kServerListCellDetLbWidthP  =   0.3;
const static int    kServerListCellDetLbFontSz  =   14;

#pragma mark - NewServer
const static int    kNewServerCellHeight    =   30;
const static int    kNewServerLabelWidth    =   90;
const static int    kNewServerMargin    =   7;
const static int    kNewServerFontSz    =   15;
const static int    kTagServerURL   =   0x1101;
const static int    kTagUserName    =   0x1102;
const static int    kTagPassword    =   0x1103;
const static int    kTagDescription =   0x1104;

#pragma mark - ContentListCell
const static int    kContentListCellHeight  =   60;
const static int    kContentListCellExtend  =   60;
const static int    kContentListCellIconSz  =   48;
const static int    kContentListCellDesLbHeight  =   35;
const static int    kContentListCellDesLbFontSz  =   17;
const static int    kContentListCellDetLbFontSz  =   14;
const static int    kContentListCellMargin  =   5;
const static int    kImageThumbnailSz   =   75;
const static int    kImageThumbnailMargin   =   4;

#pragma mark - UploadView
const static int    kUploadViewHeight   =   60; //80;
const static int    kUploadViewButtonHeight =   60;
const static int    kUploadCellHeight   =   60;
const static int    kUploadCellStatusSize   =   30;
const static int    kUploadCellDesLbFontSz  =   15;
const static int    kUploadCellDetLbFontSz  =   12;
const static int    kUploadDetailFontSz =   15;
const static int    kUploadToolBarBtnHeight =   30;
const static float  kUploadToolBarBtnMargin =   10;
const static int    kUploadToolBarChooseBtnW    =   195;
const static int    kUploadToolBarUploadBtnW    =   90;
const static int    kUploadNewFolderTFHeight    =   50;
const static int    kUploadNewFolderTFWidth =   280;
const static int    kUploadNewFolderFontSz  =   15;

#pragma mark - MusicView
const static int    kMusicViewPlaybackHeight    =   95;
const static int    kMusicSliderTop =   10;
const static int    kMusicSliderWidth   =   240;
const static int    kMusicSliderHeight  =   30;
const static int    kMusicBtnWidth  =   50;
const static int    kMusicBtnHeight =   30;
const static int    kMusicBtnTop    =   50;

#pragma mark - APP Data
static NSString *const kServerListPlistFileName =   @"/serverList.plist";
static NSString *const kContentTypesPlistFileName   =   @"contentTypes.plist";
static NSString *const kExtendUTIPlistFileName  =   @"extendUTI.plist";
static NSString *const kExtentToMIMEPlistFileName   =   @"extentToMIME.plist";
static NSString *const kResourceRootPath    =   @"";

static NSString *const kDefaultFolderImage  =   @"folder.png";
static NSString *const kNavigationBg    =   @"navigationBg.png";
static NSString *const kNavigationBackBg    =   @"btnBg_nav_back.png";
static NSString *const kNavigationBackBgHighlight   =   @"btnBg_nav_back_highlight.png";
static NSString *const kNavigationEditBg    =   @"btnBg_nav_edit.png";
static NSString *const kNavigationEditBgHighlight   =   @"btnBg_nav_edit_highlight.png";
static NSString *const kDetailNavigationBg  =   @"DetailNavigationBg.png";
static NSString *const kDetailNavigationBackBg  =   @"btnBg_detailNav_back.png";
static NSString *const kDetailNavigationBackBgHighlight =   @"btnBg_detailNav_back_highlight.png";
static NSString *const kDetailDownloadFailIcon  =   @"detail_downloadfail.png";
static NSString *const kDetailOpeninIcon    =   @"detail_openin.png";
static NSString *const kDetailUnfoundIcon   =   @"detail_unfound.png";
static NSString *const kMusicViewBg =   @"musicBg.png";
static NSString *const kMusicMinImage   =   @"slider_min.png";
static NSString *const kMusicMaxImage   =   @"slider_max.png";
static NSString *const kMusicThumbImage =   @"music_progressBtn.png";
static NSString *const kMusicThumbSelImage =   @"music_progressBtn.png";
static NSString *const kMusicBtnBg  =   @"btnBg_music.png";
static NSString *const kMusicBtnBgHighlight =   @"btnBg_music_highlight.png";
static NSString *const kMusicPreImage   =   @"previous.png";
static NSString *const kMusicPlayImage  =   @"play.png";
static NSString *const kMusicPauseImage =   @"music_pause.png";
static NSString *const kMusicIconImage  =   @"file_music.png";
static NSString *const kMusicIconImageGray  =   @"file_music_gray.png";
static NSString *const kMusicNextImage  =   @"next.png";
static NSString *const kExtendBgImage   =   @"extend_background.png";
static NSString *const kExtendHighlightImage    =   @"extend_highlight.png";
static NSString *const kImageDefalut    =   @"image_default.png";
static NSString *const kTabbarBg    =   @"tabbarBg.png";
static NSString *const kDetailTabbarBg  =   @"detailTabbarBg.png";
static NSString *const kTabbarBtnBg =   @"btnBg_tab.png";
static NSString *const kTabbarBtnBgSelected =   @"btnBg_tab_selected.png";
static NSString *const kTabbarHome  =   @"tabbtn_home.png";
static NSString *const kTabbarHomeSel   =   @"tabbtn_home_selected.png";
static NSString *const kTabbarList  =   @"tabbtn_list.png";
static NSString *const kTabbarListSel   =   @"tabbtn_list_selected.png";
static NSString *const kTabbarUpload    =   @"tabbtn_upload.png";
static NSString *const kTabbarUploadSel =   @"tabbtn_upload_selected.png";
static NSString *const kTabbarMusic =   @"tabbtn_music.png";
static NSString *const kTabbarMusicSel  =   @"tabbtn_music_selected.png";
static NSString *const kTabbarSettings  =   @"tabbtn_settings.png";
static NSString *const kTabbarSettingsSel   =   @"tabbtn_settings_selected.png";
static NSString *const kTabbarEditBtnBlueBg =   @"btnBlueBg_tab_edit.png";
static NSString *const kTabbarEditBtnBlueBgSelected =   @"btnBlueBg_tab_edit_highlight.png";
static NSString *const kTabbarEditBtnBg =   @"btnBg_tab_edit.png";
static NSString *const kTabbarEditBtnBgSelected =   @"btnBg_tab_edit_highlight.png";
static NSString *const kCellAccessory   =   @"accessory.png";
static NSString *const kUploadViewDetail    =   @"upload_detail.png";

static NSString *const CellNormal = @"normal";
static NSString *const CellMusic = @"music";
static NSString *const CellPicture = @"picture";
static NSString *const CellCollection = @"collection";
static NSString *const CellThumbnail = @"thumbnail";

typedef enum {
    LEOContentItemTypeFile = 1,
    LEOContentItemTypePicture = 2,
    LEOContentItemTypeMusic = 3,
    LEOContentItemTypeCollection = 4,
} LEOContentItemType;

typedef enum {
    LEOContentSheetTagList = 0x3301,
    LEOContentSheetTagSingle = 0x3302,
} LEOContentSheetTag;
#endif
