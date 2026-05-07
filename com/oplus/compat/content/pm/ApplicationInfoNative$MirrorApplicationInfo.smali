.class Lcom/oplus/compat/content/pm/ApplicationInfoNative$MirrorApplicationInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/content/pm/ApplicationInfoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MirrorApplicationInfo"
.end annotation


# static fields
.field private static mApplicationInfoExt:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/content/pm/ApplicationInfoNative$MirrorApplicationInfo;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200()Lcom/oplus/utils/reflect/RefObject;
    .registers 1

    sget-object v0, Lcom/oplus/compat/content/pm/ApplicationInfoNative$MirrorApplicationInfo;->mApplicationInfoExt:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method
