.class Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/job/JobInfoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfo"
.end annotation


# static fields
.field private static mHasCpuConstraint:Lcom/oplus/utils/reflect/RefBoolean;

.field private static mHasProtectSceneConstraint:Lcom/oplus/utils/reflect/RefBoolean;

.field private static mHasTemperatureConstraint:Lcom/oplus/utils/reflect/RefBoolean;

.field private static mIsOplusJob:Lcom/oplus/utils/reflect/RefBoolean;

.field private static mOplusExtraStr:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mProtectForeType:Lcom/oplus/utils/reflect/RefInt;

.field private static mProtectScene:Lcom/oplus/utils/reflect/RefInt;

.field private static mRequiresBattIdle:Lcom/oplus/utils/reflect/RefBoolean;

.field private static mRequiresProtectFore:Lcom/oplus/utils/reflect/RefBoolean;

.field private static setRequiresBattIdle:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "setRequiresBattIdle"
        params = {
            Z,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "android.app.job.OplusBaseJobInfo$BaseBuilder"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    goto :goto_19

    :cond_e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN_MR1()Z

    move-result v1

    if-eqz v1, :cond_19

    const-class v1, Landroid/app/job/JobInfo$Builder;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    :cond_19
    :goto_19
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$1100()Lcom/oplus/utils/reflect/RefBoolean;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->mIsOplusJob:Lcom/oplus/utils/reflect/RefBoolean;

    return-object v0
.end method

.method public static synthetic access$1400()Lcom/oplus/utils/reflect/RefBoolean;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->mRequiresProtectFore:Lcom/oplus/utils/reflect/RefBoolean;

    return-object v0
.end method

.method public static synthetic access$1600()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->mProtectForeType:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$1900()Lcom/oplus/utils/reflect/RefBoolean;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->mHasCpuConstraint:Lcom/oplus/utils/reflect/RefBoolean;

    return-object v0
.end method

.method public static synthetic access$2200()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->mOplusExtraStr:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method

.method public static synthetic access$2500()Lcom/oplus/utils/reflect/RefBoolean;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->mHasTemperatureConstraint:Lcom/oplus/utils/reflect/RefBoolean;

    return-object v0
.end method

.method public static synthetic access$2700()Lcom/oplus/utils/reflect/RefBoolean;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->mHasProtectSceneConstraint:Lcom/oplus/utils/reflect/RefBoolean;

    return-object v0
.end method

.method public static synthetic access$2800()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->mProtectScene:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$600()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->setRequiresBattIdle:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$900()Lcom/oplus/utils/reflect/RefBoolean;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->mRequiresBattIdle:Lcom/oplus/utils/reflect/RefBoolean;

    return-object v0
.end method
