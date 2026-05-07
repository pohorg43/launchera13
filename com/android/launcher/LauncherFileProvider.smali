.class public Lcom/android/launcher/LauncherFileProvider;
.super Landroid/content/ContentProvider;
.source ""


# static fields
.field public static final AUTHORITIES_LAUNCHER_FILEPROVIDER:Ljava/lang/String; = "com.android.launcher.file_provider"

.field private static final KEY_CURRENT_FLIP_FONT:Ljava/lang/String; = "key_current_flip_font"

.field private static final KEY_IS_THEME_TEXTCOLOR_DEFAULT:Ljava/lang/String; = "key_is_theme_textcolor_default"

.field private static final KEY_IS_WALLPAPERBRIGHT_TEXTCOLOR:Ljava/lang/String; = "key_is_wallpaperbright_textcolor"

.field private static final KEY_LAUNCHERBITMAP_ENABLED:Ljava/lang/String; = "key_enabled"

.field private static final KEY_LAUNCHER_BITMAP_BLACK_COLOR_IMAGE_URI:Ljava/lang/String; = "key_launcher_bitmap_black_color_image_uri"

.field private static final KEY_LAUNCHER_BITMAP_NORMAL_IMAGE_URI:Ljava/lang/String; = "key_launcher_bitmap_normal_image_uri"

.field private static final KEY_LAUNCHER_BITMAP_NORMAL_IMAGE_URI_FOR_THEMESTORE:Ljava/lang/String; = "key_launcher_bitmap_normal_image_uri_for_themestore"

.field private static final KEY_LAUNCHER_BITMAP_WHITE_COLOR_IMAGE_URI:Ljava/lang/String; = "key_launcher_bitmap_white_color_image_uri"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "key_package_name"

.field private static final KEY_REVOKE_PERMISSION_SUCCESS:Ljava/lang/String; = "key_revoke_permission_success"

.field private static final KEY_REVOKE_PERMISSION_URLS:Ljava/lang/String; = "key_revoke_permission_urls"

.field private static final KEY_SEPARATION:Ljava/lang/String; = ","

.field private static final LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.android.launcher"

.field private static final METHOD_GET_LAUNCHER_BITMAP_INFO:Ljava/lang/String; = "method_getLauncherBitmapInfo"

.field private static final METHOD_GET_LAUNCHER_BITMAP_INFO_FOR_THEMESTORE:Ljava/lang/String; = "method_getLauncherBitmapInfoForThemeStore"

.field private static final METHOD_REVOKE_URI_PERMISSION:Ljava/lang/String; = "method_revoke_uri_permission"

.field private static final METHOD_SET_LAUNCHER_NORMAL_STATE:Ljava/lang/String; = "method_set_launcher_normal_state"

.field private static final TAG:Ljava/lang/String; = "LauncherFileProvider"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 20
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "key_enabled"

    const-string v4, "LauncherFileProvider"

    const/4 v5, 0x0

    if-nez v2, :cond_1d

    const-string v0, "call : context is null."

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call, method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "method_revoke_uri_permission"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_77

    const-string v0, "key_revoke_permission_urls"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_49
    array-length v1, v0

    if-ge v5, v1, :cond_6c

    aget-object v1, v0, v5

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call, REVOKE_URI_PERMISSION imageUri = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    :cond_6c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_revoke_permission_success"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_77
    const-string/jumbo v6, "method_set_launcher_normal_state"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-static {}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getInstance()Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->checkLauncherStateIsNormal(Landroid/content/Context;)Z

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    goto :goto_8e

    :cond_8d
    const/4 v6, 0x0

    :goto_8e
    const-string/jumbo v7, "method_getLauncherBitmapInfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "key_is_wallpaperbright_textcolor"

    const-string v9, "key_is_theme_textcolor_default"

    const-string v10, ", isWallpaperBright = "

    const-string v11, "call isThemeTextColorDefault"

    const-string v12, "com.android.launcher"

    const-string v13, "key_package_name"

    const-string v14, "com.android.launcher.file_provider"

    if-eqz v7, :cond_198

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;

    invoke-direct {v0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/net/Uri;

    invoke-static {}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getInstance()Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    move-result-object v7

    const-string v15, "image/launcher_first_screen_normal_image.jpg"

    invoke-virtual {v7, v2, v14, v15}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->buildUriByFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getInstance()Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    move-result-object v7

    const-string v15, "image/launcher_first_screen_reserve_image.jpg"

    invoke-virtual {v7, v2, v14, v15}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->buildUriByFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v14, 0x1

    aput-object v7, v6, v14

    const/4 v7, -0x1

    const-string v15, "key_current_flip_font"

    invoke-virtual {v1, v15, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v7, 0xa0

    invoke-virtual {v0, v7}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->setHotseatAlpha(I)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;

    move-result-object v7

    aget-object v15, v6, v5

    invoke-virtual {v7, v15}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->setNormalFileNameUri(Landroid/net/Uri;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;

    move-result-object v7

    aget-object v15, v6, v14

    invoke-virtual {v7, v15}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->setBlackFileNameUri(Landroid/net/Uri;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->setCurrentFlipFont(I)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;

    invoke-static {}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getInstance()Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->create(Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    move-result-object v0

    invoke-virtual {v7, v15, v0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->refreshLauncherBitmapForProviderCall(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isThemeTextColorDefault()Z

    move-result v3

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v7

    const-string v12, ", currentFlipFont = "

    invoke-static {v11, v3, v10, v7, v12}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    aget-object v1, v6, v5

    if-eqz v1, :cond_133

    aget-object v1, v6, v5

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_launcher_bitmap_normal_image_uri"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    aget-object v3, v6, v5

    const/4 v8, 0x1

    invoke-virtual {v2, v1, v3, v8}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_133
    const-string v1, "key_launcher_bitmap_white_color_image_uri"

    const-string v3, "key_launcher_bitmap_black_color_image_uri"

    if-nez v7, :cond_169

    aget-object v7, v6, v5

    if-eqz v7, :cond_151

    aget-object v7, v6, v5

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    aget-object v5, v6, v5

    const/4 v7, 0x1

    invoke-virtual {v2, v1, v5, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_152

    :cond_151
    const/4 v7, 0x1

    :goto_152
    aget-object v1, v6, v7

    if-eqz v1, :cond_196

    aget-object v1, v6, v7

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    aget-object v3, v6, v7

    invoke-virtual {v2, v1, v3, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_196

    :cond_169
    const/4 v7, 0x1

    aget-object v8, v6, v5

    if-eqz v8, :cond_180

    aget-object v8, v6, v5

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    aget-object v5, v6, v5

    invoke-virtual {v2, v3, v5, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_180
    aget-object v3, v6, v7

    if-eqz v3, :cond_196

    aget-object v3, v6, v7

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    aget-object v3, v6, v7

    invoke-virtual {v2, v1, v3, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_196
    :goto_196
    move-object v6, v0

    goto :goto_1f8

    :cond_198
    const-string/jumbo v1, "method_getLauncherBitmapInfoForThemeStore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f8

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;

    invoke-direct {v0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;-><init>()V

    invoke-static {}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getInstance()Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    move-result-object v1

    const-string v5, "image/launcher_first_screen_normal_image_for_themestore.jpg"

    invoke-virtual {v1, v2, v14, v5}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->buildUriByFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v5, 0xff

    invoke-virtual {v0, v5}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->setHotseatAlpha(I)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->setNormalFileNameUri(Landroid/net/Uri;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;

    invoke-static {}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->getInstance()Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->create(Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->refreshLauncherBitmapForProviderCall(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v6, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isThemeTextColorDefault()Z

    move-result v0

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v3

    invoke-static {v11, v0, v10, v3, v4}, Lcom/android/common/multiapp/b;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v6, v9, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v1, :cond_1f8

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "key_launcher_bitmap_normal_image_uri_for_themestore"

    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_1f8
    :goto_1f8
    const-string v0, "call, getLauncherFirstbitmap finish"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    const-string p1, "Thread: is main "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p0, p2, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", Thread: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherFileProvider"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
