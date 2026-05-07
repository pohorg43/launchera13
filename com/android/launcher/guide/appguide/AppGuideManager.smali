.class public Lcom/android/launcher/guide/appguide/AppGuideManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;,
        Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;,
        Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideManagerHolder;
    }
.end annotation


# static fields
.field private static final KEY_CLASS_NAME:Ljava/lang/String; = "key_class_name"

.field private static final KEY_ENABLED:Ljava/lang/String; = "key_enabled"

.field private static final KEY_IMAGE_URI:Ljava/lang/String; = "key_image_uri"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "key_package_name"

.field private static final KEY_SUMMARY:Ljava/lang/String; = "key_summary"

.field private static final METHOD_GET_APP_GUIDE_INFO:Ljava/lang/String; = "method_getAppGuideInfo"

.field private static final TAG:Ljava/lang/String; = "AppGuideManager"

.field private static final XML_ATTR_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final XML_ATTR_ENABLE:Ljava/lang/String; = "enable"

.field private static final XML_ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final XML_ATTR_PRIORITY:Ljava/lang/String; = "priority"

.field private static final XML_ATTR_URI:Ljava/lang/String; = "uri"

.field private static final XML_TAG_APP_INFO:Ljava/lang/String; = "app-info"


# instance fields
.field private mAppGuideHelper:Lcom/android/launcher/guide/appguide/AppGuideHelper;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/appguide/AppGuideManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuideManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideManager;->lambda$loadAppGuideConfig$3(Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher/Launcher;Lcom/android/launcher/guide/appguide/AppGuideHelper;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideManager;->lambda$performShowAppGuide$2(Lcom/android/launcher/Launcher;Lcom/android/launcher/guide/appguide/AppGuideHelper;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/guide/appguide/AppGuideManager;Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideManager;->lambda$showAppGuideViewIfNeeded$1(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private closeAppGuideView()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideManager;->mAppGuideHelper:Lcom/android/launcher/guide/appguide/AppGuideHelper;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->isPageShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideManager;->mAppGuideHelper:Lcom/android/launcher/guide/appguide/AppGuideHelper;

    invoke-virtual {v0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->closeAppGuideView()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideManager;->mAppGuideHelper:Lcom/android/launcher/guide/appguide/AppGuideHelper;

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/guide/appguide/AppGuideManager;Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideManager;->lambda$showAppGuideView$0(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private static decodeFixedBitmap(Landroid/content/Context;Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_42

    if-nez p1, :cond_6

    goto :goto_42

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070146

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070145

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float v1, v4

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_3e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_3e} :catch_3f

    return-object p0

    :catch_3f
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_42
    :goto_42
    return-object v0
.end method

.method private getAppGuideAnchorOnScreen(Lcom/android/launcher/Launcher;Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->getFirstMatchAndChangePageIfNeeded(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "AppGuideManager"

    if-nez p0, :cond_1b

    const-string p0, "getAppGuideAnchorOnScreen: View not found"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1b
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v0, :cond_34

    const-string v0, "getAppGuideAnchorOnScreen: Error view "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_34
    return-object p0
.end method

.method public static getInstance()Lcom/android/launcher/guide/appguide/AppGuideManager;
    .registers 1

    invoke-static {}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideManagerHolder;->access$000()Lcom/android/launcher/guide/appguide/AppGuideManager;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$loadAppGuideConfig$3(Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->getPriority()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->getPriority()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private static synthetic lambda$performShowAppGuide$2(Lcom/android/launcher/Launcher;Lcom/android/launcher/guide/appguide/AppGuideHelper;)V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {p1}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->show()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$showAppGuideView$0(Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideManager;->showAppGuideViewIfNeeded(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private synthetic lambda$showAppGuideViewIfNeeded$1(Lcom/android/launcher/Launcher;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideManager;->mAppGuideHelper:Lcom/android/launcher/guide/appguide/AppGuideHelper;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/guide/appguide/AppGuideManager;->performShowAppGuide(Lcom/android/launcher/guide/appguide/AppGuideHelper;Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private loadAppGuideData(Landroid/content/Context;Ljava/util/List;)Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;",
            ">;)",
            "Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string v0, "AppGuideManager"

    const/4 v1, 0x0

    if-eqz p2, :cond_67

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;

    invoke-virtual {p2}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->isEnable()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_4

    :cond_1a
    invoke-virtual {p2}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :try_start_22
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_class_name"

    invoke-virtual {p2}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_package_name"

    invoke-virtual {p2}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "method_getAppGuideInfo"

    invoke-virtual {v4, v2, v5, v1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_44} :catch_45

    goto :goto_5a

    :catch_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppGuideData: call uri failed --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_5a
    if-nez v2, :cond_5d

    goto :goto_4

    :cond_5d
    const/4 v3, 0x0

    const-string v4, "key_enabled"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_69

    goto :goto_4

    :cond_67
    move-object p2, v1

    move-object v2, p2

    :cond_69
    if-nez v2, :cond_71

    const-string p0, "loadAppGuideData: empty remoteData"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_71
    :try_start_71
    const-string p0, "key_summary"

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_83

    const-string p0, "loadAppGuideData: empty mSummary"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_83
    const-string v3, "key_image_uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_95

    const-string p0, "loadAppGuideData: empty imageUriStr"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_95
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "r"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_a4
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_a4} :catch_f9
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_a4} :catch_dc
    .catchall {:try_start_71 .. :try_end_a4} :catchall_da

    if-nez v2, :cond_b1

    :try_start_a6
    const-string p0, "loadAppGuideData: imageFd is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_a6 .. :try_end_ab} :catch_d8
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ab} :catch_d6
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_119

    if-eqz v2, :cond_b0

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    :cond_b0
    return-object v1

    :cond_b1
    :try_start_b1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/launcher/guide/appguide/AppGuideManager;->decodeFixedBitmap(Landroid/content/Context;Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_c4

    const-string p0, "loadAppGuideData: decode bitmap failed"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_b1 .. :try_end_c0} :catch_d8
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c0} :catch_d6
    .catchall {:try_start_b1 .. :try_end_c0} :catchall_119

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    return-object v1

    :cond_c4
    :try_start_c4
    new-instance v3, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;

    invoke-direct {v3}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;-><init>()V

    invoke-virtual {v3, p0}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;->setImageSource(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, p2}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;->setAppGuideConfig(Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;)V
    :try_end_d2
    .catch Ljava/io/FileNotFoundException; {:try_start_c4 .. :try_end_d2} :catch_d8
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d2} :catch_d6
    .catchall {:try_start_c4 .. :try_end_d2} :catchall_119

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    return-object v3

    :catch_d6
    move-exception p0

    goto :goto_de

    :catch_d8
    move-exception p0

    goto :goto_fb

    :catchall_da
    move-exception p0

    goto :goto_11b

    :catch_dc
    move-exception p0

    move-object v2, v1

    :goto_de
    :try_start_de
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadAppGuideData Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_118

    goto :goto_115

    :catch_f9
    move-exception p0

    move-object v2, v1

    :goto_fb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadAppGuideData FileNotFoundException: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_113
    .catchall {:try_start_de .. :try_end_113} :catchall_119

    if-eqz v2, :cond_118

    :goto_115
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    :cond_118
    return-object v1

    :catchall_119
    move-exception p0

    move-object v1, v2

    :goto_11b
    if-eqz v1, :cond_120

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    :cond_120
    throw p0
.end method

.method private performShowAppGuide(Lcom/android/launcher/guide/appguide/AppGuideHelper;Lcom/android/launcher/Launcher;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->getAppGuideData()Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;->getAppGuideConfig()Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/launcher/guide/appguide/AppGuideManager;->getAppGuideAnchorOnScreen(Lcom/android/launcher/Launcher;Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string p0, "AppGuideManager"

    const-string/jumbo p1, "showAppGuideViewIfNeededInternal: No anchor pair"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-virtual {p1, p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->setOnStateChangedListener(Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->initWithLauncher(Lcom/android/launcher/Launcher;)V

    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1, p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->setAnchor(Lcom/android/launcher3/OplusBubbleTextView;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lcom/android/launcher/guide/appguide/b;

    invoke-direct {v1, p2, p1}, Lcom/android/launcher/guide/appguide/b;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/guide/appguide/AppGuideHelper;)V

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private prepareAppGuideDataInternalIfNeeded(Landroid/content/Context;)Lcom/android/launcher/guide/appguide/AppGuideHelper;
    .registers 8

    const/4 v0, 0x0

    const-string v1, "AppGuideManager"

    if-nez p1, :cond_c

    const-string/jumbo p0, "prepareAppGuideDataInternalIfNeeded: ctx is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_c
    sget-object v2, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v2}, Lcom/android/common/config/FeatureOption;->isSupportAppGuide()Z

    move-result v2

    if-nez v2, :cond_1b

    const-string/jumbo p0, "prepareAppGuideDataInternalIfNeeded: not support app guide"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1b
    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v2, :cond_26

    const-string/jumbo p0, "prepareAppGuideDataInternalIfNeeded: not support internal version"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_26
    invoke-static {p1}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->shouldShowAppGuide(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string/jumbo p0, "prepareAppGuideDataInternalIfNeeded: app guide showed, ignore"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_33
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "prepareAppGuideDataInternalIfNeeded: loadConfigStartTime --> "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideManager;->loadAppGuideConfig(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_6d

    const-string/jumbo v3, "prepareAppGuideDataInternalIfNeeded: loadDataStartTime --> "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    invoke-direct {p0, p1, v2}, Lcom/android/launcher/guide/appguide/AppGuideManager;->loadAppGuideData(Landroid/content/Context;Ljava/util/List;)Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;

    move-result-object p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_8c

    const-string/jumbo p1, "prepareAppGuideDataInternalIfNeeded: loadFinishTime --> "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    if-nez p0, :cond_95

    const-string/jumbo p0, "prepareAppGuideDataInternalIfNeeded: app guide data is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_95
    new-instance p1, Lcom/android/launcher/guide/appguide/AppGuideHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;-><init>(Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideData;)V

    return-object p1
.end method


# virtual methods
.method public loadAppGuideConfig(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;",
            ">;"
        }
    .end annotation

    const-string p0, "AppGuideManager"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v1, 0x7f150000

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_11} :catch_8d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_77

    :goto_11
    :try_start_11
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_67

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1c

    goto :goto_11

    :cond_1c
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app-info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_11

    :cond_29
    new-instance v1, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;

    invoke-direct {v1}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;-><init>()V

    const-string/jumbo v2, "uri"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->setUri(Ljava/lang/String;)V

    const-string v2, "className"

    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->setClassName(Ljava/lang/String;)V

    const-string/jumbo v2, "packageName"

    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v2, "priority"

    const v4, 0x7fffffff

    invoke-interface {p1, v3, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->setPriority(I)V

    const-string v2, "enable"

    const/4 v4, 0x0

    invoke-interface {p1, v3, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;->setEnable(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catchall {:try_start_11 .. :try_end_66} :catchall_6b

    goto :goto_11

    :cond_67
    :try_start_67
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_67 .. :try_end_6a} :catch_8d
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_77

    goto :goto_a2

    :catchall_6b
    move-exception v1

    if-eqz p1, :cond_76

    :try_start_6e
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception p1

    :try_start_73
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_76
    :goto_76
    throw v1
    :try_end_77
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_73 .. :try_end_77} :catch_8d
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_77} :catch_77

    :catch_77
    move-exception p1

    const-string v1, "loadAppGuideConfig IOException: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    :catch_8d
    move-exception p1

    const-string v1, "loadAppGuideConfig XmlPullParserException: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a2
    sget-object p0, Lcom/android/launcher/guide/appguide/c;->a:Lcom/android/launcher/guide/appguide/c;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuideManager;->closeAppGuideView()V

    return-void
.end method

.method public onHided(Lcom/android/launcher/guide/appguide/AppGuideHelper;)V
    .registers 2

    return-void
.end method

.method public onReleased(Lcom/android/launcher/guide/appguide/AppGuideHelper;)V
    .registers 2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->setOnStateChangedListener(Lcom/android/launcher/guide/appguide/AppGuideHelper$OnStateChangedListener;)V

    return-void
.end method

.method public onShowed(Lcom/android/launcher/guide/appguide/AppGuideHelper;)V
    .registers 2

    return-void
.end method

.method public onSizeChanged(Lcom/android/launcher/guide/appguide/AppGuideHelper;)V
    .registers 2

    return-void
.end method

.method public showAppGuideView(Lcom/android/launcher/Launcher;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/guide/appguide/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher/guide/appguide/b;-><init>(Lcom/android/launcher/guide/appguide/AppGuideManager;Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showAppGuideViewIfNeeded(Lcom/android/launcher/Launcher;)V
    .registers 5

    const-string/jumbo v0, "showAppGuideViewIfNeeded: isOtaVersionUpdate="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppGuideManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_21

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuideManager;->mAppGuideHelper:Lcom/android/launcher/guide/appguide/AppGuideHelper;

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->release()V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuideManager;->closeAppGuideView()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p1}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->markAppGuideShowed(Landroid/content/Context;)V

    return-void

    :cond_2e
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/guide/appguide/AppGuideManager;->prepareAppGuideDataInternalIfNeeded(Landroid/content/Context;)Lcom/android/launcher/guide/appguide/AppGuideHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuideManager;->mAppGuideHelper:Lcom/android/launcher/guide/appguide/AppGuideHelper;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/guide/appguide/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher/guide/appguide/b;-><init>(Lcom/android/launcher/guide/appguide/AppGuideManager;Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
