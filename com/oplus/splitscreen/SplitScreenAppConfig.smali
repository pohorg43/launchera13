.class public Lcom/oplus/splitscreen/SplitScreenAppConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/SplitScreenAppConfig$VerticalSplitItem;,
        Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;,
        Lcom/oplus/splitscreen/SplitScreenAppConfig$LazyHolder;
    }
.end annotation


# static fields
.field private static final ATTR_CONFIG_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_NAME:Ljava/lang/String; = "attr"

.field private static final ATTR_STATUS:Ljava/lang/String; = "status"

.field private static final CONFIG_TYPE_LARGE_SCREEN:Ljava/lang/String; = "largescreen"

.field private static final DEFAULT_CONFIG_FILE_PATH:Ljava/lang/String; = "/system_ext/oplus/sys_wms_split_app.xml"

.field private static final DEFAULT_LARGE_SCREEN_CONFIG_FILE_PATH:Ljava/lang/String; = "/system_ext/oplus/sys_wms_split_app_large.xml"

.field private static final RUS_CONFIG_FILE_PATH:Ljava/lang/String; = "config/sys_wms_split_app.xml"

.field private static final TAG:Ljava/lang/String; = "SplitScreenAppConfig"

.field private static final TAG_FORBID_FULL_NAME:Ljava/lang/String; = "full"

.field private static final TAG_FORBID_POCKET_STUDIO_SPLIT:Ljava/lang/String; = "psbp"

.field private static final TAG_FORBID_SPLIT:Ljava/lang/String; = "bp"

.field private static final TAG_FORCE_SPLIT:Ljava/lang/String; = "p"

.field private static final TAG_ROOT:Ljava/lang/String; = "settings"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static final TAG_VERTICAL_SPLIT:Ljava/lang/String; = "vSplit"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurVersion:J

.field private mDebugVerticalSplit:Z

.field private mInit:Z

.field private final mIsLargeScreenDevice:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mMap:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mCurVersion:J

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->isLargeScreenDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mIsLargeScreenDevice:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitScreenAppConfig$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/splitscreen/SplitScreenAppConfig;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->loadConfigsInner()V

    return-void
.end method

.method public static synthetic access$200(Lcom/oplus/splitscreen/SplitScreenAppConfig;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->loadConfigs()V

    return-void
.end method

.method private configTypeMatched(Ljava/lang/String;)Z
    .registers 3

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mIsLargeScreenDevice:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_15

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_14

    const-string p0, "largescreen"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :cond_15
    :goto_15
    return v0
.end method

.method private getConfigVersion(Ljava/lang/String;Z)J
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    return-wide v1

    :cond_9
    const/4 v0, 0x0

    const-string v3, "SplitScreenAppConfig"

    if-eqz p2, :cond_17

    :try_start_e
    iget-object p2, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {p2, p1, v4}, Lcom/oplus/settings/OplusSettings;->readConfig(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    move-object v0, p1

    goto :goto_1d

    :cond_17
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, p2

    :goto_1d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    :goto_2e
    const/4 v4, 0x1

    if-eq p2, v4, :cond_7f

    const/4 v4, 0x2

    if-ne p2, v4, :cond_7a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v4, "settings"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    const-string v4, "type"

    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->configTypeMatched(Ljava/lang/String;)Z

    move-result v4
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4e} :catch_87
    .catchall {:try_start_e .. :try_end_4e} :catchall_85

    if-nez v4, :cond_56

    if-eqz v0, :cond_55

    :try_start_52
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_55

    :catch_55
    :cond_55
    return-wide v1

    :cond_56
    :try_start_56
    const-string v4, "version"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_69} :catch_87
    .catchall {:try_start_56 .. :try_end_69} :catchall_85

    :try_start_69
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_6d} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6d} :catch_87
    .catchall {:try_start_69 .. :try_end_6d} :catchall_85

    goto :goto_74

    :catch_6e
    move-exception p0

    :try_start_6f
    const-string p1, "parse version error"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_74} :catch_87
    .catchall {:try_start_6f .. :try_end_74} :catchall_85

    :goto_74
    if-eqz v0, :cond_79

    :try_start_76
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_79

    :catch_79
    :cond_79
    return-wide v1

    :cond_7a
    :try_start_7a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7e} :catch_87
    .catchall {:try_start_7a .. :try_end_7e} :catchall_85

    goto :goto_2e

    :cond_7f
    if-eqz v0, :cond_90

    :goto_81
    :try_start_81
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_90

    goto :goto_90

    :catchall_85
    move-exception p0

    goto :goto_91

    :catch_87
    move-exception p0

    :try_start_88
    const-string p1, "getConfigVersion error"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_85

    if-eqz v0, :cond_90

    goto :goto_81

    :catch_90
    :cond_90
    :goto_90
    return-wide v1

    :goto_91
    if-eqz v0, :cond_96

    :try_start_93
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_96

    :catch_96
    :cond_96
    throw p0
.end method

.method private getDefaultConfigPath()Ljava/lang/String;
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mIsLargeScreenDevice:Z

    if-eqz p0, :cond_7

    const-string p0, "/system_ext/oplus/sys_wms_split_app_large.xml"

    goto :goto_9

    :cond_7
    const-string p0, "/system_ext/oplus/sys_wms_split_app.xml"

    :goto_9
    return-object p0
.end method

.method public static getInstance()Lcom/oplus/splitscreen/SplitScreenAppConfig;
    .registers 1

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenAppConfig$LazyHolder;->access$000()Lcom/oplus/splitscreen/SplitScreenAppConfig;

    move-result-object v0

    return-object v0
.end method

.method private isLargeScreenDevice()Z
    .registers 1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result p0

    return p0
.end method

.method private loadConfigs()V
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/ShellBackgroundThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/oplus/quickstep/common/observers/a;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/common/observers/a;-><init>(Lcom/oplus/splitscreen/SplitScreenAppConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method private loadConfigsInner()V
    .registers 9

    const-string v0, "config/sys_wms_split_app.xml"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->getConfigVersion(Ljava/lang/String;Z)J

    move-result-wide v2

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->getDefaultConfigPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->getConfigVersion(Ljava/lang/String;Z)J

    move-result-wide v6

    cmp-long v4, v2, v6

    if-ltz v4, :cond_15

    goto :goto_17

    :cond_15
    move v1, v5

    move-wide v2, v6

    :goto_17
    iget-wide v6, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mCurVersion:J

    cmp-long v4, v2, v6

    if-gtz v4, :cond_1e

    return-void

    :cond_1e
    iput-wide v2, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mCurVersion:J

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    :try_start_23
    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/oplus/settings/OplusSettings;->readConfig(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_33

    :cond_2a
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->getDefaultConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_33
    move-object v2, v0

    invoke-direct {p0, v2}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->readConfigsFromXML(Ljava/io/InputStream;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_37} :catch_44
    .catchall {:try_start_23 .. :try_end_37} :catchall_3d

    if-eqz v2, :cond_47

    :goto_39
    :try_start_39
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_47

    goto :goto_47

    :catchall_3d
    move-exception p0

    if-eqz v2, :cond_43

    :try_start_40
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_43

    :catch_43
    :cond_43
    throw p0

    :catch_44
    if-eqz v2, :cond_47

    goto :goto_39

    :catch_47
    :cond_47
    :goto_47
    return-void
.end method

.method private parseCmdItem(Ljava/lang/String;)Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return-object v0

    :cond_8
    const/16 p0, 0x2f

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_75

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_19

    goto :goto_75

    :cond_19
    const/4 v2, 0x0

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_76

    :goto_2d
    move v2, v1

    goto :goto_64

    :sswitch_2f
    const-string v2, "psbp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_2d

    :cond_38
    const/4 v2, 0x4

    goto :goto_64

    :sswitch_3a
    const-string v2, "full"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_2d

    :cond_43
    const/4 v2, 0x3

    goto :goto_64

    :sswitch_45
    const-string v2, "bp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    goto :goto_2d

    :cond_4e
    const/4 v2, 0x2

    goto :goto_64

    :sswitch_50
    const-string v2, "p"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    goto :goto_2d

    :cond_59
    const/4 v2, 0x1

    goto :goto_64

    :sswitch_5b
    const-string v3, "vSplit"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    goto :goto_2d

    :cond_64
    :goto_64
    packed-switch v2, :pswitch_data_8c

    goto :goto_75

    :pswitch_68  #0x1, 0x2, 0x3, 0x4
    new-instance v0, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;

    invoke-direct {v0, p0, p1}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    :pswitch_6e  #0x0
    new-instance v0, Lcom/oplus/splitscreen/SplitScreenAppConfig$VerticalSplitItem;

    const-string v1, ""

    invoke-direct {v0, p0, p1, v1}, Lcom/oplus/splitscreen/SplitScreenAppConfig$VerticalSplitItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    :goto_75
    return-object v0

    :sswitch_data_76
    .sparse-switch
        -0x31ddfbbc -> :sswitch_5b
        0x70 -> :sswitch_50
        0xc4e -> :sswitch_45
        0x30228f -> :sswitch_3a
        0x34a591 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_6e  #00000000
        :pswitch_68  #00000001
        :pswitch_68  #00000002
        :pswitch_68  #00000003
        :pswitch_68  #00000004
    .end packed-switch
.end method

.method private readConfigsFromXML(Ljava/io/InputStream;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {v0, p1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_1e
    :goto_1e
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_b8

    const/4 v2, 0x0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x31ddfbbc

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v5, v6, :cond_72

    const/16 v6, 0x70

    if-eq v5, v6, :cond_68

    const/16 v6, 0xc4e

    if-eq v5, v6, :cond_5e

    const v6, 0x30228f

    if-eq v5, v6, :cond_54

    const v6, 0x34a591

    if-eq v5, v6, :cond_4a

    goto :goto_7b

    :cond_4a
    const-string v5, "psbp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    move v4, v8

    goto :goto_7b

    :cond_54
    const-string v5, "full"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    move v4, v9

    goto :goto_7b

    :cond_5e
    const-string v5, "bp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    move v4, v10

    goto :goto_7b

    :cond_68
    const-string v5, "p"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    const/4 v4, 0x0

    goto :goto_7b

    :cond_72
    const-string v5, "vSplit"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    move v4, v7

    :cond_7b
    :goto_7b
    if-eqz v4, :cond_9d

    if-eq v4, v10, :cond_9d

    if-eq v4, v9, :cond_9d

    if-eq v4, v8, :cond_9d

    if-eq v4, v7, :cond_86

    goto :goto_ad

    :cond_86
    const-string v2, "attr"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/oplus/splitscreen/SplitScreenAppConfig$VerticalSplitItem;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lcom/oplus/splitscreen/SplitScreenAppConfig$VerticalSplitItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_ad

    :cond_9d
    const-string v2, "attr"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :goto_ad
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1e

    :cond_b8
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_bb} :catch_ca

    :try_start_bb
    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    monitor-exit v0

    goto :goto_d2

    :catchall_c7
    move-exception p0

    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_bb .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw p0
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_ca} :catch_ca

    :catch_ca
    move-exception p0

    const-string p1, "SplitScreenAppConfig"

    const-string v0, "readConfigsFromXML error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d2
    return-void
.end method

.method private registerDataFileChangeListener()V
    .registers 4

    new-instance v0, Lcom/oplus/splitscreen/SplitScreenAppConfig$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/splitscreen/SplitScreenAppConfig$1;-><init>(Lcom/oplus/splitscreen/SplitScreenAppConfig;Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mContext:Landroid/content/Context;

    const-string v1, "config/sys_wms_split_app.xml"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/oplus/settings/OplusSettings;->registerChangeListener(Landroid/content/Context;Ljava/lang/String;ILcom/oplus/settings/OplusSettingsChangeListener;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string v0, "Current Version:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mCurVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v1, v0, :cond_cb

    aget-object v0, p2, v1

    const-string v1, "get_config"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Not Found"

    const/4 v3, 0x3

    if-eqz v1, :cond_3b

    array-length v0, p2

    if-ge v3, v0, :cond_cb

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mMap:Landroid/util/ArrayMap;

    aget-object p2, p2, v3

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_36
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_cb

    :cond_3b
    const-string v1, "set_config"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    array-length v0, p2

    if-ge v3, v0, :cond_cb

    aget-object p2, p2, v3

    invoke-direct {p0, p2}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->parseCmdItem(Ljava/lang/String;)Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;

    move-result-object p2

    if-eqz p2, :cond_cb

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert item:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_cb

    :cond_70
    const-string v1, "remove_config"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    array-length v0, p2

    if-ge v3, v0, :cond_cb

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mMap:Landroid/util/ArrayMap;

    aget-object p2, p2, v3

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;

    if-eqz p2, :cond_a9

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove item:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_cb

    :cond_a9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_cb

    :cond_ad
    const-string p1, "debug_vertical_split"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c0

    aget-object p1, p2, v3

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mDebugVerticalSplit:Z

    goto :goto_cb

    :cond_c0
    const-string p1, "reload_xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cb

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->loadConfigs()V

    :cond_cb
    :goto_cb
    return-void
.end method

.method public inDisableSplitList(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mMap:Landroid/util/ArrayMap;

    const-string v1, "bp"

    invoke-static {v1, p1}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public inEnableSplitList(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mMap:Landroid/util/ArrayMap;

    const-string v1, "p"

    invoke-static {v1, p1}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public inForbidActivityList(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mMap:Landroid/util/ArrayMap;

    const-string v1, "full"

    invoke-static {v1, p1}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public inVerticalSplitEnableList(Landroid/content/ComponentName;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-boolean v1, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mDebugVerticalSplit:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_15
    iget-object v4, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mMap:Landroid/util/ArrayMap;

    const-string v5, "vSplit"

    invoke-static {v5, p1}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/splitscreen/SplitScreenAppConfig$VerticalSplitItem;

    if-eqz p1, :cond_2e

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenAppConfig$VerticalSplitItem;->access$100(Lcom/oplus/splitscreen/SplitScreenAppConfig$VerticalSplitItem;)Z

    move-result p0

    if-nez p0, :cond_2c

    move v0, v2

    :cond_2c
    monitor-exit v3

    return v0

    :cond_2e
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mMap:Landroid/util/ArrayMap;

    const-string p1, "vSplit"

    invoke-static {p1, v1}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v3

    return p0

    :catchall_3c
    move-exception p0

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_15 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mInit:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mInit:Z

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->registerDataFileChangeListener()V

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->loadConfigs()V

    return-void
.end method

.method public isInPocketStudioBlackList(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig;->mMap:Landroid/util/ArrayMap;

    const-string v1, "psbp"

    invoke-static {v1, p1}, Lcom/oplus/splitscreen/SplitScreenAppConfig$Item;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw p0
.end method
