.class public Lcom/oplus/compat/provider/DownloadsNative;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static COLUMN_APP_DATA:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static COLUMN_DESCRIPTION:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static COLUMN_DESTINATION:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static COLUMN_FILE_NAME_HINT:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static COLUMN_MIME_TYPE:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static COLUMN_NOTIFICATION_CLASS:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static COLUMN_NOTIFICATION_PACKAGE:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static COLUMN_REFERER:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static COLUMN_TITLE:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static COLUMN_URI:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static COLUMN_VISIBILITY:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static CONTENT_URI:Landroid/net/Uri;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static DESTINATION_FILE_URI:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static _DATA:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getContentUriCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getActionDownloadCompletedCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getColumnUriCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->COLUMN_URI:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getColumnAppDataCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->COLUMN_APP_DATA:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getColumnFileNameHintCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->COLUMN_FILE_NAME_HINT:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getDataCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->_DATA:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getColumnMimeTypeCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->COLUMN_MIME_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getColumnDestinationCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->COLUMN_DESTINATION:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getColumnVisibilityCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->COLUMN_VISIBILITY:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getColumnNotificationPackageCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->COLUMN_NOTIFICATION_PACKAGE:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getColumnNotificationClassCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->COLUMN_NOTIFICATION_CLASS:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getColumnRefererCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->COLUMN_REFERER:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getColumnTitleCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->COLUMN_TITLE:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getColumnDescriptionCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/provider/DownloadsNative;->COLUMN_DESCRIPTION:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getDestinationFileUriCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/provider/DownloadsNative;->DESTINATION_FILE_URI:I

    invoke-static {}, Lcom/oplus/compat/provider/DownloadsNative;->getVisibilityVisibleNotifyCompletedCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/provider/DownloadsNative;->VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActionDownloadCompletedCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETED"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getColumnAppDataCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "entity"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getColumnDescriptionCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "description"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getColumnDestinationCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "destination"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getColumnFileNameHintCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "hint"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getColumnMimeTypeCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "mimetype"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getColumnNotificationClassCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "notificationclass"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getColumnNotificationPackageCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "notificationpackage"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getColumnRefererCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "referer"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getColumnTitleCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "title"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getColumnUriCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "uri"

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getColumnVisibilityCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "visibility"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getContentUriCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDataCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "_data"

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDestinationFileUriCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_c

    return-object v1

    :cond_c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getVisibilityVisibleNotifyCompletedCompat()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_c

    return-object v1

    :cond_c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isStatusCompleted(I)Z
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result p0

    return p0

    :cond_b
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public static isStatusSuccess(I)Z
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result p0

    return p0

    :cond_b
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method
