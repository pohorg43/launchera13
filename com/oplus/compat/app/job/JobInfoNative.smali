.class public Lcom/oplus/compat/app/job/JobInfoNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Lcom/oplus/compat/annotation/OplusApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/app/job/JobInfoNative$BuilderNative;,
        Lcom/oplus/compat/app/job/JobInfoNative$RefOplusBaseJobInfoInfo;,
        Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;,
        Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;
    }
.end annotation


# static fields
.field public static SCENE_MODE_GAME:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public static SCENE_MODE_VIDEO:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public static SCENE_MODE_VIDEO_CALL:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "JobInfoNative"

.field public static TYPE_PROTECT_FORE_FRAME:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public static TYPE_PROTECT_FORE_NET:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    sput v0, Lcom/oplus/compat/app/job/JobInfoNative;->TYPE_PROTECT_FORE_NET:I

    const/4 v1, 0x0

    sput v1, Lcom/oplus/compat/app/job/JobInfoNative;->TYPE_PROTECT_FORE_FRAME:I

    sput v0, Lcom/oplus/compat/app/job/JobInfoNative;->SCENE_MODE_VIDEO:I

    const/4 v0, 0x2

    sput v0, Lcom/oplus/compat/app/job/JobInfoNative;->SCENE_MODE_VIDEO_CALL:I

    const/4 v0, 0x4

    sput v0, Lcom/oplus/compat/app/job/JobInfoNative;->SCENE_MODE_GAME:I

    goto :goto_78

    :cond_15
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefOplusBaseJobInfoInfo;->access$000()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/compat/app/job/JobInfoNative;->TYPE_PROTECT_FORE_NET:I

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefOplusBaseJobInfoInfo;->access$100()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/compat/app/job/JobInfoNative;->TYPE_PROTECT_FORE_FRAME:I

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefOplusBaseJobInfoInfo;->access$200()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/compat/app/job/JobInfoNative;->SCENE_MODE_VIDEO:I

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefOplusBaseJobInfoInfo;->access$300()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/compat/app/job/JobInfoNative;->SCENE_MODE_VIDEO_CALL:I

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefOplusBaseJobInfoInfo;->access$400()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/compat/app/job/JobInfoNative;->SCENE_MODE_GAME:I

    goto :goto_78

    :cond_4f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative;->initTypeProtectForeNet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/app/job/JobInfoNative;->TYPE_PROTECT_FORE_NET:I

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative;->initTypeProtectForeFrame()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/app/job/JobInfoNative;->TYPE_PROTECT_FORE_FRAME:I
    :try_end_6d
    .catchall {:try_start_0 .. :try_end_6d} :catchall_6e

    goto :goto_78

    :catchall_6e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobInfoNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    :goto_78
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$1000(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/oplus/compat/app/job/JobInfoNative;->getRequiresBattIdleForQ(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1200(Landroid/app/job/JobInfo$Builder;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/compat/app/job/JobInfoNative;->setOplusJobForQ(Landroid/app/job/JobInfo$Builder;Z)V

    return-void
.end method

.method public static synthetic access$1300(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/oplus/compat/app/job/JobInfoNative;->getOplusJobForQ(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1500(Landroid/app/job/JobInfo$Builder;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/compat/app/job/JobInfoNative;->setRequiresProtectForeForQ(Landroid/app/job/JobInfo$Builder;Z)V

    return-void
.end method

.method public static synthetic access$1700(Landroid/app/job/JobInfo$Builder;ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/compat/app/job/JobInfoNative;->setRequiresProtectForeForQ(Landroid/app/job/JobInfo$Builder;ZI)V

    return-void
.end method

.method public static synthetic access$1800(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/oplus/compat/app/job/JobInfoNative;->getRequiresProtectForeForQ(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2000(Landroid/app/job/JobInfo$Builder;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/compat/app/job/JobInfoNative;->setHasCpuConstraintForQ(Landroid/app/job/JobInfo$Builder;Z)V

    return-void
.end method

.method public static synthetic access$2100(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/oplus/compat/app/job/JobInfoNative;->getHasCpuConstraintForQ(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2300(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/compat/app/job/JobInfoNative;->setOplusExtraStrForQ(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2400(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/oplus/compat/app/job/JobInfoNative;->getOplusExtraStrForQ(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2600(Landroid/app/job/JobInfo$Builder;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/compat/app/job/JobInfoNative;->setHasTemperatureConstraintForQ(Landroid/app/job/JobInfo$Builder;Z)V

    return-void
.end method

.method public static synthetic access$2900(Landroid/app/job/JobInfo$Builder;ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/compat/app/job/JobInfoNative;->setRequiresProtectSceneForQ(Landroid/app/job/JobInfo$Builder;ZI)V

    return-void
.end method

.method public static synthetic access$700(Landroid/app/job/JobInfo$Builder;ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/compat/app/job/JobInfoNative;->setRequiresBattIdleForQ(Landroid/app/job/JobInfo$Builder;ZI)V

    return-void
.end method

.method private static getHasCpuConstraintForQ(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOplusExtraStrForQ(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOplusJobForQ(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRequiresBattIdleForQ(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRequiresProtectForeForQ(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static initTypeProtectForeFrame()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static initTypeProtectForeNet()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static setHasCpuConstraintForQ(Landroid/app/job/JobInfo$Builder;Z)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static setHasTemperatureConstraintForQ(Landroid/app/job/JobInfo$Builder;Z)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static setOplusExtraStrForQ(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static setOplusJobForQ(Landroid/app/job/JobInfo$Builder;Z)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static setRequiresBattIdleForQ(Landroid/app/job/JobInfo$Builder;ZI)V
    .registers 3
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static setRequiresProtectForeForQ(Landroid/app/job/JobInfo$Builder;Z)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static setRequiresProtectForeForQ(Landroid/app/job/JobInfo$Builder;ZI)V
    .registers 3
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static setRequiresProtectSceneForQ(Landroid/app/job/JobInfo$Builder;ZI)V
    .registers 3
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method
