.class public Lcom/android/launcher/download/DownloadInfos;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DOWNLOAD_PROGRESS:Ljava/lang/String; = "downloadProgress"

.field public static final ICON_PATH:Ljava/lang/String; = "iconPath"

.field public static final INSTALL_SOURCE:Ljava/lang/String; = "installSource"

.field public static final INSTALL_STATE:Ljava/lang/String; = "installState"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final PROFILE_ID:Ljava/lang/String; = "profileId"

.field public static final TABLE_NAME:Ljava/lang/String; = "downloadinfos"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.android.launcher.download.DownloadStateProvider/downloadinfos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/download/DownloadInfos;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
