.class public Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final INVALID_RESULT:I = -0x1


# instance fields
.field private mMtkSmsManagerObj:Ljava/lang/Object;

.field private mMtkSmsManagerWrapper:Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;


# direct methods
.method private constructor <init>(Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    return-void
.end method

.method private static copyTextMessageToIccCardCompat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Ljava/lang/Object;
    .registers 7
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static divideMessageCompat(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAllMessagesFromIccCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->withoutFeature(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return-object v0

    :cond_8
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1f

    new-instance p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_1f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result p0

    if-eqz p0, :cond_2f

    new-instance p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;

    invoke-static {}, Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;->getDefault()Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;-><init>(Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;)V

    return-object p0

    :cond_2f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p0

    if-eqz p0, :cond_3f

    new-instance p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->getDefaultCompat()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_3f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result p0

    if-eqz p0, :cond_55

    new-instance p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_55
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getDefaultCompat()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSmsManagerForSubscriptionId(Landroid/content/Context;I)Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->withoutFeature(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return-object v0

    :cond_8
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_26

    new-instance p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->access$200()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v3, v0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_26
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result p0

    if-eqz p0, :cond_36

    new-instance p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;

    invoke-static {p1}, Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;->getSmsManagerForSubscriptionId(I)Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;-><init>(Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;)V

    return-object p0

    :cond_36
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p0

    if-eqz p0, :cond_46

    new-instance p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;

    invoke-static {p1}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->getSmsManagerForSubscriptionIdCompat(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_46
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result p0

    if-eqz p0, :cond_62

    new-instance p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->access$200()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v3, v0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_62
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getSmsManagerForSubscriptionIdCompat(I)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSmsSimMemoryStatusCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static sendDataMessageCompat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 8
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static sendMultipartTextMessageWithEncodingTypeCompat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private static sendMultipartTextMessageWithExtraParams(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private static withoutFeature(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "mtk.gemini.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public copyTextMessageToIccCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .registers 16
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {p1}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->withoutFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-eqz v1, :cond_39

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->access$300()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v1

    iget-object v0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v6

    aput-object p3, v7, v5

    aput-object p4, v7, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-virtual {v1, v0, v7}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_39
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-wide v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v0

    return v0

    :cond_4b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->copyTextMessageToIccCardCompat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_63
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->access$300()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v1

    iget-object v0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v6

    aput-object p3, v7, v5

    aput-object p4, v7, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-virtual {v1, v0, v7}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_8e
    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public divideMessage(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {p1}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->withoutFeature(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->access$600()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    invoke-virtual {p1, p0, v0}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    :cond_28
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;

    invoke-virtual {p0, p2, p3}, Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_35
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    invoke-static {p0, p2, p3}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->divideMessageCompat(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    :cond_44
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getAllMessagesFromIcc(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {p1}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->withoutFeature(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result p1

    if-eqz p1, :cond_3a

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->access$400()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;

    invoke-direct {v1, v0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_39
    return-object p1

    :cond_3a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result p1

    if-eqz p1, :cond_6d

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_6c

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6c

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_57
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/inner/mediatek/telephony/MtkSmsMessageWrapper;

    new-instance v1, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;

    invoke-direct {v1, v0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_6c
    return-object p1

    :cond_6d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p1

    if-eqz p1, :cond_a0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->getAllMessagesFromIccCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_9f

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9f

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;

    invoke-direct {v1, v0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsMessageNative;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    :cond_9f
    return-object p1

    :cond_a0
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public getSmsSimMemoryStatus(Landroid/content/Context;)Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {p1}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->withoutFeature(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    new-instance p1, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_21
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result p1

    if-eqz p1, :cond_38

    new-instance p1, Lcom/oplus/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;

    invoke-virtual {p0}, Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;->getSmsSimMemoryStatus()Lcom/oplus/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oplus/inner/mediatek/telephony/MtkIccSmsStorageStatusWrapper;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;

    invoke-direct {p0, p1}, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_38
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p1

    if-eqz p1, :cond_4a

    new-instance p1, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->getSmsSimMemoryStatusCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_4a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result p1

    if-eqz p1, :cond_62

    new-instance p1, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oplus/compat/mediatek/telephony/MtkIccSmsStorageStatusNative;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_62
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "Not supported before O"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendDataMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 21
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    move-object v0, p0

    invoke-static {p1}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->withoutFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->access$500()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v1

    iget-object v0, v0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    :cond_38
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v4, v0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v4 .. v11}, Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_67

    :cond_50
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v4, v0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v4 .. v11}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->sendDataMessageCompat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_67
    return-void

    :cond_68
    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public sendMultipartTextMessageWithEncodingType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 15
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {p1}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->withoutFeature(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->access$800()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x4

    aput-object p6, v0, p2

    const/4 p2, 0x5

    aput-object p7, v0, p2

    invoke-virtual {p1, p0, v0}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    :cond_30
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object v0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;->sendMultipartTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_53

    :cond_42
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object v0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->sendMultipartTextMessageWithEncodingTypeCompat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_53
    return-void

    :cond_54
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public sendMultipartTextMessageWithExtraParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 15
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {p1}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->withoutFeature(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-static {}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative$ReflectInfo;->access$700()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    const/4 p2, 0x4

    aput-object p6, v0, p2

    const/4 p2, 0x5

    aput-object p7, v0, p2

    invoke-virtual {p1, p0, v0}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :cond_2c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object v0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerWrapper:Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/inner/mediatek/telephony/MtkSmsManagerWrapper;->sendMultipartTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_4f

    :cond_3e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p1

    if-eqz p1, :cond_50

    iget-object v0, p0, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->mMtkSmsManagerObj:Ljava/lang/Object;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/oplus/compat/mediatek/telephony/MtkSmsManagerNative;->sendMultipartTextMessageWithExtraParams(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_4f
    return-void

    :cond_50
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method
