.class public Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/task/ISeedlingTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "SeedlingTaskCompatibleImpl"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;->Companion:Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final defaultLog(Ljava/lang/String;)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "warning, default impl! maybe version is not compatible, methodName:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeedlingTaskCompatibleImpl"

    invoke-static {p1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 2

    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getStatus()Ljava/lang/Object;
    .registers 2

    const-string v0, "getStatus"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public getTaskName()Ljava/lang/Object;
    .registers 2

    const-string v0, "getTaskName"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public isCanceled()Z
    .registers 2

    const-string v0, "isCanceled"

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/task/SeedlingTaskCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
