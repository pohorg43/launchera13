.class Lcom/oplus/compat/app/job/JobInfoNative$RefOplusBaseJobInfoInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/job/JobInfoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefOplusBaseJobInfoInfo"
.end annotation


# static fields
.field private static SCENE_MODE_GAME:Lcom/oplus/utils/reflect/RefInt;

.field private static SCENE_MODE_VIDEO:Lcom/oplus/utils/reflect/RefInt;

.field private static SCENE_MODE_VIDEO_CALL:Lcom/oplus/utils/reflect/RefInt;

.field private static TYPE_PROTECT_FORE_FRAME:Lcom/oplus/utils/reflect/RefInt;

.field private static TYPE_PROTECT_FORE_NET:Lcom/oplus/utils/reflect/RefInt;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/app/job/JobInfoNative$RefOplusBaseJobInfoInfo;

    const-string v1, "android.app.job.OplusBaseJobInfo"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$RefOplusBaseJobInfoInfo;->TYPE_PROTECT_FORE_NET:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$RefOplusBaseJobInfoInfo;->TYPE_PROTECT_FORE_FRAME:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$RefOplusBaseJobInfoInfo;->SCENE_MODE_VIDEO:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$300()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$RefOplusBaseJobInfoInfo;->SCENE_MODE_VIDEO_CALL:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method

.method public static synthetic access$400()Lcom/oplus/utils/reflect/RefInt;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$RefOplusBaseJobInfoInfo;->SCENE_MODE_GAME:Lcom/oplus/utils/reflect/RefInt;

    return-object v0
.end method
