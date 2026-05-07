.class public Lcom/oplus/compat/app/OplusFreezeManagerNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/oplus/compat/annotation/OplusApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/app/OplusFreezeManagerNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/oplus/compat/app/OplusFreezeManagerNative;


# instance fields
.field private manager:Lcom/oplus/app/OplusHansFreezeManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/oplus/compat/app/OplusFreezeManagerNative;->manager:Lcom/oplus/app/OplusHansFreezeManager;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/oplus/app/OplusHansFreezeManager;->getInstance()Lcom/oplus/app/OplusHansFreezeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/app/OplusFreezeManagerNative;->manager:Lcom/oplus/app/OplusHansFreezeManager;

    :cond_d
    return-void
.end method

.method public static getInstance()Lcom/oplus/compat/app/OplusFreezeManagerNative;
    .registers 2
    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    sget-object v0, Lcom/oplus/compat/app/OplusFreezeManagerNative;->sInstance:Lcom/oplus/compat/app/OplusFreezeManagerNative;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/compat/app/OplusFreezeManagerNative;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/compat/app/OplusFreezeManagerNative;->sInstance:Lcom/oplus/compat/app/OplusFreezeManagerNative;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/compat/app/OplusFreezeManagerNative;

    invoke-direct {v1}, Lcom/oplus/compat/app/OplusFreezeManagerNative;-><init>()V

    sput-object v1, Lcom/oplus/compat/app/OplusFreezeManagerNative;->sInstance:Lcom/oplus/compat/app/OplusFreezeManagerNative;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/compat/app/OplusFreezeManagerNative;->sInstance:Lcom/oplus/compat/app/OplusFreezeManagerNative;

    return-object v0
.end method


# virtual methods
.method public getTrafficBytesList(Ljava/util/ArrayList;)Landroid/util/SparseArray;
    .registers 5
    .param p1  # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/oplus/compat/app/OplusFreezeManagerNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/app/OplusFreezeManagerNative;->manager:Lcom/oplus/app/OplusHansFreezeManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0

    :cond_19
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before 11.2"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTrafficPacketList(Ljava/util/ArrayList;)Landroid/util/SparseArray;
    .registers 5
    .param p1  # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/oplus/compat/app/OplusFreezeManagerNative$ReflectInfo;->access$200()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/app/OplusFreezeManagerNative;->manager:Lcom/oplus/app/OplusHansFreezeManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0

    :cond_19
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before 11.2"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isFrozenByHans(Ljava/lang/String;I)Z
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/oplus/compat/app/OplusFreezeManagerNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/app/OplusFreezeManagerNative;->manager:Lcom/oplus/app/OplusHansFreezeManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_24
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before 11.2"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
