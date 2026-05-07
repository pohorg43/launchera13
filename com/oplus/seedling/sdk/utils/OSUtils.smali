.class public final Lcom/oplus/seedling/sdk/utils/OSUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/seedling/sdk/utils/OSUtils;

.field public static final TAG:Ljava/lang/String; = "OSUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/utils/OSUtils;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/OSUtils;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/OSUtils;->INSTANCE:Lcom/oplus/seedling/sdk/utils/OSUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkIsAboveOSVersion14(Z)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "OSUtils"

    const-string v1, "checkIsAboveOSVersion14"

    :try_start_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2d

    const/16 v2, 0x21

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_13

    const/4 v2, 0x1

    move v4, v2

    :cond_13
    if-eqz p0, :cond_34

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", above T, result="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/seedling/sdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_2d
    if-eqz p0, :cond_34

    const-string p0, "checkIsAboveOSVersion14, below T, return false"

    invoke-static {v0, p0}, Lcom/oplus/seedling/sdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    :goto_34
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_39

    goto :goto_3e

    :catchall_39
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_3e
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_45

    goto :goto_60

    :cond_45
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error, return false, msg:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_60
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, p0, Ly2/j$a;

    if-eqz v1, :cond_67

    move-object p0, v0

    :cond_67
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic checkIsAboveOSVersion14$default(ZILjava/lang/Object;)Z
    .registers 3

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_5

    move p0, p2

    :cond_5
    invoke-static {p0}, Lcom/oplus/seedling/sdk/utils/OSUtils;->checkIsAboveOSVersion14(Z)Z

    move-result p0

    return p0
.end method
