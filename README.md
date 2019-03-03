# 基于WebDav的iOS客户端

## Why ？

只想要一个全平台云同步的笔记App，锤子便签非常好用，同步功能却经常出现错误（文件容易重复），好用的Bear熊掌记觉得不值得买，且只支持iCloud，无法同步到安卓设备。因为坚果云有文件历史版本功能，所以想基于坚果云的WebDAV做个简易笔记

## What ？

主要用来写markdown笔记，并实现云同步，国内可使用坚果云，国外可使用Dropbox、GoogleDrive，所有文件保存在第三方服务器

##  How ？

### Build and Run

Notify: the project has the submodule [leowebdav](https://github.com/leyleo/leowebdav), so the codes from zip maybe not enough, you'd better check out the whole project as following.

```shell
git clone https://github.com/Panway/WebDAV_iOS.git

cd TeamDisk_iOS

git submodule init

git submodule update

cd TeamDisk

pod install

open TeamDisk.xcworkspace
```

## 以下是旧版ReadMe



# TeamDisk_iOS


TeamDisk iOS Client, is a WebDAV-based APP. Visit the [itunes link](https://itunes.apple.com/us/app/teamdisk/id640436179?ls=1&mt=8).

##FEATURES:

###[WebDAV Explorer]

1. Manage WebDAV server account infomation.

2. Navigate files.

3. Manage remote files, such as Rename, Move, Delete.

4. Create new remote folder, edit it.

5. Upload images from camera or photo album.

###[File Preview]

1. Support open it in 3rd Apps.

2. Document preview, such as word, excel, powerpoint, pdf, text.

3. Image preview, support thumbnail preview and slide show, support save to album.

4. Music playback, or add to music player included in the App; The Music player supports play in background.

5. Video playback, using iOS default video player.



# ScreenShots

![choose picture](./ScreenShot/choose%20pic.png)
![doc detail](./ScreenShot/doc%20detail.png)
![list](./ScreenShot/list.png)
![music](./ScreenShot/music.png)
![pic list](./ScreenShot/pic%20list.png)
![upload](./ScreenShot/upload.png)

# Thanks

[ELCImagePicker](https://github.com/elc/ELCImagePickerController)

[KTPhotoBrowser](https://github.com/kirbyt/KTPhotoBrowser)

[EGOTableViewPullRefresh](https://github.com/enormego/EGOTableViewPullRefresh)

[MBProgressHUD](https://github.com/jdg/MBProgressHUD)

[SFHFKeychainUtils](https://github.com/kamiro/SFHFKeychainUtils)

[AudioButton](https://github.com/marshluca/AudioPlayer)

[LEOWebDAV](https://github.com/leyleo/leowebdav)

# MIT License

TeamDisk_iOS is licensed under the terms of the MIT License. Please see the [LICENSE](https://github.com/leyleo/TeamDisk_iOS/blob/master/LICENSE.md) file for full details.
