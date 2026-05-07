.class public final Lcom/android/launcher/folder/download/MarketServiceManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/folder/download/MarketServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/folder/download/MarketServiceManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher/folder/download/MarketServiceManager;->access$getMInstance$cp()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object p0

    if-nez p0, :cond_1e

    const-class p0, Lcom/android/launcher/folder/download/MarketServiceManager;

    monitor-enter p0

    :try_start_9
    invoke-static {}, Lcom/android/launcher/folder/download/MarketServiceManager;->access$getMInstance$cp()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/launcher/folder/download/MarketServiceManager;->Companion:Lcom/android/launcher/folder/download/MarketServiceManager$Companion;

    new-instance v0, Lcom/android/launcher/folder/download/MarketServiceManager;

    invoke-direct {v0}, Lcom/android/launcher/folder/download/MarketServiceManager;-><init>()V

    invoke-static {v0}, Lcom/android/launcher/folder/download/MarketServiceManager;->access$setMInstance$cp(Lcom/android/launcher/folder/download/MarketServiceManager;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    :goto_1e
    invoke-static {}, Lcom/android/launcher/folder/download/MarketServiceManager;->access$getMInstance$cp()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
