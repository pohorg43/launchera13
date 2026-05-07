.class Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/job/JobInfoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefJobInfoBuilderInfo"
.end annotation


# static fields
.field private static mBuilderExt:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Landroid/app/job/IJobInfoExt$JobBuilderExt;",
            ">;"
        }
    .end annotation
.end field

.field private static makeBuilderExt:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Landroid/app/job/IJobInfoExt$JobBuilderExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_d

    const-class v0, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;

    const-class v1, Landroid/app/job/JobInfo$Builder;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    :cond_d
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$500()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->makeBuilderExt:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method public static synthetic access$800()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->mBuilderExt:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method
